.class Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;
.super Ljava/lang/Object;
.source "RequestEntry.java"


# instance fields
.field private final mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

.field private final mElapsedRealtime:J

.field private final mServiceCallStatus:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

.field private final mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

.field private final mWeblabs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;Lcom/amazon/weblab/mobile/service/ServiceCallStatus;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/weblab/mobile/service/ServiceCallStatus;",
            "J)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    .line 23
    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    .line 24
    iput-object p3, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mWeblabs:Ljava/util/Collection;

    .line 25
    iput-object p4, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mServiceCallStatus:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    .line 26
    iput-wide p5, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mElapsedRealtime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 52
    const-class v2, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    check-cast p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;

    .line 56
    iget-wide v2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mElapsedRealtime:J

    iget-wide v4, p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mElapsedRealtime:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    iget-object v3, p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    invoke-virtual {v2, v3}, Lcom/amazon/weblab/mobile/model/SessionInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 58
    :cond_3
    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    iget-object v3, p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-virtual {v2, v3}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 59
    :cond_4
    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mWeblabs:Ljava/util/Collection;

    iget-object v3, p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mWeblabs:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 60
    :cond_5
    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mServiceCallStatus:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    iget-object p1, p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mServiceCallStatus:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    if-ne v2, p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public getElapsedRealtime()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mElapsedRealtime:J

    return-wide v0
.end method

.method public getServiceCallStatus()Lcom/amazon/weblab/mobile/service/ServiceCallStatus;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mServiceCallStatus:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/model/SessionInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mWeblabs:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mServiceCallStatus:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-wide v1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->mElapsedRealtime:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
