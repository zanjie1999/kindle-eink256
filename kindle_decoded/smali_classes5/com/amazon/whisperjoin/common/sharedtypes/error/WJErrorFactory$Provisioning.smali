.class public Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;
.super Ljava/lang/Object;
.source "WJErrorFactory.java"


# direct methods
.method private static create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;ILcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 178
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->PROVISIONING_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->getNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->getNumber()I

    move-result p0

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->getNumber()I

    move-result p2

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(IIII)V

    return-object v0
.end method

.method private static create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 170
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->PROVISIONING_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->getNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->getNumber()I

    move-result p0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->getNumber()I

    move-result p1

    invoke-direct {v0, v1, p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(III)V

    return-object v0
.end method

.method private static create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Ljava/lang/Integer;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 174
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->PROVISIONING_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->getNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->getNumber()I

    move-result p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->getNumber()I

    move-result p2

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(IIII)V

    return-object v0
.end method

.method public static noAssociatedDeviceCredentials()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 162
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->NO_ASSOCIATED_DEVICE_CREDENTIALS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CLIENT_APPLICATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static noConfiguredNetworks()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 90
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->NO_CONFIGURED_NETWORKS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CUSTOMER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static provisioningDoneFailure(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 146
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_DONE_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;ILcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static provisioningVerificationTimeout()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 150
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_VERIFICATION_TIMEOUT:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static registrationErrorFailedOther(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 138
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_FAILED_OTHER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Ljava/lang/Integer;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static registrationErrorServerError(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 134
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_SERVER_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Ljava/lang/Integer;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static registrationErrorServerNotReachable(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 130
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_SERVER_NOT_REACHABLE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Ljava/lang/Integer;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static registrationErrorTokenExpired(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 126
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_TOKEN_EXPIRED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Ljava/lang/Integer;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static registrationErrorTokenInvalid(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 122
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Ljava/lang/Integer;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static registrationUnknownError(Ljava/lang/Integer;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 142
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_UNKNOWN_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Ljava/lang/Integer;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static wifiConnectionErrorApNotFound()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 110
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_AP_NOT_FOUND:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CUSTOMER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static wifiConnectionErrorBadPsk()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 94
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_BAD_PSK:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CUSTOMER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static wifiConnectionErrorCaptivePortal()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 102
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_CAPTIVE_PORTAL:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CUSTOMER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static wifiConnectionErrorInternalError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 98
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_INTERNAL_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CUSTOMER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static wifiConnectionErrorLimitedConnectivity()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 106
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_LIMITED_CONNECTIVITY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CUSTOMER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static wifiConnectionUnknownError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 114
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_UNKNOWN_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static wifiSyncAuthTokenFailedValidation()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 154
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_FAILURE_NETWORK_SYNC_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CLIENT_APPLICATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static wifiSyncAuthTokenNotFound()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 158
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_FAILURE_NETWORK_SYNC_TOKEN_NOT_FOUND:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CLIENT_APPLICATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method
