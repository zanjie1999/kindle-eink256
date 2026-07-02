.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ConnectionFailureExceptionWJErrorMapper;
.super Ljava/lang/Object;
.source "ConnectionFailureExceptionWJErrorMapper.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBLETransportOperationErrorDetailsProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ConnectionFailureExceptionWJErrorMapper;->mBLETransportOperationErrorDetailsProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;

    return-void
.end method


# virtual methods
.method public map(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 25
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/UnableToEstablishConnectionException;

    if-eqz v0, :cond_2

    .line 26
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/UnableToEstablishConnectionException;

    .line 28
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/UnableToEstablishConnectionException;->getFailureCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 31
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ConnectionFailureExceptionWJErrorMapper;->mBLETransportOperationErrorDetailsProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;->getDetails(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;)I

    move-result p1

    goto :goto_0

    .line 33
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;

    if-eqz v0, :cond_1

    .line 34
    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/GattConnectionError;->getGattStatusCode()I

    move-result p1

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CommonErrorDetailsProvider;->getCommonErrorDetails(Ljava/lang/Throwable;)I

    move-result p1

    .line 38
    :goto_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Connection;->unableToEstablishConnection(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 39
    :cond_2
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/UnexpectedConnectionFailure;

    if-eqz v0, :cond_3

    .line 40
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/UnexpectedConnectionFailure;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/UnexpectedConnectionFailure;->getGattStatus()I

    move-result p1

    .line 41
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Connection;->unexpectedConnectionDrop(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected ConnectionFailureException"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 0

    .line 16
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ConnectionFailureExceptionWJErrorMapper;->map(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method
