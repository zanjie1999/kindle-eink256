.class public Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Connection;
.super Ljava/lang/Object;
.source "WJErrorFactory.java"


# direct methods
.method private static create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 76
    sget v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/CommonErrorDetails;->NONE:I

    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Connection;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 3

    .line 80
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->CONNECTION_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->getNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->getNumber()I

    move-result p0

    sget-object v2, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->getNumber()I

    move-result v2

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(IIII)V

    return-object v0
.end method

.method public static startProvisioningRequestFailed()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 60
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->START_PROVISIONING_REQUEST_FAILED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Connection;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static unableToEstablishConnection(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->UNABLE_TO_ESTABLISH_CONNECTION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Connection;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method

.method public static unableToEstablishSecureChannel()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->UNABLE_TO_ESTABLISH_SECURE_CHANNEL:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Connection;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static unexpectedConnectionDrop(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 68
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->UNEXPECTED_CONNECTION_DROP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Connection;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method
