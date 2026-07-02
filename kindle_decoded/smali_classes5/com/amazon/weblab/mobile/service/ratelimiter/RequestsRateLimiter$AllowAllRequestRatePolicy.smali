.class Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$AllowAllRequestRatePolicy;
.super Ljava/lang/Object;
.source "RequestsRateLimiter.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllowAllRequestRatePolicy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$AllowAllRequestRatePolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public allowRequest(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;)Z
    .locals 0
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

    const/4 p1, 0x1

    return p1
.end method

.method public historySizeRequired()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPolicyApplicable(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
