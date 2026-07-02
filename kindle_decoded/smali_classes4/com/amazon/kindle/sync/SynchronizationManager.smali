.class public Lcom/amazon/kindle/sync/SynchronizationManager;
.super Ljava/lang/Object;
.source "SynchronizationManager.java"

# interfaces
.implements Lcom/amazon/kindle/event/IEventProvider;


# static fields
.field public static final SYNC_CANCELLED:Lcom/amazon/kindle/event/EventType;

.field public static final SYNC_FAILED:Lcom/amazon/kindle/event/EventType;

.field public static final SYNC_START:Lcom/amazon/kindle/event/EventType;

.field public static final SYNC_STEP_FAILED:Lcom/amazon/kindle/event/EventType;

.field private static final SYNC_STEP_FAILED_METRIC:Ljava/lang/String; = "SyncStepFailed_"

.field private static final SYNC_STEP_FAILED_TIMER:Ljava/lang/String; = "SyncStepFailedTimer_"

.field public static final SYNC_STEP_START:Lcom/amazon/kindle/event/EventType;

.field public static final SYNC_STEP_SUCCEEDED:Lcom/amazon/kindle/event/EventType;

.field private static final SYNC_STEP_SUCCESS_METRIC:Ljava/lang/String; = "SyncStepSucceeded_"

.field private static final SYNC_STEP_SUCCESS_TIMER:Ljava/lang/String; = "SyncStepSucceededTimer_"

.field private static final SYNC_STEP_TIMER:Ljava/lang/String; = "SyncStepTimer_"

.field public static final SYNC_SUCCEEDED:Lcom/amazon/kindle/event/EventType;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private broker:Lcom/amazon/kindle/event/EventBroker;

.field private final context:Landroid/content/Context;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final networkService:Lcom/amazon/kindle/network/INetworkService;

.field private remoteTodoFetcher:Lcom/amazon/kindle/todo/IRemoteTodoFetcher;

.field private final syncMetadataManager:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

.field private final syncMetadataThrottleTimeInHours:I

