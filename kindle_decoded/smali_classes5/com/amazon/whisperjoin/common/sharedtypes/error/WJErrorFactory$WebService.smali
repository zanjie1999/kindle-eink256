.class public Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;
.super Ljava/lang/Object;
.source "WJErrorFactory.java"


# direct methods
.method public static computeConfigurationData(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 289
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->COMPUTE_CONFIGURATION_DATA:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 3

    .line 325
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->WEB_SERVICE_CALL_FAILUE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->getNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->getNumber()I

    move-result p0

    sget-object v2, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->getNumber()I

    move-result v2

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(IIII)V

    return-object v0
.end method

.method public static discoveredProvisionableDevice(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 277
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static discoveredProvisioneeDevice(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 313
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->DISCOVERED_PROVISIONEE_DEVICE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static finalizeEcdheAuthenticationSession(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 285
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->FINALIZE_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomerProvisioneesSetupStatus(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 309
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_CUSTOMER_PROVISIONEES_SETUP_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceRegistrationStatus(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 305
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_DEVICE_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static getWhiteListPolicy(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 301
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->GET_WHITELIST_POLICY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static reportEvent(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 293
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->REPORT_EVENT:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static startEcdheAuthenticationSession(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 281
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->START_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static unknown(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 321
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->UNKNOWN_WEB_SERVICE_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static validateWifiSyncAuthToken(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 317
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;->VALIDATE_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$WebService;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WebServiceErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method
