.class Lcom/amazon/weblab/mobile/repository/BytesUtils;
.super Ljava/lang/Object;
.source "BytesUtils.java"


# static fields
.field private static final RADIX:I = 0xa


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findEndOfNumeric([BI)I
    .locals 2

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 288
    :cond_0
    :goto_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_3

    .line 289
    aget-byte v0, p1, p2

    sget-byte v1, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->ZERO:B

    if-lt v0, v1, :cond_2

    aget-byte v0, p1, p2

    sget-byte v1, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->NINE:B

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    return p2
.end method

.method private findEndPositionOfString([B[BII)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    .line 202
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BII)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findStartPositionOfString([B[BII)I

    move-result p1

    if-ne p1, v0, :cond_1

    return v0

    .line 210
    :cond_1
    array-length p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private findStartPositionOfString([B[BII)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p2, :cond_3

    .line 223
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BII)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 229
    :cond_0
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge p3, p4, :cond_3

    .line 231
    aget-byte v4, p2, v3

    aget-byte v5, p1, p3

    if-ne v4, v5, :cond_2

    if-ne v3, v1, :cond_1

    sub-int/2addr p3, v1

    return p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method private getLongFromRange([BII)J
    .locals 8

    .line 308
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BII)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    :goto_0
    if-gt p2, p3, :cond_1

    sub-int v0, p3, p2

    .line 315
    aget-byte v3, p1, p2

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(II)I

    move-result v3

    long-to-double v1, v1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v0

    .line 316
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v3

    mul-double v4, v4, v6

    add-double/2addr v1, v4

    double-to-long v1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method private getRangeOfStringValue([B[BII)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findEndPositionOfString([B[BII)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    add-int/lit8 p2, p2, 0x3

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BI)Z

    move-result p4

    if-nez p4, :cond_1

    .line 81
    sget-byte p4, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->QUOTE:B

    invoke-virtual {p0, p1, p4, p2}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findNextDelimiter([BBI)I

    move-result p1

    if-eq p1, p3, :cond_0

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    const/4 p4, 0x2

    new-array p4, p4, [I

    const/4 v0, 0x0

    aput p2, p4, v0

    aput p1, p4, p3

    return-object p4

    .line 83
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Value not found"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Malformed JSON"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_2
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Property not found"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_3
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Index out of bounds"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method findEndPositionOfString([B[BI)I
    .locals 1

    .line 190
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findEndPositionOfString([B[BII)I

    move-result p1

    return p1
.end method

.method findNextDelimiter([BBI)I
    .locals 2

    .line 259
    invoke-virtual {p0, p1, p3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BI)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 264
    :cond_0
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_2

    .line 265
    aget-byte v0, p1, p3

    if-ne v0, p2, :cond_1

    return p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method getBooleanValue([B[BI)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Property not found"

    if-eqz p2, :cond_4

    .line 126
    invoke-virtual {p0, p1, p3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BI)Z

    move-result v1

    if-nez v1, :cond_4

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findEndPositionOfString([B[BI)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3

    add-int/lit8 p2, p2, 0x2

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BI)Z

    move-result p3

    const-string v0, "Value not found"

    if-nez p3, :cond_2

    .line 144
    aget-byte p3, p1, p2

    sget-byte v1, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->TRUE_PREFIX:B

    if-ne p3, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_0
    aget-byte p1, p1, p2

    sget-byte p2, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->FALSE_PREFIX:B

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_2
    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_3
    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_4
    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getLongValue([B[BI)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Property not found"

    if-eqz p2, :cond_2

    .line 161
    invoke-virtual {p0, p1, p3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BI)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findEndPositionOfString([B[BI)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    add-int/lit8 p2, p2, 0x2

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->findEndOfNumeric([BI)I

    move-result p3

    .line 175
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getLongFromRange([BII)J

    move-result-wide p1

    return-wide p1

    .line 176
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Value not found"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_2
    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getRangeOfStringValue([B[BI)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 51
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getRangeOfStringValue([B[BII)[I

    move-result-object p1

    return-object p1
.end method

.method getStringFromRange([B[I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isInvalidRange([B[I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 38
    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    add-int/2addr p2, v1

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 39
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2

    .line 33
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Index out of bounds"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getStringValue([B[BI)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 98
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getStringValue([B[BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getStringValue([B[BII)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getRangeOfStringValue([B[BII)[I

    move-result-object p2

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getStringFromRange([B[I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Value not found"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method isInvalidRange([B[I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 350
    array-length v2, p2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget v2, p2, v0

    aget p2, p2, v1

    invoke-virtual {p0, p1, v2, p2}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->isOutOfBounds([BII)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isOutOfBounds([BI)Z
    .locals 0

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    .line 329
    array-length p1, p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method isOutOfBounds([BII)Z
    .locals 0

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    .line 340
    array-length p1, p1

    if-ge p3, p1, :cond_1

    if-le p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
