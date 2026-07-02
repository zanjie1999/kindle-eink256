.class Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;
.super Ljava/lang/Object;
.source "ExponentialBackoffRequestRatePolicy.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;


# static fields
.field private static final MAX_JITTER_TIME_IN_SECONDS:I = 0x3c

.field private static final MAX_WAIT_TIME_IN_SECONDS:I = 0xe10

.field private static final MIN_WAIT_TIME_IN_SECONDS:I = 0x2


# instance fields
.field private mJitterTimeSeconds:I

.field private mWaitPeriodSeconds:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;->getJitterTimeInSeconds()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;->mJitterTimeSeconds:I

    const/4 p1, 0x2

    .line 34
    iput p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;->mWaitPeriodSeconds:I

    return-void
.end method

.method private static getJitterTimeInSeconds()I
    .locals 2

    .line 82
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public allowRequest(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;",
            ")Z"
        }
    .end annotation

    .line 42
    invoke-virtual {p4}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->getHistoryEntries()Ljava/util/List;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->getElapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 46
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->getServiceCallStatus()Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    move-result-object p1

    sget-object p2, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->INTERNAL_SERVER_ERROR:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    if-ne p1, p2, :cond_1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;->mWaitPeriodSeconds:I

    iget p4, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;->mJitterTimeSeconds:I

    add-int/2addr p2, p4

    int-to-long v2, p2

    .line 47
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    cmp-long p4, v0, p1

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    iget p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;->mWaitPeriodSeconds:I

    mul-int/lit8 p1, p1, 0x2

    const/16 p2, 0xe10

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;->mWaitPeriodSeconds:I

    :goto_1
    return p3
.end method

.method public historySizeRequired()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPolicyApplicable(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;)Z
    .locals 3

    .line 57
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->getHistoryEntries()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;

    .line 62
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->getServiceCallStatus()Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    move-result-object p1

    sget-object v1, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->INTERNAL_SERVER_ERROR:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 66
    iput p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/ExponentialBackoffRequestRatePolicy;->mWaitPeriodSeconds:I

    :cond_2
    :goto_0
    return v0
.end method
