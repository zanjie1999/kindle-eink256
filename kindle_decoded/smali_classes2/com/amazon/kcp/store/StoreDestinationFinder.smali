.class public Lcom/amazon/kcp/store/StoreDestinationFinder;
.super Ljava/lang/Object;
.source "StoreDestinationFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;,
        Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;
    }
.end annotation


# direct methods
.method public static getStoreDestination(Landroid/content/Context;)Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;
    .locals 3

    .line 55
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 56
    sget-object p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->RETAIL_WEB:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    return-object p0

    .line 59
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p0, v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 61
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 64
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 65
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getDisplayDiagnonal()F

    move-result v1

    invoke-static {v1}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->getStoreFormFactor(F)Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    move-result-object v1

    .line 67
    sget-object v2, Lcom/amazon/kcp/store/StoreDestinationFinder$1;->$SwitchMap$com$amazon$kcp$store$StoreDestinationFinder$StoreFormFactor:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v0, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    .line 78
    sget-object p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->TOS:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    return-object p0

    .line 84
    :cond_3
    :goto_1
    sget-object p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->RETAIL_WEB:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    return-object p0

    :cond_4
    if-eqz p0, :cond_5

    .line 72
    sget-object p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->TOS:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    return-object p0

    .line 74
    :cond_5
    sget-object p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->ANYWHERE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    return-object p0

    .line 69
    :cond_6
    sget-object p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->ANYWHERE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    return-object p0
.end method
