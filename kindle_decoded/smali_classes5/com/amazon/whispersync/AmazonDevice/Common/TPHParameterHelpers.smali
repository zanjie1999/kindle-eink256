.class public final Lcom/amazon/whispersync/AmazonDevice/Common/TPHParameterHelpers;
.super Ljava/lang/Object;
.source "TPHParameterHelpers.java"


# static fields
.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final MAX_ADDR_VAL:I = 0xff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMacAddressStringToBytes(Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x6

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x2

    .line 29
    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xff

    if-gt v5, v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-array p0, v0, [B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-array p0, v0, [B

    return-object p0

    :cond_3
    return-object v2

    :cond_4
    :goto_2
    new-array p0, v0, [B

    return-object p0
.end method
