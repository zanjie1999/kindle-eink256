.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisioningFailureWJErrorMapper;
.super Ljava/lang/Object;
.source "ProvisioningFailureWJErrorMapper.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mapRegistrationError(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 58
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->getHttpCode()Ljava/lang/Integer;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisioningFailureWJErrorMapper$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$data$registration$CBLRegistrationDetails$State:[I

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->getState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 71
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->registrationUnknownError(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->registrationErrorFailedOther(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 67
    :cond_1
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->registrationErrorServerNotReachable(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 65
    :cond_2
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->registrationErrorServerError(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 63
    :cond_3
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->registrationErrorTokenInvalid(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 61
    :cond_4
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->registrationErrorTokenExpired(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method

.method private mapWifiConnectionError(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisioningFailureWJErrorMapper$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$provisioning$data$wifi$WifiConnectionDetails$State:[I

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->getState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 53
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->wifiConnectionUnknownError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 51
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->wifiConnectionErrorApNotFound()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->wifiConnectionErrorLimitedConnectivity()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 47
    :cond_2
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->wifiConnectionErrorCaptivePortal()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 45
    :cond_3
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->wifiConnectionErrorInternalError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 43
    :cond_4
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->wifiConnectionErrorBadPsk()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public map(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 22
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/NoConfiguredWifiNetworksException;

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->noConfiguredNetworks()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisioningFailureWJErrorMapper;->mapWifiConnectionError(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 26
    :cond_1
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;

    if-eqz v0, :cond_2

    .line 27
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisioningFailureWJErrorMapper;->mapRegistrationError(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 28
    :cond_2
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;

    if-eqz v0, :cond_3

    .line 29
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;->getProvisioningFailure()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->provisioningDoneFailure(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 31
    :cond_3
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningVerificationTimeoutException;

    if-eqz v0, :cond_4

    .line 32
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->provisioningVerificationTimeout()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 33
    :cond_4
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/NoAssociatedDeviceCredentialsException;

    if-eqz v0, :cond_5

    .line 34
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->noAssociatedDeviceCredentials()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 36
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled ProvisioningFailureException"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 0

    .line 18
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisioningFailureWJErrorMapper;->map(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method
