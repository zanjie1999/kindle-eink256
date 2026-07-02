.class public Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;
.super Ljava/lang/Object;
.source "RequestsRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RecordLimiter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClientIdentifier:Ljava/lang/String;

.field private mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

.field private mGetTreatmentAssignmentHistoryEntries:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;

.field private final mRequestRatePolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mRequestRatePolicies:Ljava/util/List;

    .line 117
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->initializePolicies(Ljava/util/List;)V

    .line 118
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->initializeHistoryEntries()V

    .line 119
    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mClientIdentifier:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized evaluateIfRequestIsAllowed(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mGetTreatmentAssignmentHistoryEntries:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;->allowRequest(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " rejected the request"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/weblab/mobile/MobileWeblabMetricNames;->policyDeniedRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mClientIdentifier:Ljava/lang/String;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2, v0, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->incrementPeriodicMetric(Ljava/lang/String;Ljava/lang/String;D)V

    .line 150
    new-instance p1, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " rejected the request"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$AllowAllRequestRatePolicy;

    if-eq p1, p2, :cond_2

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " allowed the request"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/weblab/mobile/MobileWeblabMetricNames;->policyAllowRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mClientIdentifier:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initializeHistoryEntries()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mRequestRatePolicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    .line 139
    invoke-interface {v2}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;->historySizeRequired()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;

    invoke-direct {v0, v1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mGetTreatmentAssignmentHistoryEntries:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;

    return-void
.end method

.method private initializePolicies(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mRequestRatePolicies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    new-instance p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$AllowAllRequestRatePolicy;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$AllowAllRequestRatePolicy;-><init>(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;)V

    .line 130
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mRequestRatePolicies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    return-void
.end method

.method private requestAndUpdatePolicies(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation<",
            "TT;>;",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->ERROR:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    .line 162
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation;->enact()Ljava/lang/Object;

    move-result-object p1

    .line 163
    sget-object v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->SUCCESSFUL:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;
    :try_end_0
    .catch Lcom/amazon/weblab/mobile/service/ThrottledServiceCallException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/weblab/mobile/service/InternalServerErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->updateRateLimitPolicy(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;Lcom/amazon/weblab/mobile/service/ServiceCallStatus;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    :try_start_1
    sget-object v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->INTERNAL_SERVER_ERROR:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    .line 170
    throw p1

    :catch_1
    move-exception p1

    .line 166
    sget-object v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->THROTTLED:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    .line 167
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :goto_0
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->updateRateLimitPolicy(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;Lcom/amazon/weblab/mobile/service/ServiceCallStatus;)V

    .line 173
    throw p1
.end method

.method private declared-synchronized updateRateLimitPolicy(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;Lcom/amazon/weblab/mobile/service/ServiceCallStatus;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/weblab/mobile/service/ServiceCallStatus;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mGetTreatmentAssignmentHistoryEntries:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;

    new-instance v8, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;-><init>(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;Lcom/amazon/weblab/mobile/service/ServiceCallStatus;J)V

    invoke-virtual {v0, v8}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->addEntry(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;)V

    .line 178
    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mRequestRatePolicies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    .line 179
    iget-object p3, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mGetTreatmentAssignmentHistoryEntries:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;

    invoke-interface {p2, p3}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;->isPolicyApplicable(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 180
    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " policy was applied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$AllowAllRequestRatePolicy;

    if-eq p1, p2, :cond_1

    .line 183
    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mCurrentPolicy:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/weblab/mobile/MobileWeblabMetricNames;->policyApplied(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->mClientIdentifier:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method checkAndSendRequest(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation<",
            "TT;>;",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 123
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->evaluateIfRequestIsAllowed(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)V

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->requestAndUpdatePolicies(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
