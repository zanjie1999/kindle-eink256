.class Lcom/amazon/weblab/mobile/WeblabBase;
.super Ljava/lang/Object;
.source "WeblabBase.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/IMobileWeblab;


# instance fields
.field private mClientIdentifier:Ljava/lang/String;

.field private mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mProxy:Lcom/amazon/weblab/mobile/service/IServiceProxy;

.field private mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

.field private mTreatment:Lcom/amazon/weblab/mobile/model/TreatmentAssignment;


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/concurrent/ExecutorService;Lcom/amazon/weblab/mobile/service/IServiceProxy;Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    .line 61
    invoke-interface {p4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 67
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mTreatment:Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 71
    iput-object p2, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    .line 72
    iput-object p3, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    .line 73
    iput-object p4, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 74
    iput-object p5, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mProxy:Lcom/amazon/weblab/mobile/service/IServiceProxy;

    .line 75
    iput-object p6, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mClientIdentifier:Ljava/lang/String;

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clientIdentifier can\'t be null nor empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "proxy can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor can\'t be shut down"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "customer can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "session can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "treatment can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/weblab/mobile/WeblabBase;)Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/WeblabBase;->recordTriggerImpl()Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    move-result-object p0

    return-object p0
.end method

.method private recordTriggerImpl()Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mTreatment:Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;->OVERRIDDEN_LOCALLY:Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    const-string v1, "WeblabBaseRecordTriggerOverridenLocally"

    .line 84
    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mClientIdentifier:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mTreatment:Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->canTrigger()Z

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_1

    .line 87
    sget-object v0, Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;->OVERRIDDEN:Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    const-string v3, "WeblabBaseRecordTriggerOverriden"

    .line 88
    iget-object v4, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mClientIdentifier:Ljava/lang/String;

    invoke-static {v3, v4, v1, v2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->incrementPeriodicMetric(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mProxy:Lcom/amazon/weblab/mobile/service/IServiceProxy;

    iget-object v3, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mTreatment:Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    new-instance v5, Lcom/amazon/weblab/mobile/model/CustomerInfo;

    iget-object v6, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-virtual {v6}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->getDirectedId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/amazon/weblab/mobile/model/CustomerInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/weblab/mobile/service/IServiceProxy;->recordTrigger(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    move-result-object v0

    const-string v3, "PeriodicWeblabBaseRecordTriggerSuccess"

    .line 92
    iget-object v4, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mClientIdentifier:Ljava/lang/String;

    invoke-static {v3, v4, v1, v2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->incrementPeriodicMetric(Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Lcom/amazon/weblab/mobile/model/MobileWeblabException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mClientIdentifier:Ljava/lang/String;

    const-string v3, "WeblabBaseRecordTriggerFailure"

    invoke-static {v3, v1, v2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 97
    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mTreatment:Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTreatmentAndRecordTrigger()Lcom/amazon/weblab/mobile/IMobileWeblabTreatmentAndTriggerResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabBase;->getTreatmentAndRecordTrigger()Lcom/amazon/weblab/mobile/MobileWeblabTreatmentAndTriggerResult;

    move-result-object v0

    return-object v0
.end method

.method public getTreatmentAndRecordTrigger()Lcom/amazon/weblab/mobile/MobileWeblabTreatmentAndTriggerResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/amazon/weblab/mobile/MobileWeblabTreatmentAndTriggerResult;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mTreatment:Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getTreatment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabBase;->recordTrigger()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/weblab/mobile/MobileWeblabTreatmentAndTriggerResult;-><init>(Ljava/lang/String;Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getTreatmentAssignment()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mTreatment:Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getTreatment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recordTrigger()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/weblab/mobile/WeblabBase$1;

    invoke-direct {v1, p0}, Lcom/amazon/weblab/mobile/WeblabBase$1;-><init>(Lcom/amazon/weblab/mobile/WeblabBase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
