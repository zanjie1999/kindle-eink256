.class public Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;
.super Ljava/lang/Object;
.source "EncodingHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$CommandInformation;
    }
.end annotation


# static fields
.field private static final MAX_BYTE_VALUE:I = 0xff

.field private static final MAX_COMMAND_LENGTH:I = 0x40

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCommand([B)Ljava/lang/String;
    .locals 4

    .line 93
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;->getCommandSize([B)B

    move-result v0

    .line 95
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p1, v3, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private getCommandSize([B)B
    .locals 2

    .line 128
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 131
    aget-byte v0, p1, v0

    add-int/lit8 v1, v0, 0x1

    .line 133
    array-length p1, p1

    if-lt p1, v1, :cond_0

    return v0

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "command size is larger than buffer size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "messageBuffer not large enough to have a command"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getPayload([B)[B
    .locals 2

    .line 108
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;->getCommandSize([B)B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 110
    array-length v1, p1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_0
    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 116
    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "command size is larger than message size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decodeCommand([B)Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$CommandInformation;
    .locals 2

    if-eqz p1, :cond_1

    .line 62
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 65
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;->getCommand([B)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;->getPayload([B)[B

    move-result-object p1

    .line 72
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$1;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;Ljava/lang/String;[B)V

    return-object v1

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "message is too small for a command"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "data is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
