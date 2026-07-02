.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CommonErrorDetailsProvider;
.super Ljava/lang/Object;
.source "CommonErrorDetailsProvider.java"


# direct methods
.method public static getCommonErrorDetails(Ljava/lang/Throwable;)I
    .locals 1

    .line 16
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_0

    .line 17
    sget p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/CommonErrorDetails;->TIMEOUT_EXCEPTION:I

    return p0

    .line 18
    :cond_0
    instance-of v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    if-eqz v0, :cond_1

    .line 19
    sget p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/CommonErrorDetails;->SERIALIZATION_ERROR:I

    return p0

    .line 20
    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_2

    .line 21
    sget p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/CommonErrorDetails;->ILLEGAL_STATE_EXCEPTION:I

    return p0

    .line 22
    :cond_2
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_3

    .line 23
    sget p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/CommonErrorDetails;->ILLEGAL_ARGUMENT_EXCEPTION:I

    return p0

    .line 24
    :cond_3
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_4

    .line 25
    sget p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/CommonErrorDetails;->IO_EXCEPTION:I

    return p0

    .line 26
    :cond_4
    instance-of p0, p0, Ljava/lang/NullPointerException;

    if-eqz p0, :cond_5

    .line 27
    sget p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/CommonErrorDetails;->NULL_POINTER_EXCEPTION:I

    return p0

    .line 29
    :cond_5
    sget p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/CommonErrorDetails;->UNKNOWN:I

    return p0
.end method
