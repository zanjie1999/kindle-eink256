.class Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplDefault;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"

# interfaces
.implements Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/AudioManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioManagerCompatImplDefault"
.end annotation


# instance fields
.field private final audioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioManager must not be null"

    .line 115
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplDefault;->audioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplDefault;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1

    return p1
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplDefault;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    return p1
.end method
