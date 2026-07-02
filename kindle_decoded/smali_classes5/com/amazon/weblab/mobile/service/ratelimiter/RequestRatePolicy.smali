.class interface abstract Lcom/amazon/weblab/mobile/service/ratelimiter/RequestRatePolicy;
.super Ljava/lang/Object;
.source "RequestRatePolicy.java"


# virtual methods
.method public abstract allowRequest(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;)Z
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
.end method

.method public abstract historySizeRequired()I
.end method

.method public abstract isPolicyApplicable(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;)Z
.end method
