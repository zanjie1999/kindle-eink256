.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/PresenterValidator;
.super Ljava/lang/Object;
.source "PresenterValidator.java"


# direct methods
.method public static validatePreconditions(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 21
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 24
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 27
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 30
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getCustomerEcid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getMarketplace()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;

    const-string v0, "Marketplace must be set"

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_1
    new-instance p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;

    const-string v0, "Customer ecid must be set"

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_2
    new-instance p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;

    const-string v0, "Provisioner DSN must be set"

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_3
    new-instance p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;

    const-string v0, "Device manufacturer must be set"

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_4
    new-instance p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;

    const-string v0, "Device firmware version must be set"

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_5
    new-instance p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;

    const-string v0, "Device model must be set"

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_6
    new-instance p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;

    const-string v0, "Client app version must be set"

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_7
    new-instance p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;

    const-string v0, "Client app name must be set"

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PresenterInitializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
