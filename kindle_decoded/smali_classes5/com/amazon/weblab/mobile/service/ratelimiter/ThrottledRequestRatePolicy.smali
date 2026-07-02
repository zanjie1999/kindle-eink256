.class Lcom/amazon/weblab/mobile/service/ratelimiter/ThrottledRequestRatePolicy;
.super Ljava/lang/Object;
.source "ThrottledRequestRatePolicy.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;


# static fields
.field private static final COOLDOWN_JITTER_TIME_IN_MINUTES:I = 0x3c

.field private static final MIMIMUM_COOLDOWN_TIME_IN_MINUTES:I = 0x3c


# instance fields
.field private final mCoolDownPeriodInMinutes:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/amazon/weblab/mobile/service/ratelimiter/ThrottledRequestRatePolicy;->getCoolDownPeriodInMinutes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/weblab/mobile/service/ratelimiter/ThrottledRequestRatePolicy;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/ThrottledRequestRatePolicy;->mCoolDownPeriodInMinutes:I

    return-void
.end method

.method private static getCoolDownPeriodInMinutes()I
    .locals 2

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3c

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public allowRequest(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;)Z
    .locals 2
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

    .line 35
    invoke-virtual {p4}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->getHistoryEntries()Ljava/util/List;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;

    .line 37
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->getServiceCallStatus()Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    move-result-object p2

    sget-object p4, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->THROTTLED:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    if-eq p2, p4, :cond_0

    return p3

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->getElapsedRealtime()J

    move-result-wide p1

    .line 41
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/ThrottledRequestRatePolicy;->mCoolDownPeriodInMinutes:I

    int-to-long v0, v0

    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long p4, p1, v0

    if-gez p4, :cond_1

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public historySizeRequired()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPolicyApplicable(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;)Z
    .locals 3

    .line 49
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->getHistoryEntries()Ljava/util/List;

    move-result-object p1

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 53
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;

    .line 54
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;->getServiceCallStatus()Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    move-result-object p1

    sget-object v0, Lcom/amazon/weblab/mobile/service/ServiceCallStatus;->THROTTLED:Lcom/amazon/weblab/mobile/service/ServiceCallStatus;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
