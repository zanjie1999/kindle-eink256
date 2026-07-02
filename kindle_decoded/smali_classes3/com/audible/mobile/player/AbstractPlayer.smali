.class public abstract Lcom/audible/mobile/player/AbstractPlayer;
.super Ljava/lang/Object;
.source "AbstractPlayer.java"

# interfaces
.implements Lcom/audible/mobile/player/Player;


# instance fields
.field protected final logger:Lorg/slf4j/Logger;

.field protected final playerSettingsProvider:Lcom/audible/mobile/player/PlayerSettingsProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/audible/mobile/player/PlayerSharedPreferences;

    invoke-direct {v0, p1}, Lcom/audible/mobile/player/PlayerSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/AbstractPlayer;-><init>(Lcom/audible/mobile/player/PlayerSettingsProvider;)V

    return-void
.end method

.method protected constructor <init>(Lcom/audible/mobile/player/PlayerSettingsProvider;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "PlayerSettingsProvider must not be null"

    .line 39
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/player/PlayerSettingsProvider;

    iput-object p1, p0, Lcom/audible/mobile/player/AbstractPlayer;->playerSettingsProvider:Lcom/audible/mobile/player/PlayerSettingsProvider;

    return-void
.end method


# virtual methods
.method public clearPreferences()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized fastForward(I)V
    .locals 2

    monitor-enter p0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/AbstractPlayer;->getCurrentPosition()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/audible/mobile/player/AbstractPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/audible/mobile/player/Player;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract getCurrentPosition()I
.end method

.method protected abstract getDuration()I
.end method

.method protected getSpeed()Lcom/audible/mobile/player/NarrationSpeed;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->playerSettingsProvider:Lcom/audible/mobile/player/PlayerSettingsProvider;

    sget-object v1, Lcom/audible/mobile/player/NarrationSpeed;->NORMAL:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/PlayerSettingsProvider;->getNarrationSpeed(Lcom/audible/mobile/player/NarrationSpeed;)Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object v0

    return-object v0
.end method

.method public isPlayWhenReady()Z
    .locals 1

    .line 86
    invoke-interface {p0}, Lcom/audible/mobile/player/Player;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Invalid state error calling {} while in {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized rewind(I)V
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/AbstractPlayer;->getCurrentPosition()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 53
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/audible/mobile/player/Player;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
