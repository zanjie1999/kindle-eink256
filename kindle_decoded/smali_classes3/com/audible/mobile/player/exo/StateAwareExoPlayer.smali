.class Lcom/audible/mobile/player/exo/StateAwareExoPlayer;
.super Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;
.source "StateAwareExoPlayer.java"

# interfaces
.implements Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.implements Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/player/exo/StateAwareExoPlayer$PositionUpdateRunnable;,
        Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;,
        Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;
    }
.end annotation


# static fields
.field private static final BUFFERING_UPDATE_INTERVAL_MS:J = 0x64L

.field private static final BUFFER_SEGMENT_SIZE:I = 0x8000

.field private static final POSITION_UPDATE_INTERVAL_MS:J = 0x32L


# instance fields
.field private final authenticationExecutor:Ljava/util/concurrent/ExecutorService;

.field private authenticationFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final buffering:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile currentSpeed:Lcom/audible/mobile/player/NarrationSpeed;

.field private currentlyExecutingBufferingUpdate:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private currentlyExecutingMaxAvailableTimeUpdate:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private currentlyExecutingPositionUpdate:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile dataSource:Lcom/audible/mobile/player/AudioDataSource;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final exoMetricRecorder:Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;

.field private final exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private isFullDurationAvailable:Z

.field private final mediaSourceProvider:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;

.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

.field private final noNetworkState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

.field private final prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final renderer:Lcom/google/android/exoplayer2/Renderer;

