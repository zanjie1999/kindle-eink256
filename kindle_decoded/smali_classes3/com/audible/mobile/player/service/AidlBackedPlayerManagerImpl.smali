.class public Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/player/PlayerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;,
        Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingRunnable;,
        Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;,
        Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceEventListenerImpl;,
        Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceUnbindListener;,
        Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;
    }
.end annotation


# static fields
.field private static final NO_USER_INTERACTION_UNBINDING_DELAY_MS:J

.field private static final VALID_DURATION_THRESHOLD_MS:I = 0x3e8


# instance fields
.field private audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

.field private audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

.field private final audioMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

.field private audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

.field private final bindingSemaphore:Ljava/util/concurrent/Semaphore;

.field private final context:Landroid/content/Context;

.field private final coverArtProvider:Lcom/audible/mobile/audio/metadata/CoverArtProvider;

.field private final currentPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/mobile/player/LocalPlayerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

.field private final noUserInteractionUnbindingDelayMs:J

.field private final notificationFactoryProvider:Lcom/audible/mobile/notification/NotificationFactoryProvider;

.field private final pendingOrCurrentPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

.field private playerServiceConnection:Landroid/content/ServiceConnection;

.field private final playerServiceEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/mobile/player/PlayerServiceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final playerServiceExecutor:Ljava/util/concurrent/Executor;

.field private final preferences:Lcom/audible/mobile/player/PlayerSettingsProvider;

.field private final unbindPolicy:Lcom/audible/mobile/player/policy/UnbindPolicy;

