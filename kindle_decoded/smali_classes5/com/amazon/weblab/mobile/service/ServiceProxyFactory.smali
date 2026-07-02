.class public Lcom/amazon/weblab/mobile/service/ServiceProxyFactory;
.super Ljava/lang/Object;
.source "ServiceProxyFactory.java"


# direct methods
.method public static createServiceProxy(Lcom/amazon/weblab/mobile/service/ITriggerRequestListener;Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;)Lcom/amazon/weblab/mobile/service/IServiceProxy;
    .locals 2

    .line 25
    new-instance v0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;

    new-instance v1, Lcom/amazon/weblab/mobile/service/ServiceProxy;

    invoke-direct {v1, p1, p2, p0}, Lcom/amazon/weblab/mobile/service/ServiceProxy;-><init>(Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;Lcom/amazon/weblab/mobile/service/ITriggerRequestListener;)V

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;-><init>(Lcom/amazon/weblab/mobile/service/IServiceProxy;Ljava/lang/String;)V

    return-object v0
.end method
