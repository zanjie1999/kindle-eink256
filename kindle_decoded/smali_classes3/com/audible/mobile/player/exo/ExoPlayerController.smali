.class public final Lcom/audible/mobile/player/exo/ExoPlayerController;
.super Lcom/audible/mobile/player/AbstractPlayer;
.source "ExoPlayerController.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;


# instance fields
.field private final audioCapabilitiesReceiver:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

.field private final callbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private dataSource:Lcom/audible/mobile/player/AudioDataSource;

.field private final defaultPlayerVolumeControls:Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

.field private final mainPlayerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

.field private final onPlayerEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/mobile/player/LocalPlayerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;

.field private final wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;)V
    .locals 1

    .line 72
    new-instance v0, Lcom/audible/mobile/player/PlayerSharedPreferences;

    invoke-direct {v0, p1}, Lcom/audible/mobile/player/PlayerSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/mobile/player/exo/ExoPlayerController;-><init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;Lcom/audible/mobile/player/PlayerSettingsProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;Lcom/audible/mobile/player/PlayerSettingsProvider;)V
    .locals 12

    move-object v0, p0

    move-object v9, p1

    .line 88
    const-class v10, Lcom/audible/mobile/player/exo/ExoPlayerController;

    move-object/from16 v6, p4

    invoke-direct {p0, v6}, Lcom/audible/mobile/player/AbstractPlayer;-><init>(Lcom/audible/mobile/player/PlayerSettingsProvider;)V

    .line 53
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->onPlayerEventListeners:Ljava/util/Set;

    const-string v1, "Context must not be null"

    .line 89
    invoke-static {p1, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "MetricManager must not be null"

    move-object v3, p2

    .line 90
    invoke-static {p2, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "MediaSourceProvider must not be null"

    move-object v8, p3

    .line 91
    invoke-static {p3, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "exoplayer-callback"

    .line 93
    invoke-static {v1}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->callbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 94
    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;

    iget-object v2, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->onPlayerEventListeners:Ljava/util/Set;

    iget-object v4, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->callbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2, v4}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;-><init>(Ljava/util/Set;Ljava/util/concurrent/Executor;)V

    iput-object v1, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->mainPlayerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    .line 95
    new-instance v11, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    new-instance v4, Lcom/audible/mobile/player/service/AudioFocus;

    new-instance v1, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;

    invoke-direct {v1, p0}, Lcom/audible/mobile/player/service/PlayerAudioFocusEventListener;-><init>(Lcom/audible/mobile/player/Player;)V

    invoke-direct {v4, p1, v1}, Lcom/audible/mobile/player/service/AudioFocus;-><init>(Landroid/content/Context;Lcom/audible/mobile/player/service/AudioFocusEventListener;)V

    iget-object v5, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->mainPlayerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    new-instance v7, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    invoke-direct {v7, v1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;-><init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/service/AudioFocus;Lcom/audible/mobile/player/LocalPlayerEventListener;Lcom/audible/mobile/player/PlayerSettingsProvider;Lcom/google/android/exoplayer2/Renderer;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;)V

    iput-object v11, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    .line 97
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-direct {v1, p1, p0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;)V

    iput-object v1, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    .line 98
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->register()Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 99
    new-instance v1, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

    iget-object v2, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-direct {v1, v2}, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;-><init>(Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;)V

    iput-object v1, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->defaultPlayerVolumeControls:Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 102
    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const-string v1, "power"

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 104
    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/mobile/player/exo/ExoPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/player/exo/ExoPlayerController;)Lcom/audible/mobile/player/exo/StateAwareExoPlayer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    return-object p0
.end method

.method private acquireLocks()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 463
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;
    .locals 3

    .line 477
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/audible/mobile/player/exo/ExoPlayerController;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object p1, v2

    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    if-nez p2, :cond_1

    move-object p2, v2

    .line 478
    :cond_1
    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private releaseLocks()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized decrementVolume()V
    .locals 1

    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->defaultPlayerVolumeControls:Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

    invoke-virtual {v0}, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->decrementVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public declared-synchronized incrementVolume()V
    .locals 1

    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->defaultPlayerVolumeControls:Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

    invoke-virtual {v0}, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->incrementVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlaying()Z
    .locals 1

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAudioCapabilitiesChanged(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
    .locals 5

    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "AudioCapabilities changed to {}, resetting player..."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    .line 417
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getCurrentPosition()I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v1}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->reset()V

    const/4 v1, 0x2

    .line 421
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    iget-object v1, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p1, v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    .line 423
    iget-object p1, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Device AudioCapabilities no longer support ENCODING_PCM_16BIT, calling onError"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNSUPPORTED_MEDIA:Lcom/audible/mobile/player/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device AudioCapabilities no longer support ENCODING_PCM_16BIT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Device AudioCapabilities no longer support ENCODING_PCM_16BIT"

    invoke-direct {p0, p1, v3}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/ExoPlayerController;->releaseLocks()V

    .line 143
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->unregister()V

    .line 145
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->callbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 5

    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    move-result-object v0

    .line 289
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/ExoPlayerController;->releaseLocks()V

    .line 291
    sget-object v1, Lcom/audible/mobile/player/exo/ExoPlayerController$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PauseResult:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned unknown PauseResult"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    const-string v3, "StateAwareExoPlayer - Pause returned Unknown"

    const-string v4, "StateAwareExoPlayer - Pause returned Unknown"

    invoke-direct {p0, v3, v4}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string v0, "pause"

    .line 304
    iget-object v1, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/audible/mobile/player/AbstractPlayer;->logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V

    .line 305
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    const-string v3, "StateAwareExoPlayer - Pause returned INVALID_STATE"

    const-string v4, "StateAwareExoPlayer - Pause returned INVALID_STATE"

    invoke-direct {p0, v3, v4}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned NO_ACTION, NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    const-string v3, "StateAwareExoPlayer - pause returned NO_ACTION"

    const-string v4, "StateAwareExoPlayer - pause returned NO_ACTION"

    invoke-direct {p0, v3, v4}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned FAILURE"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/Error;->CALL_FAILED:Lcom/audible/mobile/player/Error;

    const-string v2, "StateAwareExoPlayer pause failed"

    const-string v3, "StateAwareExoPlayer pause failed"

    invoke-direct {p0, v2, v3}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(I)V
    .locals 1

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    move-result-object p1

    .line 224
    sget-object v0, Lcom/audible/mobile/player/exo/ExoPlayerController$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PrepareResult:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "prepare"

    .line 228
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/audible/mobile/player/AbstractPlayer;->logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "LocalPlayerEventListener must not be null"

    .line 151
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->onPlayerEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->callbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/audible/mobile/player/exo/ExoPlayerController$1;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/exo/ExoPlayerController$1;-><init>(Lcom/audible/mobile/player/exo/ExoPlayerController;Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 377
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/ExoPlayerController;->releaseLocks()V

    .line 378
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekTo(I)V
    .locals 5

    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->seekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    move-result-object v0

    .line 321
    sget-object v1, Lcom/audible/mobile/player/exo/ExoPlayerController$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SeekResult:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned unknown SeekResult"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateAwareExoPlayer - seekTo returned unknown for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "StateAwareExoPlayer - seekTo returned unknown"

    invoke-direct {p0, p1, v3}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string v0, "seekTo"

    .line 333
    iget-object v1, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/audible/mobile/player/AbstractPlayer;->logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V

    .line 334
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateAwareExoPlayer - seekTo returned INVALID_STATE for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "StateAwareExoPlayer - seekTo returned INVALID_STAT"

    invoke-direct {p0, p1, v3}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned INDEX_OUT_OF_BOUNDS"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/Error;->SEEK_OUT_OF_BOUNDS:Lcom/audible/mobile/player/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateAwareExoPlayer seekTo failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "StateAwareExoPlayer - seekTo failed due to Index out of bound"

    invoke-direct {p0, p1, v2}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned FAILURE"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/Error;->CALL_FAILED:Lcom/audible/mobile/player/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateAwareExoPlayer seekTo failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "StateAwareExoPlayer seekTo failed"

    invoke-direct {p0, p1, v2}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "AudioDataSource must not be null"

    .line 171
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    move-result-object v0

    .line 174
    sget-object v1, Lcom/audible/mobile/player/exo/ExoPlayerController$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SetDataSourceResult:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eq v0, v6, :cond_0

    .line 210
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v7, "StateAwareExoPlayer returned unknown SetDataSourceResult for Asin {} URL {} content type {} audioSource Type {} ACR {}"

    new-array v6, v6, [Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAudioContentType()Lcom/audible/mobile/player/AudioContentType;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    aput-object v1, v6, v4

    .line 210
    invoke-interface {v0, v7, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateAwareExoPlayer- set datasource Unknown state Asin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "Uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "ContentType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAudioContentType()Lcom/audible/mobile/player/AudioContentType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "DataSourceType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "ACR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "StateAwareExoPlayer- set datasource unknown state"

    .line 212
    invoke-direct {p0, p1, v3}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "setDataSource"

    .line 201
    iget-object v6, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v6}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/audible/mobile/player/AbstractPlayer;->logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V

    .line 202
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v6, "StateAwareExoPlayer returned invalide state for Asin {} URL {} content type {} audioSource Type {} ACR {}"

    new-array v4, v4, [Ljava/lang/Object;

    .line 203
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAudioContentType()Lcom/audible/mobile/player/AudioContentType;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v1

    aput-object v1, v4, v3

    .line 202
    invoke-interface {v0, v6, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateAwareExoPlayer- set datasource invalid state Asin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "Uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "ContentType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAudioContentType()Lcom/audible/mobile/player/AudioContentType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "DataSourceType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "ACR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "StateAwareExoPlayer- set datasource invalid state"

    .line 204
    invoke-direct {p0, p1, v3}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer-Unable to set the audio datasource"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/Error;->CALL_FAILED:Lcom/audible/mobile/player/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateAwareExoPlayer-Unable to set the audio datasourceAsin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "Uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "ContentType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAudioContentType()Lcom/audible/mobile/player/AudioContentType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "DataSourceType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "ACR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "StateAwareExoPlayer-Unable to set the audio datasource"

    .line 194
    invoke-direct {p0, p1, v2}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer Datasource not found"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/Error;->MEDIA_NOT_FOUND:Lcom/audible/mobile/player/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateAwareExoPlayer Datasource not foundAsin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "Uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "ContentType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAudioContentType()Lcom/audible/mobile/player/AudioContentType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "DataSourceType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "ACR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "StateAwareExoPlayer setAudioDataSource returned FILE_NOT_FOUND"

    .line 187
    invoke-direct {p0, p1, v2}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer - unsupported the contentt {}"

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAudioContentType()Lcom/audible/mobile/player/AudioContentType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/Error;->UNSUPPORTED_MEDIA:Lcom/audible/mobile/player/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateAwareExoPlayer - unsupported the contentAsin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "Uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "ContentType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAudioContentType()Lcom/audible/mobile/player/AudioContentType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "DataSourceType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "ACR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "StateAwareExoPlayer - unsupported the content "

    .line 180
    invoke-direct {p0, p1, v2}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 176
    :cond_4
    iput-object p1, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->dataSource:Lcom/audible/mobile/player/AudioDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 1

    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->playerSettingsProvider:Lcom/audible/mobile/player/PlayerSettingsProvider;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerSettingsProvider;->setNarrationSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V

    .line 385
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVolume(F)Z
    .locals 1

    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->defaultPlayerVolumeControls:Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->setVolume(F)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 5

    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    move-result-object v0

    .line 256
    sget-object v1, Lcom/audible/mobile/player/exo/ExoPlayerController$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$StartResult:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned unknown StartResult"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    const-string v3, "StateAwareExoPlayer - Start returned Unknown"

    const-string v4, "StateAwareExoPlayer - Start returned Unknown"

    invoke-direct {p0, v3, v4}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned COULD_NOT_READ_FILE"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/Error;->COULD_NOT_READ_MEDIA:Lcom/audible/mobile/player/Error;

    const-string v2, "StateAwareExoPlayer - Start COULD_NOT_READ_FILE"

    const-string v3, "StateAwareExoPlayer - Start COULD_NOT_READ_FILE"

    invoke-direct {p0, v2, v3}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const-string v0, "start"

    .line 269
    iget-object v1, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/audible/mobile/player/AbstractPlayer;->logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V

    .line 270
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer invalid"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    const-string v3, "StateAwareExoPlayer - Start returned INVALID_STATE"

    const-string v4, "StateAwareExoPlayer - Start returned INVALID_STATE"

    invoke-direct {p0, v3, v4}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned NO_ACTION, NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    const-string v3, "StateAwareExoPlayer - Start returned NO_ACTION"

    const-string v4, "StateAwareExoPlayer - Start returned NO_ACTION"

    invoke-direct {p0, v3, v4}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned FAILURE"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/Error;->CALL_FAILED:Lcom/audible/mobile/player/Error;

    const-string v2, "StateAwareExoPlayer start failed"

    const-string v3, "StateAwareExoPlayer start failed"

    invoke-direct {p0, v2, v3}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 258
    :cond_4
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/ExoPlayerController;->acquireLocks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 5

    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->stop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;

    move-result-object v0

    .line 348
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/ExoPlayerController;->releaseLocks()V

    .line 350
    sget-object v1, Lcom/audible/mobile/player/exo/ExoPlayerController$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$StopResult:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned unknown StopResult"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    const-string v3, "StateAwareExoPlayer - stop returned Unknown"

    const-string v4, "StateAwareExoPlayer - stop returned Unknown"

    invoke-direct {p0, v3, v4}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string v0, "stop"

    .line 364
    iget-object v1, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    invoke-virtual {v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/audible/mobile/player/AbstractPlayer;->logInvalidState(Ljava/lang/String;Lcom/audible/mobile/player/State;)V

    .line 365
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    const-string v3, "StateAwareExoPlayer - stop returned INVALID_STATE"

    const-string v4, "StateAwareExoPlayer - stop returned INVALID_STATE"

    invoke-direct {p0, v3, v4}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned NO_ACTION, NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/metric/Names;->PlayerUnSupportedOperation:Lcom/audible/mobile/player/metric/Names;

    sget-object v2, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    const-string v3, "StateAwareExoPlayer - stop returned NO_ACTION"

    const-string v4, "StateAwareExoPlayer - stop returned NO_ACTION"

    invoke-direct {p0, v3, v4}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/audible/mobile/player/AbstractPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "StateAwareExoPlayer returned FAILURE"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->player:Lcom/audible/mobile/player/exo/StateAwareExoPlayer;

    sget-object v1, Lcom/audible/mobile/player/Error;->CALL_FAILED:Lcom/audible/mobile/player/Error;

    const-string v2, "StateAwareExoPlayer stop failed"

    const-string v3, "StateAwareExoPlayer stop failed"

    invoke-direct {p0, v2, v3}, Lcom/audible/mobile/player/exo/ExoPlayerController;->createException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerController;->onPlayerEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized volumeBoost(Z)V
    .locals 0

    monitor-enter p0

    .line 392
    monitor-exit p0

    return-void
.end method
