.class public Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Precondition;
.super Ljava/lang/Object;
.source "WJErrorFactory.java"


# direct methods
.method public static bluetoothLowEnergyNotSupported()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 21
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->BLUETOOTH_LOW_ENERGY_NOT_SUPPORTED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->UNRESOLVABLE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Precondition;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static bluetoothNotEnabled()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 17
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->BLUETOOTH_NOT_ENABLED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CLIENT_APPLICATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Precondition;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method private static create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 37
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->PRECONDITION_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->getNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->getNumber()I

    move-result p0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->getNumber()I

    move-result p1

    invoke-direct {v0, v1, p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(III)V

    return-object v0
.end method

.method public static requiredPermissionsNotGranted()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 29
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->REQUIRED_PERMISSIONS_NOT_GRANTED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CLIENT_APPLICATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Precondition;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method
