.class public final Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;
.super Ljava/lang/Object;
.source "RequestsRateLimiter.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/service/IServiceProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation;,
        Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;,
        Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$AllowAllRequestRatePolicy;
    }
.end annotation


# instance fields
.field private final mServiceProxy:Lcom/amazon/weblab/mobile/service/IServiceProxy;

.field private final recordLimiterGA:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter<",
            "Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final recordLimiterRT:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter<",
            "Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/weblab/mobile/service/IServiceProxy;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-static {}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->createRatePoliciesOrderedByPriority()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;-><init>(Lcom/amazon/weblab/mobile/service/IServiceProxy;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/weblab/mobile/service/IServiceProxy;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/service/IServiceProxy;",
            "Ljava/util/List<",
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->mServiceProxy:Lcom/amazon/weblab/mobile/service/IServiceProxy;

    .line 44
    new-instance p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;

    invoke-direct {p1, p2, p3}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->recordLimiterGA:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;

    .line 45
    new-instance p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;

    invoke-direct {p1, p2, p3}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->recordLimiterRT:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;)Lcom/amazon/weblab/mobile/service/IServiceProxy;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->mServiceProxy:Lcom/amazon/weblab/mobile/service/IServiceProxy;

    return-object p0
.end method

.method private static createRatePoliciesOrderedByPriority()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    new-instance v1, Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;

    invoke-direct {v1}, Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lcom/amazon/weblab/mobile/service/ratelimiter/ThrottledRequestRatePolicy;

    invoke-direct {v1}, Lcom/amazon/weblab/mobile/service/ratelimiter/ThrottledRequestRatePolicy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private validateParams(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)V
    .locals 1
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

    const-string v0, "Session can\'t be null"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Weblab list can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getTreatmentAssignments(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->validateParams(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->recordLimiterGA:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;

    new-instance v1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;-><init>(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)V

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->checkAndSendRequest(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;

    return-object p1
.end method

.method public recordTrigger(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p2, p3, v1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->validateParams(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)V

    .line 72
    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->recordLimiterRT:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;

    new-instance v2, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;-><init>(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)V

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$RecordLimiter;->checkAndSendRequest(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    return-object p1
.end method
