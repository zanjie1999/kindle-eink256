.class public Lcom/audible/android/kcp/player/manager/AudioPlayerManager$PlayerManagerEventListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "AudioPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/player/manager/AudioPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PlayerManagerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/android/kcp/player/manager/AudioPlayerManager;


# direct methods
.method protected constructor <init>(Lcom/audible/android/kcp/player/manager/AudioPlayerManager;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager$PlayerManagerEventListener;->this$0:Lcom/audible/android/kcp/player/manager/AudioPlayerManager;

    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager$PlayerManagerEventListener;->this$0:Lcom/audible/android/kcp/player/manager/AudioPlayerManager;

    invoke-static {v0}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->access$000(Lcom/audible/android/kcp/player/manager/AudioPlayerManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getMaxPositionAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 300
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager$PlayerManagerEventListener;->this$0:Lcom/audible/android/kcp/player/manager/AudioPlayerManager;

    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getPlayerState()Lcom/audible/mobile/player/State;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->access$102(Lcom/audible/android/kcp/player/manager/AudioPlayerManager;Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/State;

    return-void
.end method

.method public onMaxAvailableTimeUpdate(I)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager$PlayerManagerEventListener;->this$0:Lcom/audible/android/kcp/player/manager/AudioPlayerManager;

    invoke-static {v0}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->access$000(Lcom/audible/android/kcp/player/manager/AudioPlayerManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager$PlayerManagerEventListener;->this$0:Lcom/audible/android/kcp/player/manager/AudioPlayerManager;

    sget-object v1, Lcom/audible/mobile/player/State;->PAUSED:Lcom/audible/mobile/player/State;

    invoke-static {v0, v1}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->access$102(Lcom/audible/android/kcp/player/manager/AudioPlayerManager;Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/State;

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager$PlayerManagerEventListener;->this$0:Lcom/audible/android/kcp/player/manager/AudioPlayerManager;

    sget-object v1, Lcom/audible/mobile/player/State;->STARTED:Lcom/audible/mobile/player/State;

    invoke-static {v0, v1}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->access$102(Lcom/audible/android/kcp/player/manager/AudioPlayerManager;Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/State;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/audible/android/kcp/player/manager/AudioPlayerManager$PlayerManagerEventListener;->this$0:Lcom/audible/android/kcp/player/manager/AudioPlayerManager;

    sget-object v1, Lcom/audible/mobile/player/State;->PAUSED:Lcom/audible/mobile/player/State;

    invoke-static {v0, v1}, Lcom/audible/android/kcp/player/manager/AudioPlayerManager;->access$102(Lcom/audible/android/kcp/player/manager/AudioPlayerManager;Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/State;

    return-void
.end method
