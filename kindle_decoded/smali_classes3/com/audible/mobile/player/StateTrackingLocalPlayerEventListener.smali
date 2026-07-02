.class public final Lcom/audible/mobile/player/StateTrackingLocalPlayerEventListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "StateTrackingLocalPlayerEventListener.java"


# instance fields
.field private final currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pendingOrCurrentPosition:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/audible/mobile/player/StateTrackingLocalPlayerEventListener;->pendingOrCurrentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    iput-object p2, p0, Lcom/audible/mobile/player/StateTrackingLocalPlayerEventListener;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 1

    .line 32
    iget-object p1, p0, Lcom/audible/mobile/player/StateTrackingLocalPlayerEventListener;->pendingOrCurrentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 33
    iget-object p1, p0, Lcom/audible/mobile/player/StateTrackingLocalPlayerEventListener;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onPlaybackPositionChange(I)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/audible/mobile/player/StateTrackingLocalPlayerEventListener;->pendingOrCurrentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 21
    iget-object v0, p0, Lcom/audible/mobile/player/StateTrackingLocalPlayerEventListener;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onReset(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/audible/mobile/player/StateTrackingLocalPlayerEventListener;->pendingOrCurrentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 27
    iget-object p1, p0, Lcom/audible/mobile/player/StateTrackingLocalPlayerEventListener;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