.field private final unbindingScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private unbindingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->NO_USER_INTERACTION_UNBINDING_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;Lcom/audible/mobile/audio/metadata/CoverArtProvider;Lcom/audible/mobile/media/button/MediaButtonPlayerEventListener;Lcom/audible/mobile/player/policy/UnbindPolicy;Lcom/audible/mobile/notification/NotificationFactoryProvider;)V
    .locals 12

    const-string v0, "player-service-executor"

    .line 128
    invoke-static {v0}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    sget-wide v7, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->NO_USER_INTERACTION_UNBINDING_DELAY_MS:J

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;Lcom/audible/mobile/audio/metadata/CoverArtProvider;Ljava/util/concurrent/Executor;JLcom/audible/mobile/media/button/MediaButtonPlayerEventListener;Lcom/audible/mobile/player/policy/UnbindPolicy;Lcom/audible/mobile/notification/NotificationFactoryProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;Lcom/audible/mobile/audio/metadata/CoverArtProvider;Ljava/util/concurrent/Executor;JLcom/audible/mobile/media/button/MediaButtonPlayerEventListener;Lcom/audible/mobile/player/policy/UnbindPolicy;Lcom/audible/mobile/notification/NotificationFactoryProvider;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->listeners:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceEventListeners:Ljava/util/Set;

    const-string v0, "player-manager-unbind"

    .line 88
    invoke-static {v0}, Lcom/audible/mobile/util/Executors;->newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->unbindingScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->pendingOrCurrentPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->currentPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindingSemaphore:Ljava/util/concurrent/Semaphore;

    const-string v0, "context must not be null."

    .line 136
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "metricManager must not be null."

    .line 137
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "audioMetadataProvider must not be null."

    .line 138
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "coverArtProvider must not be null."

    .line 139
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "playerServiceExecutor cannot be null."

    .line 140
    invoke-static {p5, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mediaButtonPlayerEventListener cannot be null."

    .line 141
    invoke-static {p8, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unbindPolicy cannot be null."

    .line 142
    invoke-static {p9, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "notificationFactoryProvider cannot be null."

    .line 143
    invoke-static {p10, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->context:Landroid/content/Context;

    .line 146
    iput-object p3, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audioMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    .line 147
    iput-object p4, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->coverArtProvider:Lcom/audible/mobile/audio/metadata/CoverArtProvider;

    .line 148
    iput-object p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    .line 149
    iput-object p5, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceExecutor:Ljava/util/concurrent/Executor;

    .line 150
    iput-wide p6, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->noUserInteractionUnbindingDelayMs:J

    .line 151
    new-instance p2, Lcom/audible/mobile/player/PlayerSharedPreferences;

    invoke-direct {p2, p1}, Lcom/audible/mobile/player/PlayerSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->preferences:Lcom/audible/mobile/player/PlayerSettingsProvider;

    .line 152
    iput-object p9, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->unbindPolicy:Lcom/audible/mobile/player/policy/UnbindPolicy;

    .line 153
    iput-object p10, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->notificationFactoryProvider:Lcom/audible/mobile/notification/NotificationFactoryProvider;

    .line 154
    invoke-virtual {p0, p8}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->pendingOrCurrentPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindingSemaphore:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/Set;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/Set;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceEventListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/metric/logger/MetricManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->clearUnbindingTimer()V

    return-void
.end method

.method static synthetic access$1900(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->startUnbindingTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Z
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/player/policy/UnbindPolicy;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->unbindPolicy:Lcom/audible/mobile/player/policy/UnbindPolicy;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->removeNotification()V

    return-void
.end method

.method static synthetic access$2200(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->reset(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audioMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->unbindingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$300(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    return-object p0
.end method

.method static synthetic access$302(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->unbindIfPossibleAndNecessary()V

    return-void
.end method

.method static synthetic access$502(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$600(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Landroid/content/Context;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/player/AudioDataSource;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    return-object p0
.end method

.method static synthetic access$702(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/AudioDataSource;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    return-object p1
.end method

.method static synthetic access$800(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->currentPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private declared-synchronized clearUnbindingTimer()V
    .locals 2

    monitor-enter p0

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->unbindingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->unbindingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 687
    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->unbindingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isServiceBound()Z
    .locals 1

    monitor-enter p0

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-virtual {v0}, Landroid/os/Binder;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeNotification()V
    .locals 3

    .line 854
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 855
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->notificationFactoryProvider:Lcom/audible/mobile/notification/NotificationFactoryProvider;

    const-class v2, Lcom/audible/mobile/player/service/PlayerService;

    invoke-virtual {v1, v2}, Lcom/audible/mobile/notification/NotificationFactoryProvider;->getFactory(Ljava/lang/Class;)Lcom/audible/mobile/notification/NotificationFactory;

    move-result-object v1

    .line 856
    invoke-interface {v1}, Lcom/audible/mobile/notification/NotificationFactory;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private declared-synchronized reset(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 408
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 409
    new-instance p1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$6;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$6;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V

    goto :goto_1

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/LocalPlayerEventListener;

    .line 417
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onReset(Lcom/audible/mobile/player/AudioDataSource;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 420
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    .line 421
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    .line 422
    iget-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->currentPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized startUnbindingTimer()V
    .locals 5

    monitor-enter p0

    .line 678
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->clearUnbindingTimer()V

    .line 679
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->unbindingScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingRunnable;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;)V

    iget-wide v2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->noUserInteractionUnbindingDelayMs:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->unbindingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unbindIfPossibleAndNecessary()V
    .locals 4

    monitor-enter p0

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 666
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Manager:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v3, Lcom/audible/mobile/player/metric/Names;->ServiceUnbinding:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    .line 667
    invoke-interface {v0}, Lcom/audible/mobile/metric/domain/TimerMetric;->start()V

    .line 668
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 669
    invoke-interface {v0}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 670
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-interface {v1, v0}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    const/4 v0, 0x0

    .line 671
    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceConnection:Landroid/content/ServiceConnection;

    .line 672
    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    .locals 2

    monitor-enter p0

    .line 591
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->clearUnbindingTimer()V

    .line 592
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearPreferences()V
    .locals 1

    .line 566
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$15;

    invoke-direct {v0, p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$15;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V

    return-void
.end method

.method public configureStandalonePlayerService(Lcom/audible/playersdk/notification/PlayerNotificationFactory;Lcom/audible/playersdk/headset/HeadsetPolicy;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized decrementVolume()V
    .locals 1

    monitor-enter p0

    .line 558
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->decrementVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fastForward(I)V
    .locals 1

    monitor-enter p0

    .line 497
    :try_start_0
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$12;

    invoke-direct {v0, p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$12;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;I)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    return-object v0
.end method

.method public declared-synchronized getAudiobookMetadata()Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
    .locals 1

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChapterCount()I
    .locals 1

    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    invoke-virtual {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getChapterCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCoverArt(Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V
    .locals 2

    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->coverArtProvider:Lcom/audible/mobile/audio/metadata/CoverArtProvider;

    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-interface {v0, v1, p1, p2}, Lcom/audible/mobile/audio/metadata/CoverArtProvider;->get(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentChapter()Lcom/audible/mobile/audio/metadata/ChapterMetadata;
    .locals 5

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 219
    monitor-exit p0

    return-object v0

    .line 222
    :cond_0
    :try_start_1
    sget-object v0, Lcom/audible/mobile/util/ChapterUtils;->INSTANCE:Lcom/audible/mobile/util/ChapterUtils;

    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    .line 223
    invoke-virtual {v1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getChapters()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->currentPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 224
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    .line 225
    invoke-virtual {v3}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getDuration()J

    move-result-wide v3

    long-to-int v4, v3

    .line 222
    invoke-virtual {v0, v1, v2, v4}, Lcom/audible/mobile/util/ChapterUtils;->getFlattenedChapterAtPosition(Ljava/util/List;II)Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->currentPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public declared-synchronized incrementVolume()V
    .locals 1

    monitor-enter p0

    .line 550
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->incrementVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPlayWhenReady()Z
    .locals 1

    .line 384
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->isPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isPlaying()Z
    .locals 1

    monitor-enter p0

    .line 378
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->isPlaying()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadPlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 451
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$9;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V

    return-void
.end method

.method public declared-synchronized nextChapter()V
    .locals 3

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 161
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    invoke-virtual {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getChapters()Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->getCurrentChapter()Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 168
    monitor-exit p0

    return-void

    .line 171
    :cond_1
    :try_start_2
    sget-object v2, Lcom/audible/mobile/util/ChapterUtils;->INSTANCE:Lcom/audible/mobile/util/ChapterUtils;

    invoke-virtual {v2, v0, v1}, Lcom/audible/mobile/util/ChapterUtils;->getNextFlattenedChapter(Ljava/util/List;Lcom/audible/mobile/audio/metadata/ChapterMetadata;)Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 174
    monitor-exit p0

    return-void

    .line 182
    :cond_2
    :try_start_3
    invoke-interface {v0}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getStartTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->seekTo(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    monitor-enter p0

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceConnection:Landroid/content/ServiceConnection;

    .line 579
    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    .line 580
    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    .line 581
    iput-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    .line 367
    :try_start_0
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$4;

    invoke-direct {v0, p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$4;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepare(I)V
    .locals 1

    .line 473
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$10;

    invoke-direct {v0, p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$10;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;I)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V

    return-void
.end method

.method public declared-synchronized previousChapter()V
    .locals 3

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 189
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audiobookMetadata:Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    invoke-virtual {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getChapters()Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->getCurrentChapter()Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 196
    monitor-exit p0

    return-void

    .line 199
    :cond_1
    :try_start_2
    sget-object v2, Lcom/audible/mobile/util/ChapterUtils;->INSTANCE:Lcom/audible/mobile/util/ChapterUtils;

    invoke-virtual {v2, v0, v1}, Lcom/audible/mobile/util/ChapterUtils;->getPreviousPlayableFlattenedChapter(Ljava/util/List;Lcom/audible/mobile/audio/metadata/ChapterMetadata;)Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object v2

    if-nez v2, :cond_2

    .line 204
    sget-object v2, Lcom/audible/mobile/util/ChapterUtils;->INSTANCE:Lcom/audible/mobile/util/ChapterUtils;

    invoke-virtual {v2, v0, v1}, Lcom/audible/mobile/util/ChapterUtils;->getPreviousFlattenedChapter(Ljava/util/List;Lcom/audible/mobile/audio/metadata/ChapterMetadata;)Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    .line 208
    monitor-exit p0

    return-void

    .line 212
    :cond_2
    :try_start_3
    invoke-interface {v2}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getStartTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->seekTo(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerExtraPlayerFactory(Lsharedsdk/MediaSourceType;Lcom/audible/playersdk/player/PlayerFactory;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 281
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerPlayerServiceEventListener(Lcom/audible/mobile/player/PlayerServiceEventListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$2;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/PlayerServiceEventListener;)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 309
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public releasePlayer()Lcom/audible/mobile/player/Player;
    .locals 1

    .line 463
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->releasePlayer()Lcom/audible/mobile/player/Player;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 403
    :try_start_0
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->reset(Z)V
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

.method public declared-synchronized rewind(I)V
    .locals 1

    monitor-enter p0

    .line 508
    :try_start_0
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$13;

    invoke-direct {v0, p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$13;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;I)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized seekTo(I)V
    .locals 1

    monitor-enter p0

    .line 485
    :try_start_0
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$11;

    invoke-direct {v0, p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$11;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;I)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    monitor-enter p0

    .line 428
    :try_start_0
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$7;

    invoke-direct {v0, p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$7;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/AudioDataSource;)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAudioDataSourceWithoutPrepare(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    monitor-enter p0

    .line 440
    :try_start_0
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$8;

    invoke-direct {v0, p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$8;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/AudioDataSource;)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
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

    .line 519
    :try_start_0
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$14;

    invoke-direct {v0, p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$14;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/NarrationSpeed;)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
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

    .line 540
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 541
    monitor-exit p0

    return p1

    .line 543
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->setVolume(F)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 356
    :try_start_0
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$3;

    invoke-direct {v0, p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$3;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 390
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$5;

    invoke-direct {v0, p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$5;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->bindAndExecuteCommand(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
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

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->removeOnPlayerEventListener(Lcom/audible/mobile/player/PlayerEventListener;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterPlayerServiceEventListener(Lcom/audible/mobile/player/PlayerServiceEventListener;)V
    .locals 1

    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->removePlayerServiceEventListener(Lcom/audible/mobile/player/PlayerServiceEventListener;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->playerServiceEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized volumeBoost(Z)V
    .locals 1

    monitor-enter p0

    .line 530
    :try_start_0
    invoke-direct {p0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->audibleReadyPlayerService:Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->volumeBoost(Z)V

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->preferences:Lcom/audible/mobile/player/PlayerSettingsProvider;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerSettingsProvider;->setVolumeBoost(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
