.class public final Lcom/audible/relationship/controller/RelationshipUpdateController;
.super Ljava/lang/Object;
.source "RelationshipUpdateController.java"

# interfaces
.implements Lcom/audible/relationship/controller/IRelationshipUpdateController;
.implements Lcom/audible/relationship/controller/IRelationshipUpdateCallback;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final commandFactory:Lcom/audible/relationship/controller/IRelationshipCommandFactory;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final requestStorage:Lcom/audible/relationship/db/IRelationshipRequestStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/controller/RelationshipUpdateController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/controller/RelationshipUpdateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/relationship/db/IRelationshipRequestStorage;Lcom/audible/relationship/controller/IRelationshipCommandFactory;)V
    .locals 1

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/relationship/controller/RelationshipUpdateController;-><init>(Lcom/audible/relationship/db/IRelationshipRequestStorage;Lcom/audible/relationship/controller/IRelationshipCommandFactory;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/relationship/db/IRelationshipRequestStorage;Lcom/audible/relationship/controller/IRelationshipCommandFactory;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "requestStorage can\'t be null."

    .line 59
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/relationship/db/IRelationshipRequestStorage;

    iput-object p1, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->requestStorage:Lcom/audible/relationship/db/IRelationshipRequestStorage;

    const-string p1, "commandFactory can\'t be null."

    .line 60
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/relationship/controller/IRelationshipCommandFactory;

    iput-object p2, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->commandFactory:Lcom/audible/relationship/controller/IRelationshipCommandFactory;

    const-string p1, "executorService can\'t be null."

    .line 61
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V
    .locals 1

    .line 136
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method


# virtual methods
.method public clearAllRequests()V
    .locals 2

    .line 101
    sget-object v0, Lcom/audible/relationship/controller/RelationshipUpdateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clearing up all failure requests"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->requestStorage:Lcom/audible/relationship/db/IRelationshipRequestStorage;

    invoke-interface {v0}, Lcom/audible/relationship/db/IRelationshipRequestStorage;->removeAllRequests()Z

    return-void
.end method

.method public onFailure(Lcom/audible/relationship/domain/RelationshipRequest;)V
    .locals 4

    const-string v0, "request can\'t be null"

    .line 117
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/audible/relationship/controller/RelationshipUpdateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is fail."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 120
    sget-object p1, Lcom/audible/relationship/controller/RelationshipUpdateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Keep request in storage for later retry"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onNextRequest(Lcom/audible/relationship/domain/RelationshipRequest;Lcom/audible/relationship/domain/RelationshipRequest;)V
    .locals 3

    const-string v0, "request can\'t be null"

    .line 126
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "nextRequest can\'t be null"

    .line 127
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/audible/relationship/controller/RelationshipUpdateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is success with next request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->requestStorage:Lcom/audible/relationship/db/IRelationshipRequestStorage;

    invoke-interface {v0, p1}, Lcom/audible/relationship/db/IRelationshipRequestStorage;->removeRequest(Lcom/audible/relationship/domain/RelationshipRequest;)Z

    .line 131
    invoke-virtual {p0, p2}, Lcom/audible/relationship/controller/RelationshipUpdateController;->submitRequest(Lcom/audible/relationship/domain/RelationshipRequest;)V

    return-void
.end method

.method public onSuccess(Lcom/audible/relationship/domain/RelationshipRequest;)V
    .locals 3

    const-string v0, "request can\'t be null"

    .line 108
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/audible/relationship/controller/RelationshipUpdateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is success."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->requestStorage:Lcom/audible/relationship/db/IRelationshipRequestStorage;

    invoke-interface {v0, p1}, Lcom/audible/relationship/db/IRelationshipRequestStorage;->removeRequest(Lcom/audible/relationship/domain/RelationshipRequest;)Z

    return-void
.end method

.method public retry()V
    .locals 4

    .line 77
    sget-object v0, Lcom/audible/relationship/controller/RelationshipUpdateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Loading failure requests"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->requestStorage:Lcom/audible/relationship/db/IRelationshipRequestStorage;

    invoke-interface {v0}, Lcom/audible/relationship/db/IRelationshipRequestStorage;->getAllRequests()Ljava/util/List;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/audible/relationship/controller/RelationshipUpdateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "There are %s failure requests"

    invoke-interface {v1, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/relationship/domain/RelationshipRequest;

    .line 83
    invoke-virtual {v1}, Lcom/audible/relationship/domain/RelationshipRequest;->getType()Lcom/audible/relationship/domain/RelationshipRequest$Type;

    move-result-object v2

    .line 84
    sget-object v3, Lcom/audible/relationship/controller/RelationshipUpdateController$1;->$SwitchMap$com$audible$relationship$domain$RelationshipRequest$Type:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;->CompanionMapping_AsinPairRequestRetry:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->OCCURRED:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v2, v3}, Lcom/audible/relationship/controller/RelationshipUpdateController;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    goto :goto_1

    .line 86
    :cond_1
    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;->CompanionMapping_PagingRequestRetry:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->OCCURRED:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-direct {p0, v2, v3}, Lcom/audible/relationship/controller/RelationshipUpdateController;->reportCounterMetric(Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingMetricKey;Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;)V

    .line 94
    :goto_1
    iget-object v2, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->commandFactory:Lcom/audible/relationship/controller/IRelationshipCommandFactory;

    invoke-interface {v3, v1, p0}, Lcom/audible/relationship/controller/IRelationshipCommandFactory;->createCommand(Lcom/audible/relationship/domain/RelationshipRequest;Lcom/audible/relationship/controller/IRelationshipUpdateCallback;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public submitRequest(Lcom/audible/relationship/domain/RelationshipRequest;)V
    .locals 3

    const-string v0, "request can\'t be null"

    .line 67
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/audible/relationship/controller/RelationshipUpdateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accepting request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->requestStorage:Lcom/audible/relationship/db/IRelationshipRequestStorage;

    invoke-interface {v0, p1}, Lcom/audible/relationship/db/IRelationshipRequestStorage;->addRequest(Lcom/audible/relationship/domain/RelationshipRequest;)Z

    .line 71
    iget-object v0, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/audible/relationship/controller/RelationshipUpdateController;->commandFactory:Lcom/audible/relationship/controller/IRelationshipCommandFactory;

    invoke-interface {v1, p1, p0}, Lcom/audible/relationship/controller/IRelationshipCommandFactory;->createCommand(Lcom/audible/relationship/domain/RelationshipRequest;Lcom/audible/relationship/controller/IRelationshipUpdateCallback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
