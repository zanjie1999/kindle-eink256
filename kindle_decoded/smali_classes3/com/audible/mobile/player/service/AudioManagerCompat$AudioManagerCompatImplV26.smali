.class Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplV26;
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
    name = "AudioManagerCompatImplV26"
.end annotation


# static fields
.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private focusRequest:Landroid/media/AudioFocusRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 149
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 150
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplV26;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioManager must not be null"

    .line 159
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    iput-object p1, p0, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplV26;->audioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplV26;->focusRequest:Landroid/media/AudioFocusRequest;

    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplV26;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 2

    .line 167
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    sget-object v1, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplV26;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 168
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplV26;->focusRequest:Landroid/media/AudioFocusRequest;

    .line 171
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplV26;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    return p1
.end method
