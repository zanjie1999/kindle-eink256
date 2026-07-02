.class Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;
.super Ljava/lang/Object;
.source "DownloadRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field public static final MAX_TIME_DURATION_FOR_RETRY:J

.field public static final TIME_DELAY_FOR_INIT_TIMER:J


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private final iCallback:Lcom/audible/hushpuppy/common/misc/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

.field private final relationshipDownloadInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->TIME_DELAY_FOR_INIT_TIMER:J

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->MAX_TIME_DURATION_FOR_RETRY:J

    .line 52
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Landroid/os/HandlerThread;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HandlerThread;",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;",
            ">;",
            "Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;",
            "Lde/greenrobot/event/EventBus;",
            "Ljava/util/Set<",
            "Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->handlerThread:Landroid/os/HandlerThread;

    .line 80
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->handler:Landroid/os/Handler;

    .line 82
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->iCallback:Lcom/audible/hushpuppy/common/misc/ICallback;

    .line 83
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    .line 84
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 85
    invoke-virtual {p4, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 86
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->relationshipDownloadInfos:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;",
            ">;",
            "Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;",
            "Lde/greenrobot/event/EventBus;",
            ")V"
        }
    .end annotation

    .line 73
    new-instance v1, Landroid/os/HandlerThread;

    const-string v0, "RetryableDownloadRequestHandler"

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;-><init>(Landroid/os/HandlerThread;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 44
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;)Ljava/util/Set;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->relationshipDownloadInfos:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->reportMetricOccurred(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;)V

    return-void
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;)Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;)Lcom/audible/hushpuppy/common/misc/ICallback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->iCallback:Lcom/audible/hushpuppy/common/misc/ICallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private reportMetricOccurred(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;)V
    .locals 2

    .line 144
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, p1, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized enqueueRelationshipDownloadRequest(Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;)Z
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->relationshipDownloadInfos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Asin %s is already queued for download. Ignoring this new request"

    .line 108
    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-interface {v1, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return v0

    .line 112
    :cond_1
    :try_start_1
    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestEnqueuedRetryManagerAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    invoke-direct {p0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->reportMetricOccurred(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;)V

    .line 113
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->relationshipDownloadInfos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->handler:Landroid/os/Handler;

    new-instance v9, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;

    sget-wide v4, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->TIME_DELAY_FOR_INIT_TIMER:J

    sget-wide v6, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->MAX_TIME_DURATION_FOR_RETRY:J

    move-object v2, v9

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager$RelationshipDownloadRunnable;-><init>(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;JJLcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;)V

    sget-wide v2, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->TIME_DELAY_FOR_INIT_TIMER:J

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit p0

    return v0

    .line 102
    :cond_3
    :goto_0
    :try_start_2
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Passed null relationshipinfo or relationship or audiobook to enqueue for download."

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/AudibleLibraryUpdateEvent;)V
    .locals 4

    .line 127
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received AudibleLibraryUpdateEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 129
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedLibraryRefreshEvent:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->reportMetricOccurred(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;)V

    .line 131
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->relationshipDownloadInfos:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    .line 132
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;->titleIsInLibrary(Lcom/audible/mobile/domain/Asin;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedLibraryRefreshEventAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    invoke-direct {p0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->reportMetricOccurred(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;)V

    goto :goto_1

    .line 135
    :cond_0
    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedLibraryRefreshEventAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    invoke-direct {p0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->reportMetricOccurred(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;)V

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->iCallback:Lcom/audible/hushpuppy/common/misc/ICallback;

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/misc/ICallback;->execute(Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->relationshipDownloadInfos:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method
