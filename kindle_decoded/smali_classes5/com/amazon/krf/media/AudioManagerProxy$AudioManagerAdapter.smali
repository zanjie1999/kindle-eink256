.class Lcom/amazon/krf/media/AudioManagerProxy$AudioManagerAdapter;
.super Ljava/lang/Object;
.source "AudioManagerProxy.java"

# interfaces
.implements Lcom/amazon/krf/media/IAudioManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/AudioManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioManagerAdapter"
.end annotation


# instance fields
.field private final mAdaptedAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 158
    iput-object p1, p0, Lcom/amazon/krf/media/AudioManagerProxy$AudioManagerAdapter;->mAdaptedAudioManager:Landroid/media/AudioManager;

    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/krf/media/AudioManagerProxy$AudioManagerAdapter;->mAdaptedAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1

    return p1
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/krf/media/AudioManagerProxy$AudioManagerAdapter;->mAdaptedAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    return p1
.end method
