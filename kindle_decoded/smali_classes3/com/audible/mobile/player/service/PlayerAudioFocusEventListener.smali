.class public Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;
.super Ljava/lang/Object;
.source "PlayerAudioFocusEventListener.java"

# interfaces
.implements Lcom/audible/mobile/player/service/AudioFocusEventListener;


# instance fields
.field private final player:Lcom/audible/mobile/player/Player;

.field private final wasPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/player/Player;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->wasPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->player:Lcom/audible/mobile/player/Player;

    return-void
.end method


# virtual methods
.method public onDuckVolumeRequired()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->player:Lcom/audible/mobile/player/Player;

    const v1, 0x3dcccccd    # 0.1f

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/Player;->setVolume(F)Z

    return-void
.end method

.method public onMayResumePlayback()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->wasPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->player:Lcom/audible/mobile/player/Player;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/Player;->rewind(I)V

    .line 69
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->start()V

    :cond_0
    return-void
.end method

.method public onMustPausePlayback()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->isPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v1}, Lcom/audible/mobile/player/Player;->pause()V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->wasPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onMustStopPlayback()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->isPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->pause()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->wasPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onRestoreVolumeRequired()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;->player:Lcom/audible/mobile/player/Player;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/Player;->setVolume(F)Z

    return-void
.end method
