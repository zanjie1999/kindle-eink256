.class public final Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;
.super Lcom/audible/mobile/media/button/MediaButtonPlayerEventListener;
.source "AirMediaButtonPlayerEventListener.java"


# instance fields
.field private final buttonPressedListener:Lcom/audible/mobile/media/button/ButtonPressedListener;

.field private final mediaButtonManager:Lcom/audible/mobile/media/button/MediaButtonManager;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/media/button/MediaButtonManager;Lcom/audible/mobile/media/button/ButtonPressedListener;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/audible/mobile/media/button/MediaButtonPlayerEventListener;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;->buttonPressedListener:Lcom/audible/mobile/media/button/ButtonPressedListener;

    .line 22
    iput-object p1, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;->mediaButtonManager:Lcom/audible/mobile/media/button/MediaButtonManager;

    return-void
.end method


# virtual methods
.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;->mediaButtonManager:Lcom/audible/mobile/media/button/MediaButtonManager;

    invoke-interface {v0}, Lcom/audible/mobile/media/button/MediaButtonManager;->acquireExclusiveMediaButtonStatus()V

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;->mediaButtonManager:Lcom/audible/mobile/media/button/MediaButtonManager;

    iget-object v1, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;->buttonPressedListener:Lcom/audible/mobile/media/button/ButtonPressedListener;

    invoke-interface {v0, v1}, Lcom/audible/mobile/media/button/MediaButtonManager;->registerListener(Lcom/audible/mobile/media/button/ButtonPressedListener;)V

    return-void
.end method

.method public onReset(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;->mediaButtonManager:Lcom/audible/mobile/media/button/MediaButtonManager;

    iget-object v0, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;->buttonPressedListener:Lcom/audible/mobile/media/button/ButtonPressedListener;

    invoke-interface {p1, v0}, Lcom/audible/mobile/media/button/MediaButtonManager;->unregisterListener(Lcom/audible/mobile/media/button/ButtonPressedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;->mediaButtonManager:Lcom/audible/mobile/media/button/MediaButtonManager;

    iget-object v1, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPlayerEventListener;->buttonPressedListener:Lcom/audible/mobile/media/button/ButtonPressedListener;

    invoke-interface {v0, v1}, Lcom/audible/mobile/media/button/MediaButtonManager;->unregisterListener(Lcom/audible/mobile/media/button/ButtonPressedListener;)V

    return-void
.end method
