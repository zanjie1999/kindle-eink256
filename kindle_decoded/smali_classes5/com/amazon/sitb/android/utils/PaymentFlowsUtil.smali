.class public Lcom/amazon/sitb/android/utils/PaymentFlowsUtil;
.super Ljava/lang/Object;
.source "PaymentFlowsUtil.java"


# direct methods
.method public static shouldUsePaymentFlows()Z
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
