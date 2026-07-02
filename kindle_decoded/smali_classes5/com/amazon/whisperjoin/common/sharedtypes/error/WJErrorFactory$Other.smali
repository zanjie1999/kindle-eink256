.class public Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Other;
.super Ljava/lang/Object;
.source "WJErrorFactory.java"


# direct methods
.method private static create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 3

    .line 353
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->OTHER_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->getNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;->getNumber()I

    move-result p0

    sget-object v2, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->getNumber()I

    move-result v2

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(IIII)V

    return-object v0
.end method

.method public static unknown(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 348
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;->UNKNOWN_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Other;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p0

    return-object p0
.end method
