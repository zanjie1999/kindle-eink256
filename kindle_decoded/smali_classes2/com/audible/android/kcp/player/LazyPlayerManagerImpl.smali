.class public Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;
.super Ljava/lang/Object;
.source "LazyPlayerManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/player/LazyPlayerManager;


# instance fields
.field protected logger:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private playerManager:Lcom/audible/mobile/player/PlayerManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method


# virtual methods
.method public isPlayWhenReady()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;->playerManager:Lcom/audible/mobile/player/PlayerManager;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "PlayerManager is null in LazyPlayerManager."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 40
    :cond_0
    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->isPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;->playerManager:Lcom/audible/mobile/player/PlayerManager;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "PlayerManager is null in LazyPlayerManager."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->pause()V

    return-void
.end method

.method public setPlayerManager(Lcom/audible/mobile/player/PlayerManager;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;->playerManager:Lcom/audible/mobile/player/PlayerManager;

    return-void
.end method

.method public start()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;->playerManager:Lcom/audible/mobile/player/PlayerManager;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/audible/android/kcp/player/LazyPlayerManagerImpl;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "PlayerManager is null in LazyPlayerManager."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 49
    :cond_0
    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->start()V

    return-void
.end method
