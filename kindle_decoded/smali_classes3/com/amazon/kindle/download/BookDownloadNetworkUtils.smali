.class public final Lcom/amazon/kindle/download/BookDownloadNetworkUtils;
.super Ljava/lang/Object;
.source "BookDownloadNetworkUtils.java"


# direct methods
.method public static isNetworkAllowed(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Z
    .locals 4

    .line 45
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getDownloadBookNetworkMode()I

    move-result v0

    .line 46
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 55
    sget-object v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WAN:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    if-ne p0, v0, :cond_2

    invoke-interface {v1}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result p0

    xor-int/2addr v2, p0

    :cond_2
    :goto_0
    return v2
.end method