.field private syncParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/application/sync/internal/SyncParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final syncTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/sync/SyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v1, "SYNC"

    const-string v2, "STEP_START"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_STEP_START:Lcom/amazon/kindle/event/EventType;

    .line 79
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v2, "STEP_DONE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_STEP_SUCCEEDED:Lcom/amazon/kindle/event/EventType;

    .line 81
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v2, "STEP_FAILED"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_STEP_FAILED:Lcom/amazon/kindle/event/EventType;

    .line 83
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v2, "START"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_START:Lcom/amazon/kindle/event/EventType;

    .line 84
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v2, "DONE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_SUCCEEDED:Lcom/amazon/kindle/event/EventType;

    .line 85
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v2, "FAILED"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_FAILED:Lcom/amazon/kindle/event/EventType;

    .line 86
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v2, "CANCELLED"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_CANCELLED:Lcom/amazon/kindle/event/EventType;

    .line 96
    const-class v0, Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    .line 128
    iput-object p1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 129
    new-instance p1, Lcom/amazon/kindle/event/EventBroker;

    invoke-direct {p1}, Lcom/amazon/kindle/event/EventBroker;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->broker:Lcom/amazon/kindle/event/EventBroker;

    .line 131
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 133
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRemoteTodoFetcher()Lcom/amazon/kindle/todo/IRemoteTodoFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->remoteTodoFetcher:Lcom/amazon/kindle/todo/IRemoteTodoFetcher;

    .line 135
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 137
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    .line 138
    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v1

    .line 139
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    .line 140
    new-instance v2, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;-><init>(Lcom/amazon/kindle/persistence/ISecureStorage;Lcom/amazon/kindle/webservices/IWebRequestManager;)V

    iput-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncMetadataManager:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    .line 141
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->sync_metadata_throttle_time_in_hours:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncMetadataThrottleTimeInHours:I

    .line 143
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    .line 144
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->context:Landroid/content/Context;

    .line 145
    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->networkService:Lcom/amazon/kindle/network/INetworkService;

    .line 146
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/sync/SynchronizationManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/sync/SynchronizationManager;)Lcom/amazon/kindle/event/EventBroker;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->broker:Lcom/amazon/kindle/event/EventBroker;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/sync/SynchronizationManager;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/sync/SynchronizationManager;Ljava/lang/Integer;Lcom/amazon/kindle/sync/SyncTask;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/sync/SynchronizationManager;->removeTask(Ljava/lang/Integer;Lcom/amazon/kindle/sync/SyncTask;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kindle/sync/SynchronizationManager;)Ljava/util/Map;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kcp/application/sync/internal/SyncParameters;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/sync/SynchronizationManager;->reportSyncMetrics(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V

    return-void
.end method

.method private addCommands(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/sync/internal/SyncParameters;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/sync/SyncTask;",
            ">;",
            "Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 434
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 437
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 440
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/amazon/kindle/sync/SyncTask;

    .line 442
    invoke-virtual {v14}, Lcom/amazon/kindle/sync/SyncTask;->getSyncStep()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 444
    iget-object v1, v10, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/sync/SyncTask;

    if-eqz v1, :cond_4

    .line 446
    invoke-virtual {v14, v1}, Lcom/amazon/kindle/sync/SyncTask;->shouldOverride(Lcom/amazon/kindle/sync/SyncTask;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 447
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling duplicate task : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with command : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v1}, Lcom/amazon/kindle/sync/SyncTask;->getCommand()Lcom/amazon/kcp/application/internal/commands/CCommand;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and syncTaskKey "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/sync/SyncTask;->cancel()Z

    goto :goto_2

    .line 453
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Ignoring sync task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v14}, Lcom/amazon/kindle/sync/SyncTask;->getCommand()Lcom/amazon/kcp/application/internal/commands/CCommand;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for duplicate task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v1}, Lcom/amazon/kindle/sync/SyncTask;->getCommand()Lcom/amazon/kcp/application/internal/commands/CCommand;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and syncTaskKey "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    :cond_3
    sget-object v1, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync task ignored as we already have a similar one running running and syncTaskKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v14

    goto/16 :goto_0

    .line 464
    :cond_4
    :goto_2
    iget-object v1, v10, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    monitor-enter v1

    .line 465
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SyncParam "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Adding sync task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with command : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v14}, Lcom/amazon/kindle/sync/SyncTask;->getCommand()Lcom/amazon/kcp/application/internal/commands/CCommand;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " and syncTaskKey "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 465
    invoke-static {v2, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v2, v10, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    invoke-interface {v2, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncStepTimer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 475
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v15

    new-instance v9, Lcom/amazon/kindle/sync/SynchronizationManager$1;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object v8, v14

    move-object v12, v9

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/sync/SynchronizationManager$1;-><init>(Lcom/amazon/kindle/sync/SynchronizationManager;ZLcom/amazon/kcp/application/metrics/internal/MetricsManager;Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/lang/Integer;Ljava/lang/String;Lcom/amazon/kindle/sync/SyncTask;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V

    invoke-interface {v15, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-object v1, v14

    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 469
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    if-eqz v2, :cond_7

    .line 596
    iget-object v1, v10, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    monitor-enter v1

    .line 597
    :try_start_2
    iget-object v2, v10, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 598
    iget-object v2, v10, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_6
    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method private addSyncCommands(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V
    .locals 7

    .line 256
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getSteps()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x1ff

    .line 258
    invoke-static {v1, v2, v3, v4}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    sget-object p1, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SyncType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    new-instance v4, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;

    .line 268
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getStatusTracker()Lcom/amazon/kindle/services/download/IStatusTracker;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;-><init>(Lcom/amazon/kindle/services/download/IStatusTracker;)V

    const-wide/16 v5, 0x1

    .line 270
    invoke-static {v5, v6, v1, v2}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/16 v5, 0x2

    .line 271
    invoke-static {v5, v6, v1, v2}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    :cond_1
    invoke-direct {p0, v0, p1, v3, v4}, Lcom/amazon/kindle/sync/SynchronizationManager;->prepareJournalCommand(ILcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V

    :cond_2
    const-wide/16 v5, 0x8

    .line 287
    invoke-static {v5, v6, v1, v2}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    invoke-direct {p0, p1, v3, v4}, Lcom/amazon/kindle/sync/SynchronizationManager;->preparePresseTodoCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V

    :cond_3
    const-wide/16 v5, 0x4

    .line 291
    invoke-static {v5, v6, v1, v2}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    invoke-direct {p0, p1, v3, v4}, Lcom/amazon/kindle/sync/SynchronizationManager;->prepareSyncMetaDataCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V

    :cond_4
    const-wide/16 v5, 0x10

    .line 295
    invoke-static {v5, v6, v1, v2}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 296
    invoke-direct {p0, p1, v3, v4}, Lcom/amazon/kindle/sync/SynchronizationManager;->prepareFPRCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V

    :cond_5
    const-wide/16 v5, 0x20

    .line 299
    invoke-static {v5, v6, v1, v2}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 300
    invoke-direct {p0, p1, v3, v4}, Lcom/amazon/kindle/sync/SynchronizationManager;->prepareMRPRCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V

    :cond_6
    const-wide/16 v5, 0x40

    .line 303
    invoke-static {v5, v6, v1, v2}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 304
    invoke-direct {p0, p1, v3, v4}, Lcom/amazon/kindle/sync/SynchronizationManager;->prepareReadDataCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V

    :cond_7
    const-wide/16 v5, 0x80

    .line 307
    invoke-static {v5, v6, v1, v2}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 308
    invoke-direct {p0, v3}, Lcom/amazon/kindle/sync/SynchronizationManager;->prepareInvalidDownloadsSyncCommand(Ljava/util/Collection;)V

    :cond_8
    const-wide/16 v5, 0x100

    .line 311
    invoke-static {v5, v6, v1, v2}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 312
    invoke-direct {p0, p1, v3, v4}, Lcom/amazon/kindle/sync/SynchronizationManager;->prepareATLFalkorSyncCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V

    .line 315
    :cond_9
    invoke-direct {p0, p1, v3, v4}, Lcom/amazon/kindle/sync/SynchronizationManager;->addCommands(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V

    return-void
.end method

.method private prepareATLFalkorSyncCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/sync/internal/SyncParameters;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/sync/SyncTask;",
            ">;",
            "Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;",
            ")V"
        }
    .end annotation

    .line 416
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorAddToLibraryEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 417
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFalkorATLSyncManager()Lcom/amazon/kcp/sync/FalkorSyncManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 419
    new-instance p3, Lcom/amazon/kcp/application/internal/commands/SyncFalkorDataCommand;

    invoke-direct {p3, p1}, Lcom/amazon/kcp/application/internal/commands/SyncFalkorDataCommand;-><init>(Lcom/amazon/kcp/sync/FalkorSyncManager;)V

    .line 420
    new-instance p1, Lcom/amazon/kindle/sync/SyncTask;

    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p3}, Lcom/amazon/kindle/sync/SyncTask;-><init>(ILcom/amazon/kcp/application/models/internal/TodoModel$Reason;Lcom/amazon/kcp/application/internal/commands/CCommand;)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private prepareFPRCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/sync/internal/SyncParameters;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/sync/SyncTask;",
            ">;",
            "Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;",
            ")V"
        }
    .end annotation

    .line 386
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 387
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    sget-object v2, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;-><init>(Lcom/amazon/kindle/annotation/IAnnotationsManager;Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 392
    sget-object p1, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    const-string p3, "About to fire GetReadingPositionCommand for FPR"

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance p1, Lcom/amazon/kindle/sync/SyncTask;

    const/16 p3, 0x10

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, v0}, Lcom/amazon/kindle/sync/SyncTask;-><init>(ILcom/amazon/kcp/application/models/internal/TodoModel$Reason;Lcom/amazon/kcp/application/internal/commands/CCommand;)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 388
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    const-string p2, "Can\'t download FPR without book info"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private prepareInvalidDownloadsSyncCommand(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/sync/SyncTask;",
            ">;)V"
        }
    .end annotation

    .line 426
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;

    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->networkService:Lcom/amazon/kindle/network/INetworkService;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;-><init>(Landroid/content/Context;Lcom/amazon/kindle/network/INetworkService;)V

    .line 427
    new-instance v1, Lcom/amazon/kindle/sync/SyncTask;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/amazon/kindle/sync/SyncTask;-><init>(ILcom/amazon/kcp/application/models/internal/TodoModel$Reason;Lcom/amazon/kcp/application/internal/commands/CCommand;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private prepareJournalCommand(ILcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/kcp/application/sync/internal/SyncParameters;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/sync/SyncTask;",
            ">;",
            "Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;",
            ")V"
        }
    .end annotation

    .line 324
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x2

    int-to-long v2, p1

    .line 328
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result p1

    .line 329
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->shouldUploadJournals(Z)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 334
    invoke-virtual {p2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getDeadline()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 339
    :cond_2
    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    const-string v1, "About to fire UploadJournalCommand"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;

    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    .line 341
    invoke-virtual {p2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object p2

    invoke-direct {v0, v1, p1, p4, p2}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;-><init>(Lcom/amazon/kindle/annotation/IAnnotationsManager;ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/application/sync/internal/SyncType;)V

    .line 342
    new-instance p1, Lcom/amazon/kindle/sync/SyncTask;

    const/4 p2, 0x1

    const/4 p4, 0x0

    invoke-direct {p1, p2, p4, v0}, Lcom/amazon/kindle/sync/SyncTask;-><init>(ILcom/amazon/kcp/application/models/internal/TodoModel$Reason;Lcom/amazon/kcp/application/internal/commands/CCommand;)V

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private prepareMRPRCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/sync/internal/SyncParameters;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/sync/SyncTask;",
            ">;",
            "Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;",
            ")V"
        }
    .end annotation

    .line 399
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 400
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;

    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    sget-object v2, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;-><init>(Lcom/amazon/kindle/annotation/IAnnotationsManager;Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 405
    sget-object p1, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    const-string p3, "About to fire GetReadingPositionCommand for MRPR"

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    new-instance p1, Lcom/amazon/kindle/sync/SyncTask;

    const/16 p3, 0x20

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, v0}, Lcom/amazon/kindle/sync/SyncTask;-><init>(ILcom/amazon/kcp/application/models/internal/TodoModel$Reason;Lcom/amazon/kcp/application/internal/commands/CCommand;)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 401
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    const-string p2, "Can\'t download MRPR without book info"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private preparePresseTodoCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/sync/internal/SyncParameters;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/sync/SyncTask;",
            ">;",
            "Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;",
            ")V"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->remoteTodoFetcher:Lcom/amazon/kindle/todo/IRemoteTodoFetcher;

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getAsin()Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->isSample()Z

    move-result v5

    .line 354
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v3

    if-eqz v4, :cond_1

    .line 356
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->remoteTodoFetcher:Lcom/amazon/kindle/todo/IRemoteTodoFetcher;

    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 357
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_LOOKING_FOR_SIDECARS:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 356
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/todo/IRemoteTodoFetcher;->fetchTodo(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 359
    :cond_1
    new-instance p1, Lcom/amazon/kcp/application/internal/commands/FetchTodoCommand;

    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->remoteTodoFetcher:Lcom/amazon/kindle/todo/IRemoteTodoFetcher;

    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-direct {p1, v0, v1, v3, p3}, Lcom/amazon/kcp/application/internal/commands/FetchTodoCommand;-><init>(Lcom/amazon/kindle/todo/IRemoteTodoFetcher;Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 362
    sget-object p3, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    const-string v0, "About to fire FetchTodoCommand"

    invoke-static {p3, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance p3, Lcom/amazon/kindle/sync/SyncTask;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, p1}, Lcom/amazon/kindle/sync/SyncTask;-><init>(ILcom/amazon/kcp/application/models/internal/TodoModel$Reason;Lcom/amazon/kcp/application/internal/commands/CCommand;)V

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private prepareReadDataCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/sync/internal/SyncParameters;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/sync/SyncTask;",
            ">;",
            "Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;",
            ")V"
        }
    .end annotation

    .line 410
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReadDataSyncManager()Lcom/amazon/kcp/sync/IReadDataSyncManager;

    move-result-object p3

    .line 411
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/SyncReadDataCommand;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object p1

    invoke-direct {v0, p3, p1}, Lcom/amazon/kcp/application/internal/commands/SyncReadDataCommand;-><init>(Lcom/amazon/kcp/sync/IReadDataSyncManager;Lcom/amazon/kcp/application/sync/internal/SyncType;)V

    .line 412
    new-instance p1, Lcom/amazon/kindle/sync/SyncTask;

    const/16 p3, 0x40

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, v0}, Lcom/amazon/kindle/sync/SyncTask;-><init>(ILcom/amazon/kcp/application/models/internal/TodoModel$Reason;Lcom/amazon/kcp/application/internal/commands/CCommand;)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private prepareSyncMetaDataCommand(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/sync/internal/SyncParameters;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/sync/SyncTask;",
            ">;",
            "Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;",
            ")V"
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 375
    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t sync metadata or for a single-book sync"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    const-string v1, "About to fire SyncMetaData"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncMetadataManager:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->getSyncTask(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/application/sync/internal/SyncType;)Lcom/amazon/kindle/sync/SyncTask;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeTask(Ljava/lang/Integer;Lcom/amazon/kindle/sync/SyncTask;)V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    monitor-enter v0

    .line 606
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/sync/SyncTask;

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, p2, :cond_2

    .line 612
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 613
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncTask being removed from queue: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with command "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v1}, Lcom/amazon/kindle/sync/SyncTask;->getCommand()Lcom/amazon/kcp/application/internal/commands/CCommand;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with SyncStep : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/sync/SyncTask;->getSyncStep()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 619
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 620
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncTask was not removed: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with command "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {p2}, Lcom/amazon/kindle/sync/SyncTask;->getCommand()Lcom/amazon/kcp/application/internal/commands/CCommand;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "as taskRef was different: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with command "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v1}, Lcom/amazon/kindle/sync/SyncTask;->getCommand()Lcom/amazon/kcp/application/internal/commands/CCommand;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 608
    :cond_3
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 609
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskRef was not found for key: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private reportSyncMetrics(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    .locals 8

    .line 634
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getMetricTimer()Ljava/lang/String;

    move-result-object v0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    const-string v4, " with flags "

    const-string v5, "_"

    const-string v6, "SynchronizationManager"

    if-ne v2, v3, :cond_0

    .line 640
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v7, "SyncSucceeded"

    invoke-virtual {v2, v6, v7, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 641
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Count"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v2, v6, v3, v7}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 642
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "SynchronizationManagerTimer"

    invoke-virtual {v2, v3, v1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    .line 644
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 643
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/sync/internal/SyncType;->setLastSyncDate(Ljava/util/Date;)V

    .line 646
    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync succeeded: sync type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getSteps()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 651
    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync failed: sync type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getSteps()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {p2}, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->getLatestState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {p2}, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->getLatestSubstate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 651
    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v0, v2, :cond_1

    .line 662
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "SyncFailure"

    invoke-virtual {v0, v6, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 664
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v6, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 666
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->getLatestState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->getLatestSubstate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v6, p2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 670
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/application/sync/internal/SyncResult;->CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne p1, p2, :cond_2

    .line 672
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "SyncCanceled"

    invoke-virtual {p1, v6, v0, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public forceCancelAllSyncs()V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/sync/SyncTask;

    .line 226
    invoke-virtual {v2}, Lcom/amazon/kindle/sync/SyncTask;->cancel()Z

    goto :goto_0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 229
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    .line 231
    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncResult;->CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->setResult(Lcom/amazon/kcp/application/sync/internal/SyncResult;)V

    goto :goto_1

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 234
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    .line 234
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 235
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public getSyncMetadataModel()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncMetadataManager:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->getSyncMetadataModel()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    monitor-exit v0

    return-object v1

    .line 243
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasPendingSyncs()Z
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncParams:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isSyncing()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->syncTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onConnectivityChangedEvent(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 716
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 717
    sget-object p1, Lcom/amazon/kcp/application/sync/internal/SyncType;->NETWORK_CONNECTED_3P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 718
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    sget-object p1, Lcom/amazon/kcp/application/sync/internal/SyncType;->NETWORK_CONNECTED_1P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 721
    :cond_0
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 723
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    :cond_1
    return-void
.end method

.method public registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->broker:Lcom/amazon/kindle/event/EventBroker;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    return-void
.end method

.method public setMinTodoItemRequestInterval(I)V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->remoteTodoFetcher:Lcom/amazon/kindle/todo/IRemoteTodoFetcher;

    if-eqz v0, :cond_0

    .line 710
    invoke-interface {v0, p1}, Lcom/amazon/kindle/todo/IRemoteTodoFetcher;->setMinTodoItemRequestInterval(I)V

    :cond_0
    return-void
.end method

.method public sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z
    .locals 7

    const/4 v0, 0x1

    const-string v1, "SynchronizationManager.sync()"

    .line 150
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 151
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 154
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v2

    .line 155
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getAsin()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v5

    if-eqz v2, :cond_2

    .line 159
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->isArchivable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v4, :cond_2

    :cond_0
    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eq v5, v2, :cond_1

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eq v5, v2, :cond_1

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_OPEN_AUTO:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne v5, v2, :cond_2

    .line 161
    :cond_1
    invoke-static {v1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return v3

    .line 166
    :cond_2
    sget-object v2, Lcom/amazon/kindle/sync/SynchronizationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting sync type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with flags "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v5}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getSteps()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {v2, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->addSyncCommands(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    .line 170
    invoke-static {v1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return v0

    .line 173
    :cond_3
    invoke-static {v1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return v3
.end method

.method public unregisterHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager;->broker:Lcom/amazon/kindle/event/EventBroker;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->unregisterHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    return-void
.end method
