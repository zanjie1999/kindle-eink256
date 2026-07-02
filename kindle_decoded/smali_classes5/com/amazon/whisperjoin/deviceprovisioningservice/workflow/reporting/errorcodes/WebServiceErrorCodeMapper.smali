.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WebServiceErrorCodeMapper;
.super Ljava/lang/Object;
.source "WebServiceErrorCodeMapper.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getErrorDetails(Ljava/lang/Throwable;)I
    .locals 1

    .line 50
    instance-of v0, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;

    const v0, 0x186a0

    .line 52
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->getErrorCode()I

    move-result p1

    :goto_0
    add-int/2addr p1, v0

    return p1

    .line 53
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/GetAccessTokenError;

    if-eqz v0, :cond_1

    .line 54
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/GetAccessTokenError;

    const v0, 0x30d40

    .line 55
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/GetAccessTokenError;->getErrorCode()I

    move-result p1

    goto :goto_0

    .line 56
    :cond_1
    instance-of v0, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/NoCustomerAccountFoundError;

    if-eqz v0, :cond_2

    const p1, 0x493e0

    return p1

    .line 59
    :cond_2
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CommonErrorDetailsProvider;->getCommonErrorDetails(Ljava/lang/Throwable;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public map(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 20
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->getOperation()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->getFailureCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WebServiceErrorCodeMapper;->getErrorDetails(Ljava/lang/Throwable;)I

    move-result p1

    .line 23
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WebServiceErrorCodeMapper$1;->$SwitchMap$com$amazon$whisperjoin$devicesetupserviceandroidclient$DSSOperation:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 45
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->unknown(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->validateWifiSyncAuthToken(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_1
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->getCustomerProvisioneesSetupStatus(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_2
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->getDeviceRegistrationStatus(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_3
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->getWhiteListPolicy(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_4
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->reportEvent(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_5
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->computeConfigurationData(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_6
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->finalizeEcdheAuthenticationSession(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_7
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->startEcdheAuthenticationSession(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_8
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->discoveredProvisioneeDevice(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_9
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->discoveredProvisionableDevice(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 0

    .line 16
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WebServiceErrorCodeMapper;->map(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method
