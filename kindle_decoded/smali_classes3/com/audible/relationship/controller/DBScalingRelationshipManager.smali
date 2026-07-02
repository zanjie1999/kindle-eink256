.class public Lcom/audible/relationship/controller/DBScalingRelationshipManager;
.super Ljava/lang/Object;
.source "DBScalingRelationshipManager.java"

# interfaces
.implements Lcom/audible/relationship/controller/IDBScalingRelationshipManager;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field static final THROTTLE_TIME_MILLISECOND:J


# instance fields
.field private final broadcaster:Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;

.field private final context:Landroid/content/Context;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private lastFullRequestTimestamp:Ljava/lang/Long;

.field private final storage:Lcom/audible/relationship/db/IRelationshipStorage;

.field private final updateController:Lcom/audible/relationship/controller/IRelationshipUpdateController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/controller/DBScalingRelationshipManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->THROTTLE_TIME_MILLISECOND:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/controller/IRelationshipUpdateController;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context can\'t be null."

    .line 76
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->context:Landroid/content/Context;

    const-string v0, "eventBus can\'t be null"

    .line 77
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lde/greenrobot/event/EventBus;

    iput-object p2, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->eventBus:Lde/greenrobot/event/EventBus;

    const-string p2, "storage can\'t be null."

    .line 78
    invoke-static {p3, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/relationship/db/IRelationshipStorage;

    iput-object p3, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->storage:Lcom/audible/relationship/db/IRelationshipStorage;

    const-string p2, "updateController can\'t be null."

    .line 79
    invoke-static {p4, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/relationship/controller/IRelationshipUpdateController;

    iput-object p4, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->updateController:Lcom/audible/relationship/controller/IRelationshipUpdateController;

    const/4 p2, 0x0

    .line 80
    iput-object p2, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->lastFullRequestTimestamp:Ljava/lang/Long;

    .line 81
    new-instance p2, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;

    invoke-direct {p2, p1}, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->broadcaster:Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;

    .line 86
    invoke-direct {p0}, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->registerNetworkConnectedReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/relationship/controller/DBScalingRelationshipManager;)Lcom/audible/relationship/controller/IRelationshipUpdateController;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->updateController:Lcom/audible/relationship/controller/IRelationshipUpdateController;

    return-object p0
.end method

.method private registerNetworkConnectedReceiver()V
    .locals 3

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->context:Landroid/content/Context;

    new-instance v2, Lcom/audible/relationship/controller/DBScalingRelationshipManager$1;

    invoke-direct {v2, p0}, Lcom/audible/relationship/controller/DBScalingRelationshipManager$1;-><init>(Lcom/audible/relationship/controller/DBScalingRelationshipManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V
    .locals 1

    .line 223
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method private shouldThrottle()Z
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->lastFullRequestTimestamp:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->THROTTLE_TIME_MILLISECOND:J

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 195
    sget-object v0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wait period is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " second(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private submitPagingRequest()V
    .locals 4

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->lastFullRequestTimestamp:Ljava/lang/Long;

    .line 204
    iget-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->updateController:Lcom/audible/relationship/controller/IRelationshipUpdateController;

    invoke-interface {v0}, Lcom/audible/relationship/controller/IRelationshipUpdateController;->clearAllRequests()V

    .line 205
    iget-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->updateController:Lcom/audible/relationship/controller/IRelationshipUpdateController;

    new-instance v1, Lcom/audible/relationship/domain/RelationshipRequest;

    sget-object v2, Lcom/audible/relationship/domain/RelationshipRequest$Type;->PAGING_REQUEST:Lcom/audible/relationship/domain/RelationshipRequest$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/audible/relationship/domain/RelationshipRequest;-><init>(Lcom/audible/relationship/domain/RelationshipRequest$Type;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/audible/relationship/controller/IRelationshipUpdateController;->submitRequest(Lcom/audible/relationship/domain/RelationshipRequest;)V

    return-void
.end method


# virtual methods
.method public clearAllRelationships()V
    .locals 3

    .line 182
    sget-object v0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clearing all relationships!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->storage:Lcom/audible/relationship/db/IRelationshipStorage;

    invoke-interface {v0}, Lcom/audible/relationship/db/IRelationshipStorage;->deleteAllRelationships()I

    move-result v0

    .line 184
    sget-object v1, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Number of row deleted is %s"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public enable()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v1, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->broadcaster:Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public listAllRelationships()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->storage:Lcom/audible/relationship/db/IRelationshipStorage;

    invoke-interface {v0}, Lcom/audible/relationship/db/IRelationshipStorage;->listRelationships()Ljava/util/List;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "All relationship size is %s"

    invoke-interface {v1, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public queryOwnedRelationship(Lcom/audible/mobile/domain/Asin;)Lcom/audible/relationship/domain/Relationship;
    .locals 3

    if-nez p1, :cond_0

    .line 154
    sget-object p1, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Querying with null EBook ASIN! Do nothing."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    sget-object v0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Querying for relationship mapping of EBook ASIN : %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->storage:Lcom/audible/relationship/db/IRelationshipStorage;

    invoke-interface {v0, p1}, Lcom/audible/relationship/db/IRelationshipStorage;->queryOwnedRelationship(Lcom/audible/mobile/domain/Asin;)Lcom/audible/relationship/domain/Relationship;

    move-result-object p1

    return-object p1
.end method

.method public queryRelationship(Lcom/audible/mobile/domain/Asin;)Lcom/audible/relationship/domain/Relationship;
    .locals 3

    if-nez p1, :cond_0

    .line 143
    sget-object p1, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Querying with null EBook ASIN! Do nothing."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 146
    :cond_0
    sget-object v0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Querying for relationship mapping of EBook ASIN : %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->storage:Lcom/audible/relationship/db/IRelationshipStorage;

    invoke-interface {v0, p1}, Lcom/audible/relationship/db/IRelationshipStorage;->queryRelationship(Lcom/audible/mobile/domain/Asin;)Lcom/audible/relationship/domain/Relationship;

    move-result-object p1

    return-object p1
.end method

.method public requestAsinPairRelationship(Ljava/lang/String;)V
    .locals 3

    .line 133
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "asinPairList can\'t be null or blank."

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 134
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;->CompanionMapping_RequestAsinPairMapping:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->OCCURRED:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v0, v1}, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 135
    sget-object v0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting ASIN pair relationship mapping : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->updateController:Lcom/audible/relationship/controller/IRelationshipUpdateController;

    new-instance v1, Lcom/audible/relationship/domain/RelationshipRequest;

    sget-object v2, Lcom/audible/relationship/domain/RelationshipRequest$Type;->ASIN_REQUEST:Lcom/audible/relationship/domain/RelationshipRequest$Type;

    invoke-direct {v1, v2, p1}, Lcom/audible/relationship/domain/RelationshipRequest;-><init>(Lcom/audible/relationship/domain/RelationshipRequest$Type;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/audible/relationship/controller/IRelationshipUpdateController;->submitRequest(Lcom/audible/relationship/domain/RelationshipRequest;)V

    return-void
.end method

.method public requestFullRelationship()V
    .locals 2

    .line 113
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;->CompanionMapping_RequestFullMappingThrottle:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->OCCURRED:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v0, v1}, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 114
    invoke-direct {p0}, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->shouldThrottle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Previous full request was within throttle period. Dropping this request."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Requesting full relationship mapping."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->submitPagingRequest()V

    return-void
.end method

.method public requestFullRelationship(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->requestFullRelationship()V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->requestFullRelationshipForce()V

    :goto_0
    return-void
.end method

.method public requestFullRelationshipForce()V
    .locals 2

    .line 125
    sget-object v0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Requesting full relationship mapping. FORCE!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;->CompanionMapping_RequestFullMapping:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->OCCURRED:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v0, v1}, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 127
    invoke-direct {p0}, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->submitPagingRequest()V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v1, p0, Lcom/audible/relationship/controller/DBScalingRelationshipManager;->broadcaster:Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
