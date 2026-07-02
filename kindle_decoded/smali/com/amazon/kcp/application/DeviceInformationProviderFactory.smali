.class public Lcom/amazon/kcp/application/DeviceInformationProviderFactory;
.super Ljava/lang/Object;
.source "DeviceInformationProviderFactory.java"


# direct methods
.method public static getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceInformationProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    return-object v0
.end method