.field private final seeking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/service/AudioFocus;Lcom/audible/mobile/player/LocalPlayerEventListener;Lcom/audible/mobile/player/PlayerSettingsProvider;Lcom/google/android/exoplayer2/Renderer;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;)V
    .locals 12

    .line 126
    invoke-interface/range {p7 .. p7}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;->getNetworkBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v0

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->buildExoPlayer(Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v3

    const-string v0, "exoplayer-position-executor"

    .line 127
    invoke-static {v0}, Lcom/audible/mobile/util/Executors;->newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    const-string v0, "exoplayer-authentication-executor"

    .line 128
    invoke-static {v0}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p7

    .line 126
    invoke-direct/range {v1 .. v11}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/service/AudioFocus;Lcom/audible/mobile/player/LocalPlayerEventListener;Ljava/util/concurrent/ScheduledExecutorService;Lcom/audible/mobile/player/PlayerSettingsProvider;Lcom/google/android/exoplayer2/Renderer;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/service/AudioFocus;Lcom/audible/mobile/player/LocalPlayerEventListener;Ljava/util/concurrent/ScheduledExecutorService;Lcom/audible/mobile/player/PlayerSettingsProvider;Lcom/google/android/exoplayer2/Renderer;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 151
    invoke-direct {p0, p4}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;-><init>(Lcom/audible/mobile/player/service/AudioFocus;)V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->buffering:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->seeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->noNetworkState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    sget-object v0, Lcom/audible/mobile/player/NarrationSpeed;->NORMAL:Lcom/audible/mobile/player/NarrationSpeed;

    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 97
    iput v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->volume:F

    const-string v0, "Context must not be null"

    .line 152
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ExoPlayer must not be null"

    .line 153
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "MetricManager must not be null"

    .line 154
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "AudioFocus must not be null"

    .line 155
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p4, "LocalPlayerEventListener must not be null"

    .line 156
    invoke-static {p5, p4}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p4, "executor must not be null"

    .line 157
    invoke-static {p6, p4}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p4, "PlayerSettingsProvider must not be null"

    .line 158
    invoke-static {p7, p4}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p4, "Renderer must not be null"

    .line 159
    invoke-static {p8, p4}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p4, "MediaSourceProvider must not be null"

    .line 160
    invoke-static {p9, p4}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iput-object p2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 163
    invoke-interface {p2, p0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 164
    new-instance p2, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;

    invoke-direct {p2, p1, p3}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;-><init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;)V

    iput-object p2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoMetricRecorder:Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;

    .line 165
    iput-object p5, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    .line 166
    iput-object p6, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 167
    iput-object p8, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->renderer:Lcom/google/android/exoplayer2/Renderer;

    .line 168
    iput-object p9, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->mediaSourceProvider:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;

    .line 169
    iput-object p3, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    const-string p1, "authenticationExecutor can not be null"

    .line 170
    invoke-static {p10, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p10, Ljava/util/concurrent/ExecutorService;

    iput-object p10, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->authenticationExecutor:Ljava/util/concurrent/ExecutorService;

    .line 172
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->setAudioAttributes()V

    .line 175
    sget-object p1, Lcom/audible/mobile/player/NarrationSpeed;->NORMAL:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-interface {p7, p1}, Lcom/audible/mobile/player/PlayerSettingsProvider;->getNarrationSpeed(Lcom/audible/mobile/player/NarrationSpeed;)Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object p1

    .line 176
    iget-object p2, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string p3, "Restoring saved narration speed {}"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doSetSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lorg/slf4j/Logger;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lorg/slf4j/Logger;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentlyExecutingMaxAvailableTimeUpdate:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->isFullDurationAvailable:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)I
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getMaxAvailableTime()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->stopBufferingUpdates()V

    return-void
.end method

.method static synthetic access$200(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lcom/audible/mobile/player/AudioDataSource;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    return-object p0
.end method

.method static synthetic access$400(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)Lcom/audible/mobile/player/LocalPlayerEventListener;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doStartExoPlayer()V

    return-void
.end method

.method static synthetic access$900(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;)I
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getMaxAvailableTimeFromProvider()I

    move-result p0

    return p0
.end method

.method private static buildExoPlayer(Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 3

    .line 828
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const v2, 0x8000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    .line 829
    new-instance v2, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)V

    if-nez p1, :cond_0

    .line 830
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    move-object p1, v0

    :goto_0
    new-array v0, v1, [Lcom/google/android/exoplayer2/Renderer;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 831
    invoke-static {v0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newInstance([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p0

    return-object p0
.end method

.method private cancelAuthenticationTask()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->authenticationFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Re-authentication cancelled"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->authenticationFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private createPlayerException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Lcom/audible/mobile/player/exception/PlayerException;
    .locals 10

    .line 992
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->mediaSourceProvider:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;->getNetworkBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    move-wide v7, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->mediaSourceProvider:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;

    invoke-interface {v0}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;->getNetworkBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    goto :goto_1

    .line 995
    :goto_2
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v5, v1

    move-object v6, v5

    goto :goto_3

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v0}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 1000
    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v1

    move-object v5, v0

    move-object v6, v1

    .line 1003
    :goto_3
    new-instance v0, Lcom/audible/mobile/player/exception/PlayerException;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/audible/mobile/player/exception/PlayerException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/player/AudioDataSourceType;JLjava/lang/Exception;)V

    return-object v0
.end method

.method private doNotifyError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getSanitizedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-static {p2}, Lcom/audible/mobile/util/ErrorUtils;->getExceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v2, "Notifying player event listeners of Exception {} at {}"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 505
    invoke-direct {p0, p1, v0, p2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->createPlayerException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Lcom/audible/mobile/player/exception/PlayerException;

    move-result-object p1

    .line 506
    iget-object p2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p2, p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onError(Lcom/audible/mobile/player/exception/PlayerException;)V

    return-void
.end method

.method private doReAuthenticateAsync(Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Transferring to buffering state as re-authentication needed for {}."

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    sget-object v0, Lcom/audible/mobile/player/State;->BUFFERING:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 377
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->cancelAuthenticationTask()V

    .line 378
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->authenticationExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;-><init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->authenticationFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method private doStartExoPlayer()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doPrepareAsync(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 416
    :goto_0
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->startPositionUpdates()V

    return-void
.end method

.method private getMaxAvailableTime()I
    .locals 1

    .line 915
    iget-boolean v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->isFullDurationAvailable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getMaxAvailableTimeFromProvider()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getMaxAvailableTimeFromProvider()I
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->mediaSourceProvider:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;

    invoke-interface {v0}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;->getMaxAvailableTimeProvider()Lcom/audible/mobile/util/Optional;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Lcom/audible/mobile/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    invoke-virtual {v0}, Lcom/audible/mobile/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/exo/sources/MaxAvailableTimeProvider;

    invoke-interface {v0}, Lcom/audible/mobile/player/exo/sources/MaxAvailableTimeProvider;->getMaxAvailableTimeMs()I

    move-result v0

    return v0

    .line 903
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method private maybeStartMaxAvailableTimeUpdate()V
    .locals 8

    .line 920
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getMaxAvailableTimeFromProvider()I

    move-result v0

    int-to-long v0, v0

    .line 921
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getDuration()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->isFullDurationAvailable:Z

    .line 923
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentlyExecutingMaxAvailableTimeUpdate:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 924
    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 927
    :cond_1
    iget-boolean v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->isFullDurationAvailable:Z

    if-nez v0, :cond_2

    .line 928
    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$MaxAvailableTimeUpdateRunnable;-><init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 929
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentlyExecutingMaxAvailableTimeUpdate:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method private setAudioAttributes()V
    .locals 5

    .line 844
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 845
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    .line 846
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    .line 847
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    .line 849
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    iget-object v3, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->renderer:Lcom/google/android/exoplayer2/Renderer;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 850
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    new-array v1, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void
.end method

.method private startBufferingUpdates()V
    .locals 8

    .line 855
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentlyExecutingBufferingUpdate:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$BufferingUpdateRunnable;-><init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x64

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentlyExecutingBufferingUpdate:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private startPositionUpdates()V
    .locals 8

    .line 871
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentlyExecutingPositionUpdate:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$PositionUpdateRunnable;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$PositionUpdateRunnable;-><init>(Lcom/audible/mobile/player/exo/StateAwareExoPlayer;Lcom/audible/mobile/player/exo/StateAwareExoPlayer$1;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x32

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentlyExecutingPositionUpdate:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private stopBufferingAndPositionUpdates()V
    .locals 0

    .line 887
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->stopBufferingUpdates()V

    .line 888
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->stopPositionUpdates()V

    return-void
.end method

.method private stopBufferingUpdates()V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentlyExecutingBufferingUpdate:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 864
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 865
    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentlyExecutingBufferingUpdate:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private stopPositionUpdates()V
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentlyExecutingPositionUpdate:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 880
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 881
    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentlyExecutingPositionUpdate:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public authenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->authenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object p1

    return-object p1
.end method

.method protected doAuthenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 0

    .line 336
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1
.end method

.method protected doGetCurrentPosition()I
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method protected doGetDuration()I
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method protected doGetVolume()F
    .locals 1

    .line 316
    iget v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->volume:F

    return v0
.end method

.method protected doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V
    .locals 2

    .line 492
    invoke-interface {p1}, Lcom/audible/mobile/player/Error;->name()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Null exception"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "doNotifyError received null exception"

    invoke-direct {p2, v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method protected doPauseInternal()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 423
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->stopPositionUpdates()V

    .line 424
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->cancelAuthenticationTask()V

    .line 425
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    return-object v0
.end method

.method protected doPrepareAsync(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 323
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->mediaSourceProvider:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;

    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-interface {p1, v0, p0}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;->prepare(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider$Callback;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 325
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->setVolume(F)Z

    .line 326
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->SUCCESS_ASYNC:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    return-object p1
.end method

.method protected doSeekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
    .locals 3

    .line 431
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getMaxAvailableTime()I

    move-result v0

    if-ltz p1, :cond_2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getCurrentPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onSeekComplete()V

    .line 440
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onPlaybackPositionChange(I)V

    .line 441
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    return-object p1

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->seeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 445
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 446
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onPlaybackPositionChange(I)V

    .line 447
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    return-object p1

    .line 433
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "Request to seek is outside of acceptable range.  Acceptable range is [0, {}].  Value was {}"

    invoke-interface {v1, v2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 434
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    return-object p1
.end method

.method protected doSetDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->mediaSourceProvider:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;

    invoke-interface {v0}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;->getAudioDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 343
    iput-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    .line 348
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoMetricRecorder:Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->setAsin(Lcom/audible/mobile/domain/Asin;)V

    .line 349
    sget-object p1, Lcom/audible/mobile/player/State;->PREPARING:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 350
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1

    .line 345
    :cond_0
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->UNSUPPORTED_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1
.end method

.method protected doSetSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Setting speed to {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {p1}, Lcom/audible/mobile/player/NarrationSpeed;->asFloat()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 486
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method protected doSetVolume(F)Z
    .locals 6

    .line 468
    iget v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->volume:F

    .line 469
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    iget-object v2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->renderer:Lcom/google/android/exoplayer2/Renderer;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 470
    iget-object v2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/ExoPlayer;->blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 471
    iput p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->volume:F

    .line 472
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_0

    .line 473
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->volume:F

    invoke-virtual {p1, v0, v1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onVolumeChanged(FF)V

    :cond_0
    return v3
.end method

.method protected doStartInternal()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    .locals 5

    .line 358
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->mediaSourceProvider:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;

    invoke-interface {v0}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;->getAuthenticationProvider()Lcom/audible/mobile/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->mediaSourceProvider:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;

    invoke-interface {v0}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;->getAuthenticationProvider()Lcom/audible/mobile/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;

    .line 363
    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v2}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v2

    .line 365
    iget-object v3, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v4, "Authentication needed to start playback."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, v0, v1, v2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doReAuthenticateAsync(Lcom/audible/mobile/player/exo/sources/AuthenticationProvider;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    .line 367
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->NO_ACTION:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    return-object v0

    .line 369
    :cond_1
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doStartExoPlayer()V

    .line 370
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    return-object v0
.end method

.method protected doStopInternal()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 454
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 455
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->stopBufferingAndPositionUpdates()V

    .line 456
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->cancelAuthenticationTask()V

    .line 457
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 458
    sget-object v0, Lcom/audible/mobile/player/State;->STOPPED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 459
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 460
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getDuration()I

    move-result v0

    return v0
.end method

.method public getPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;
    .locals 9

    .line 580
    new-instance v8, Lcom/audible/mobile/player/PlayerStatusSnapshot;

    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v2

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getDuration()I

    move-result v3

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getCurrentPosition()I

    move-result v4

    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getMaxAvailableTime()I

    move-result v5

    iget-object v6, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getVolume()F

    move-result v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/audible/mobile/player/PlayerStatusSnapshot;-><init>(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/State;IIILcom/audible/mobile/player/NarrationSpeed;F)V

    return-object v8
.end method

.method getSanitizedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "(?i)https?:\\/\\/[^\\s]*"

    const-string v1, "URL"

    .line 523
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getState()Lcom/audible/mobile/player/State;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getVolume()F

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected makeStateTransition(Lcom/audible/mobile/player/State;)V
    .locals 4

    .line 538
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v2}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Transitioning from {} to {} state [{}]"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    invoke-super {p0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 542
    sget-object v0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer$2;->$SwitchMap$com$audible$mobile$player$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 565
    :pswitch_0
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V

    goto :goto_1

    .line 562
    :pswitch_1
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onStop()V

    goto :goto_1

    .line 559
    :pswitch_2
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onPause()V

    goto :goto_1

    .line 556
    :pswitch_3
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onPlay()V

    goto :goto_1

    .line 553
    :pswitch_4
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onBuffering()V

    goto :goto_1

    .line 550
    :pswitch_5
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    goto :goto_1

    .line 547
    :pswitch_6
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onReady(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    goto :goto_1

    .line 544
    :pswitch_7
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onReset(Lcom/audible/mobile/player/AudioDataSource;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onAudioFocusFailedToAcquire()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoMetricRecorder:Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->recordFailureToAcquireAudioFocus()V

    return-void
.end method

.method public onAudioSampleLoadingError(Lcom/audible/mobile/player/Error;Ljava/io/IOException;)V
    .locals 1

    .line 605
    sget-object v0, Lcom/audible/mobile/player/Error;->NO_NETWORK:Lcom/audible/mobile/player/Error;

    if-ne p1, v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object v0, Lcom/audible/mobile/player/State;->BUFFERING:Lcom/audible/mobile/player/State;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->noNetworkState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 608
    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->doPause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    .line 609
    sget-object p1, Lcom/audible/mobile/player/Error;->NO_NETWORK:Lcom/audible/mobile/player/Error;

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 611
    :cond_0
    sget-object v0, Lcom/audible/mobile/player/Error;->MEDIA_NOT_FOUND:Lcom/audible/mobile/player/Error;

    if-ne p1, v0, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->doPause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    .line 613
    sget-object p1, Lcom/audible/mobile/player/Error;->MEDIA_NOT_FOUND:Lcom/audible/mobile/player/Error;

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    goto :goto_0

    .line 614
    :cond_1
    sget-object v0, Lcom/audible/mobile/player/Error;->IO_ERROR:Lcom/audible/mobile/player/Error;

    if-ne p1, v0, :cond_2

    .line 615
    iget-object p1, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "Error occurred while loading"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 616
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 617
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->stopBufferingAndPositionUpdates()V

    .line 618
    sget-object p1, Lcom/audible/mobile/player/Error;->IO_ERROR:Lcom/audible/mobile/player/Error;

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    .line 619
    sget-object p1, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    goto :goto_0

    .line 621
    :cond_2
    iget-object p2, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "Sample load error {} occurred."

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAudioSampleLoadingPause()V
    .locals 2

    .line 636
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    if-eq v0, v1, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->doPause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    .line 638
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->stopBufferingAndPositionUpdates()V

    .line 639
    sget-object v0, Lcom/audible/mobile/player/Error;->IO_ERROR:Lcom/audible/mobile/player/Error;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    .line 640
    sget-object v0, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    :cond_0
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    sget-object v0, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    invoke-super {p0, v0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 189
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {v0}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 191
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 192
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 3

    .line 794
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "MediaSource loading state changed to {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object v0, Lcom/audible/mobile/player/State;->BUFFERING:Lcom/audible/mobile/player/State;

    if-ne p1, v0, :cond_0

    .line 796
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->onPlayerStateChanged(ZI)V

    :cond_0
    return-void
.end method

.method public onMediaSourceError(Ljava/lang/Exception;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Error occurred creating MediaSource"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    sget-object v0, Lcom/audible/mobile/player/Error;->CREATING_RENDERER_FAILED:Lcom/audible/mobile/player/Error;

    invoke-virtual {p0, v0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    .line 598
    sget-object p1, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    :cond_0
    return-void
.end method

.method public onMediaSourceLocationChanged(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 7

    .line 647
    iget-object p1, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "Data source path changed, resyncing..."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 648
    new-instance p1, Lcom/audible/mobile/player/AudioDataSource;

    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v0}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v0}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v3

    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    .line 649
    invoke-virtual {v0}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v5

    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v0}, Lcom/audible/mobile/player/AudioDataSource;->getAudioContentType()Lcom/audible/mobile/player/AudioContentType;

    move-result-object v6

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/player/AudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;)V

    iput-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    .line 651
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getPlayerStatusSnapshot()Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    return-void
.end method

.method public onMediaSourcePrepared(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoMetricRecorder:Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;

    invoke-virtual {v0}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->startPreparePlayerTimer()V

    .line 588
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    :cond_0
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 3

    .line 809
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    iget v1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "Playback speed updated to {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 811
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    .line 812
    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-static {p1}, Lcom/audible/mobile/player/NarrationSpeed;->from(F)Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    .line 813
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    iget-object v1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->currentSpeed:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {p1, v0, v1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 4

    const-string v0, "Internal ExoPlayer exception occurred"

    if-nez p1, :cond_0

    .line 745
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "ExoPlaybackException is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v3, "Unknown ExoPlayer error"

    invoke-direct {v1, v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 746
    iget-object v2, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 747
    sget-object p1, Lcom/audible/mobile/player/Error;->INTERNAL_PLAYER:Lcom/audible/mobile/player/Error;

    invoke-virtual {p0, p1, v1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    .line 748
    sget-object p1, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    return-void

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v1, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 756
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-nez v0, :cond_2

    .line 757
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object p1

    .line 758
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/audible/license/exceptions/VoucherLoadException;

    if-eqz v0, :cond_1

    .line 759
    sget-object v0, Lcom/audible/mobile/player/Error;->LICENSE_FAILED:Lcom/audible/mobile/player/Error;

    invoke-interface {v0}, Lcom/audible/mobile/player/Error;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 761
    :cond_1
    sget-object v0, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->SOURCE:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 764
    sget-object v0, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->RENDERER:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 767
    sget-object v0, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->UNEXPECTED:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_0

    .line 770
    :cond_4
    sget-object v0, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->OTHER:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 774
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->doNotifyError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 776
    sget-object p1, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 4

    .line 657
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ExoPlayer state changing to {}, with playWhenReady {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_7

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 724
    iget-object p1, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "ExoPlayer state changed to unrecognized state {}"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 717
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object p2, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    if-eq p1, p2, :cond_a

    .line 718
    invoke-virtual {p0, p2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 719
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 720
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->stopBufferingAndPositionUpdates()V

    goto/16 :goto_1

    .line 687
    :cond_1
    iget-object p2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 688
    iget-object p2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 689
    sget-object p2, Lcom/audible/mobile/player/State;->PREPARED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p2}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 690
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->maybeStartMaxAvailableTimeUpdate()V

    .line 693
    :cond_2
    iget-object p2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->buffering:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 694
    iget-object p2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoMetricRecorder:Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;

    invoke-virtual {p2}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->endBufferingTimer()V

    .line 697
    :cond_3
    iget-object p2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->noNetworkState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 701
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p2

    sget-object v0, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->seeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_6

    :cond_4
    if-eqz p1, :cond_5

    .line 703
    sget-object p1, Lcom/audible/mobile/player/State;->STARTED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    goto :goto_0

    .line 704
    :cond_5
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object p2, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    if-eq p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object p2, Lcom/audible/mobile/player/State;->STOPPED:Lcom/audible/mobile/player/State;

    if-eq p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object p2, Lcom/audible/mobile/player/State;->PREPARED:Lcom/audible/mobile/player/State;

    if-eq p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object p2, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    if-eq p1, p2, :cond_6

    .line 708
    sget-object p1, Lcom/audible/mobile/player/State;->PAUSED:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 712
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->seeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 713
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->playerListener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onSeekComplete()V

    goto :goto_1

    .line 669
    :cond_7
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 670
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoMetricRecorder:Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->endPreparePlayerTimer()V

    .line 671
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object p2, Lcom/audible/mobile/player/State;->STOPPED:Lcom/audible/mobile/player/State;

    if-ne p1, p2, :cond_8

    .line 674
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 678
    :cond_8
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->buffering:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 679
    iget-object p1, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoMetricRecorder:Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;

    invoke-virtual {p1}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->startBufferingTimer()V

    .line 681
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object p2, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    if-eq p1, p2, :cond_a

    .line 682
    sget-object p1, Lcom/audible/mobile/player/State;->BUFFERING:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 683
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->startBufferingUpdates()V

    goto :goto_1

    .line 664
    :cond_9
    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object p2, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    if-eq p1, p2, :cond_a

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object p2, Lcom/audible/mobile/player/State;->STOPPED:Lcom/audible/mobile/player/State;

    if-eq p1, p2, :cond_a

    invoke-virtual {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->getState()Lcom/audible/mobile/player/State;

    move-result-object p1

    sget-object p2, Lcom/audible/mobile/player/State;->PREPARING:Lcom/audible/mobile/player/State;

    if-eq p1, p2, :cond_a

    .line 665
    sget-object p1, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    return-void
.end method

.method public pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    move-result-object v0

    return-object v0
.end method

.method public prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    move-result-object p1

    return-object p1
.end method

.method public reportErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Error occurred creating MediaSource but player is not moving to error state"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 628
    invoke-interface {p2}, Lcom/audible/mobile/player/Error;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-direct {p0, p2, v0, p3}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->createPlayerException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Lcom/audible/mobile/player/exception/PlayerException;

    move-result-object p2

    .line 629
    new-instance p3, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-direct {p3, v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;-><init>(Lcom/audible/mobile/metric/logger/MetricManager;)V

    .line 630
    invoke-virtual {p3, p1, p2}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->sendPlayerExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/exception/PlayerException;)V

    return-void
.end method

.method protected resetInternal()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->stopBufferingAndPositionUpdates()V

    .line 204
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->cancelAuthenticationTask()V

    .line 205
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 206
    sget-object v0, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->makeStateTransition(Lcom/audible/mobile/player/State;)V

    .line 207
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 208
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 209
    iget-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->mediaSourceProvider:Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;

    invoke-interface {v0}, Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;->reset()V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/audible/mobile/player/exo/StateAwareExoPlayer;->dataSource:Lcom/audible/mobile/player/AudioDataSource;

    return-void
.end method

.method public seekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->seekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    move-result-object p1

    return-object p1
.end method

.method public setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    move-result-object p1

    return-object p1
.end method

.method public setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V

    return-void
.end method

.method public setVolume(F)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->setVolume(F)Z

    move-result p1

    return p1
.end method

.method public start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    move-result-object v0

    return-object v0
.end method

.method public stop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->stop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;

    move-result-object v0

    return-object v0
.end method
