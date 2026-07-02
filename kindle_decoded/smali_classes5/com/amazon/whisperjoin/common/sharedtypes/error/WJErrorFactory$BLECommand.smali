.class public Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;
.super Ljava/lang/Object;
.source "WJErrorFactory.java"


# direct methods
.method public static completeProvisioning(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 247
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 3

    .line 263
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->BLE_COMMAND_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->getNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->getNumber()I

    move-result p0

    sget-object v2, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->getNumber()I

    move-result v2

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(IIII)V

    return-object v0
.end method

.method public static exchangeAuthEcdheKey(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 199
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->EXCHANGE_AUTH_ECDHE_KEY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeEcdheKey(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 195
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->EXCHANGE_ECDHE_KEY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static getConnectionStatus(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 231
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_CONNECTION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceDetails(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 223
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static getRegistrationStatus(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 243
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedNotifications(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 251
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_SUPPORTED_NOTIFICATIONS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static getVisibleNetworks(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 219
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static jpakeRound1(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 203
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_ROUND_1:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static jpakeRound2(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 207
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_ROUND_2:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static jpakeRound3(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 211
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_ROUND_3:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static jpakeRoundCertValidation(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 215
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_CERT_VALIDATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static saveNetwork(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 227
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->SAVE_NETWORK:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static setConfiguration(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 235
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->SET_CONFIGURATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static setRegistrationToken(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 239
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static unknown(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 259
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->UNKNOWN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method
