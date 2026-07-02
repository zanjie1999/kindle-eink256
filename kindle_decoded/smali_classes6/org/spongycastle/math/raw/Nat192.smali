.class public abstract Lorg/spongycastle/math/raw/Nat192;
.super Ljava/lang/Object;
.source "Nat192.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public static add([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 14
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 15
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 17
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 18
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 20
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 21
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 23
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 24
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 26
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 27
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 29
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 30
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static addBothTo([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 38
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 39
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 41
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 42
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 44
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 45
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 47
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 48
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 50
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 51
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 53
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 54
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static addTo([II[III)I
    .locals 9

    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p4, p1, 0x0

    .line 86
    aget p4, p0, p4

    int-to-long v4, p4

    and-long/2addr v4, v2

    add-int/lit8 p4, p3, 0x0

    aget v6, p2, p4

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 87
    aput v4, p2, p4

    const/16 p4, 0x20

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x1

    .line 89
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 90
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x2

    .line 92
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 93
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x3

    .line 95
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 96
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x4

    .line 98
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x4

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 99
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 p1, p1, 0x5

    .line 101
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x5

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr p0, v2

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 102
    aput p0, p2, p3

    ushr-long p0, v0, p4

    long-to-int p1, p0

    return p1
.end method

.method public static addToEachOther([II[II)I
    .locals 11

    add-int/lit8 v0, p1, 0x0

    .line 110
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 v5, p3, 0x0

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    const-wide/16 v6, 0x0

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 111
    aput v6, p0, v0

    .line 112
    aput v6, p2, v5

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x1

    .line 114
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x1

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 115
    aput v6, p0, v5

    .line 116
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x2

    .line 118
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x2

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 119
    aput v6, p0, v5

    .line 120
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x3

    .line 122
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x3

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 123
    aput v6, p0, v5

    .line 124
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x4

    .line 126
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x4

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 127
    aput v6, p0, v5

    .line 128
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 p1, p1, 0x5

    .line 130
    aget v5, p0, p1

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p3, p3, 0x5

    aget v7, p2, p3

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v3, v1

    .line 131
    aput v3, p0, p1

    .line 132
    aput v3, p2, p3

    ushr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static create()[I
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    return-object v0
.end method

.method public static diff([II[II[II)Z
    .locals 7

    .line 159
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat192;->gte([II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat192;->sub([II[II[II)I

    goto :goto_0

    :cond_0
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    .line 166
    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/raw/Nat192;->sub([II[II[II)I

    :goto_0
    return v0
.end method

.method public static eq([I[I)Z
    .locals 3

    const/4 v0, 0x5

    :goto_0
    if-ltz v0, :cond_1

    .line 175
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 4

    .line 185
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-gt v0, v1, :cond_1

    .line 190
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 192
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 194
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 195
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0

    .line 187
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getBit([II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 204
    aget p0, p0, v0

    :goto_0
    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_2

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    .line 212
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static gte([II[II)Z
    .locals 5

    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    add-int v2, p1, v0

    .line 233
    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p3, v0

    .line 234
    aget v4, p2, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static gte([I[I)Z
    .locals 5

    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 219
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 220
    aget v4, p1, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isOne([I)Z
    .locals 4

    const/4 v0, 0x0

    .line 245
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 251
    aget v3, p0, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isZero([I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 263
    aget v2, p0, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static mul([II[II[II)V
    .locals 28

    add-int/lit8 v0, p3, 0x0

    .line 330
    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    .line 331
    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    .line 332
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    .line 333
    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    .line 334
    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p3, 0x5

    .line 335
    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    add-int/lit8 v14, p1, 0x0

    .line 338
    aget v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    mul-long v16, v14, v0

    const-wide/16 v18, 0x0

    add-long v2, v16, v18

    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v22, v0

    long-to-int v0, v2

    .line 340
    aput v0, p4, v16

    const/16 v0, 0x20

    ushr-long v1, v2, v0

    mul-long v16, v14, v4

    add-long v1, v1, v16

    add-int/lit8 v3, p5, 0x1

    move-wide/from16 v16, v4

    long-to-int v4, v1

    .line 343
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v6

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x2

    long-to-int v4, v1

    .line 346
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v8

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x3

    long-to-int v4, v1

    .line 349
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v10

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x4

    long-to-int v4, v1

    .line 352
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v14, v14, v12

    add-long/2addr v1, v14

    add-int/lit8 v3, p5, 0x5

    long-to-int v4, v1

    .line 355
    aput v4, p4, v3

    ushr-long/2addr v1, v0

    add-int/lit8 v3, p5, 0x6

    long-to-int v2, v1

    .line 357
    aput v2, p4, v3

    const/4 v1, 0x1

    move/from16 v2, p5

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    add-int/2addr v2, v1

    add-int v4, p1, v3

    .line 363
    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v14, 0xffffffffL

    and-long/2addr v4, v14

    mul-long v20, v4, v22

    add-int/lit8 v24, v2, 0x0

    .line 364
    aget v1, p4, v24

    int-to-long v0, v1

    and-long/2addr v0, v14

    add-long v20, v20, v0

    add-long v0, v20, v18

    long-to-int v14, v0

    .line 365
    aput v14, p4, v24

    const/16 v14, 0x20

    ushr-long/2addr v0, v14

    mul-long v24, v4, v16

    add-int/lit8 v15, v2, 0x1

    .line 367
    aget v14, p4, v15

    move-wide/from16 v26, v12

    int-to-long v12, v14

    const-wide v20, 0xffffffffL

    and-long v12, v12, v20

    add-long v24, v24, v12

    add-long v0, v0, v24

    long-to-int v12, v0

    .line 368
    aput v12, p4, v15

    const/16 v12, 0x20

    ushr-long/2addr v0, v12

    mul-long v13, v4, v6

    add-int/lit8 v15, v2, 0x2

    .line 370
    aget v12, p4, v15

    move-wide/from16 v24, v6

    int-to-long v6, v12

    and-long v6, v6, v20

    add-long/2addr v13, v6

    add-long/2addr v0, v13

    long-to-int v6, v0

    .line 371
    aput v6, p4, v15

    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    mul-long v12, v4, v8

    add-int/lit8 v7, v2, 0x3

    .line 373
    aget v14, p4, v7

    int-to-long v14, v14

    and-long v14, v14, v20

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    long-to-int v12, v0

    .line 374
    aput v12, p4, v7

    ushr-long/2addr v0, v6

    mul-long v12, v4, v10

    add-int/lit8 v7, v2, 0x4

    .line 376
    aget v14, p4, v7

    int-to-long v14, v14

    and-long v14, v14, v20

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    long-to-int v12, v0

    .line 377
    aput v12, p4, v7

    ushr-long/2addr v0, v6

    mul-long v4, v4, v26

    add-int/lit8 v7, v2, 0x5

    .line 379
    aget v12, p4, v7

    int-to-long v12, v12

    and-long v12, v12, v20

    add-long/2addr v4, v12

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 380
    aput v4, p4, v7

    ushr-long/2addr v0, v6

    add-int/lit8 v4, v2, 0x6

    long-to-int v1, v0

    .line 382
    aput v1, p4, v4

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v24

    move-wide/from16 v12, v26

    const/16 v0, 0x20

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 30

    const/4 v0, 0x0

    .line 273
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 274
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    .line 275
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    .line 276
    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    .line 277
    aget v15, p1, v14

    int-to-long v14, v15

    and-long/2addr v14, v3

    const/16 v17, 0x5

    .line 278
    aget v11, p1, v17

    move-wide/from16 v20, v9

    int-to-long v8, v11

    and-long/2addr v8, v3

    .line 281
    aget v10, p0, v0

    int-to-long v10, v10

    and-long/2addr v10, v3

    mul-long v22, v10, v1

    const-wide/16 v24, 0x0

    add-long v3, v22, v24

    long-to-int v5, v3

    .line 283
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    mul-long v28, v10, v6

    add-long v3, v3, v28

    long-to-int v5, v3

    const/16 v22, 0x1

    .line 286
    aput v5, p2, v22

    ushr-long/2addr v3, v0

    mul-long v28, v10, v20

    add-long v3, v3, v28

    long-to-int v5, v3

    const/16 v19, 0x2

    .line 289
    aput v5, p2, v19

    ushr-long/2addr v3, v0

    mul-long v28, v10, v12

    add-long v3, v3, v28

    long-to-int v5, v3

    const/16 v18, 0x3

    .line 292
    aput v5, p2, v18

    ushr-long/2addr v3, v0

    mul-long v18, v10, v14

    add-long v3, v3, v18

    long-to-int v5, v3

    const/16 v16, 0x4

    .line 295
    aput v5, p2, v16

    ushr-long/2addr v3, v0

    mul-long v10, v10, v8

    add-long/2addr v3, v10

    long-to-int v5, v3

    .line 298
    aput v5, p2, v17

    ushr-long/2addr v3, v0

    long-to-int v4, v3

    const/4 v3, 0x6

    .line 300
    aput v4, p2, v3

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v3, :cond_0

    .line 305
    aget v4, p0, v5

    int-to-long v10, v4

    const-wide v16, 0xffffffffL

    and-long v10, v10, v16

    mul-long v18, v10, v1

    add-int/lit8 v4, v5, 0x0

    .line 306
    aget v3, p2, v4

    move-wide/from16 v22, v1

    int-to-long v0, v3

    and-long v0, v0, v16

    add-long v18, v18, v0

    add-long v0, v18, v24

    long-to-int v3, v0

    .line 307
    aput v3, p2, v4

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v3, v10, v6

    add-int/lit8 v18, v5, 0x1

    .line 309
    aget v2, p2, v18

    move-wide/from16 v26, v6

    int-to-long v6, v2

    and-long v6, v6, v16

    add-long/2addr v3, v6

    add-long/2addr v0, v3

    long-to-int v2, v0

    .line 310
    aput v2, p2, v18

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v3, v10, v20

    add-int/lit8 v6, v5, 0x2

    .line 312
    aget v7, p2, v6

    move-wide/from16 v28, v8

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 313
    aput v3, p2, v6

    ushr-long/2addr v0, v2

    mul-long v3, v10, v12

    add-int/lit8 v6, v5, 0x3

    .line 315
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 316
    aput v3, p2, v6

    ushr-long/2addr v0, v2

    mul-long v3, v10, v14

    add-int/lit8 v6, v5, 0x4

    .line 318
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 319
    aput v3, p2, v6

    ushr-long/2addr v0, v2

    mul-long v10, v10, v28

    add-int/lit8 v3, v5, 0x5

    .line 321
    aget v4, p2, v3

    int-to-long v6, v4

    and-long v6, v6, v16

    add-long/2addr v10, v6

    add-long/2addr v0, v10

    long-to-int v4, v0

    .line 322
    aput v4, p2, v3

    ushr-long/2addr v0, v2

    add-int/lit8 v5, v5, 0x6

    long-to-int v1, v0

    .line 324
    aput v1, p2, v5

    move/from16 v5, v18

    move-wide/from16 v1, v22

    move-wide/from16 v6, v26

    move-wide/from16 v8, v28

    const/16 v0, 0x20

    const/4 v3, 0x6

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 13

    move v0, p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p2, 0x0

    .line 468
    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long v6, v0, v4

    add-int/lit8 v8, p4, 0x0

    .line 469
    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    add-int/lit8 v8, p6, 0x0

    long-to-int v9, v6

    .line 470
    aput v9, p5, v8

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    add-int/lit8 v9, p2, 0x1

    .line 472
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v4

    add-int/lit8 v4, p4, 0x1

    .line 473
    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v11, v4

    add-long/2addr v6, v11

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v6

    .line 474
    aput v5, p5, v4

    ushr-long v4, v6, v8

    add-int/lit8 v6, p2, 0x2

    .line 476
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x2

    .line 477
    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v9, p6, 0x2

    long-to-int v10, v4

    .line 478
    aput v10, p5, v9

    ushr-long/2addr v4, v8

    add-int/lit8 v9, p2, 0x3

    .line 480
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, p4, 0x3

    .line 481
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v11, v6

    add-long/2addr v4, v11

    add-int/lit8 v6, p6, 0x3

    long-to-int v7, v4

    .line 482
    aput v7, p5, v6

    ushr-long/2addr v4, v8

    add-int/lit8 v6, p2, 0x4

    .line 484
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x4

    .line 485
    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v9, p6, 0x4

    long-to-int v10, v4

    .line 486
    aput v10, p5, v9

    ushr-long/2addr v4, v8

    add-int/lit8 v9, p2, 0x5

    .line 488
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v0, v0, v9

    add-long/2addr v0, v6

    add-int/lit8 v6, p4, 0x5

    .line 489
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    add-int/lit8 v0, p6, 0x5

    long-to-int v1, v4

    .line 490
    aput v1, p5, v0

    ushr-long v0, v4, v8

    add-long/2addr v0, v9

    return-wide v0
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 15

    move-object/from16 v0, p3

    move v1, p0

    move/from16 v2, p4

    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    and-long v7, p1, v5

    mul-long v9, v3, v7

    add-int/lit8 v1, v2, 0x0

    .line 529
    aget v11, v0, v1

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    const-wide/16 v11, 0x0

    add-long/2addr v9, v11

    long-to-int v13, v9

    .line 530
    aput v13, v0, v1

    const/16 v1, 0x20

    ushr-long/2addr v9, v1

    ushr-long v13, p1, v1

    mul-long v3, v3, v13

    add-long/2addr v3, v7

    add-int/lit8 v7, v2, 0x1

    .line 533
    aget v8, v0, v7

    int-to-long v11, v8

    and-long/2addr v11, v5

    add-long/2addr v3, v11

    add-long/2addr v9, v3

    long-to-int v3, v9

    .line 534
    aput v3, v0, v7

    ushr-long v3, v9, v1

    add-int/lit8 v7, v2, 0x2

    .line 536
    aget v8, v0, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    add-long/2addr v13, v8

    add-long/2addr v3, v13

    long-to-int v8, v3

    .line 537
    aput v8, v0, v7

    ushr-long/2addr v3, v1

    add-int/lit8 v7, v2, 0x3

    .line 539
    aget v8, v0, v7

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v3, v5

    long-to-int v5, v3

    .line 540
    aput v5, v0, v7

    ushr-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    const/4 v3, 0x4

    .line 542
    invoke-static {v1, v0, v2, v3}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static mul33WordAdd(II[II)I
    .locals 10

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    mul-long v0, v0, p0

    add-int/lit8 v4, p3, 0x0

    .line 551
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x0

    add-long/2addr v0, v5

    long-to-int v7, v0

    .line 552
    aput v7, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v7, p3, 0x1

    .line 554
    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr p0, v8

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 555
    aput p0, p2, v7

    ushr-long p0, v0, v4

    add-int/lit8 v0, p3, 0x2

    .line 557
    aget v1, p2, v0

    int-to-long v7, v1

    and-long v1, v7, v2

    add-long/2addr p0, v1

    long-to-int v1, p0

    .line 558
    aput v1, p2, v0

    ushr-long/2addr p0, v4

    cmp-long v0, p0, v5

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    const/4 p1, 0x3

    .line 560
    invoke-static {p0, p2, p3, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 30

    const/4 v0, 0x0

    .line 388
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 389
    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    .line 390
    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    .line 391
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    .line 392
    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v13, 0x5

    .line 393
    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const-wide/16 v17, 0x0

    :goto_0
    const/4 v15, 0x6

    if-ge v0, v15, :cond_0

    .line 398
    aget v15, p0, v0

    move-wide/from16 v21, v13

    int-to-long v13, v15

    and-long/2addr v13, v3

    mul-long v15, v13, v1

    add-int/lit8 v23, v0, 0x0

    move-wide/from16 v24, v1

    .line 399
    aget v1, p2, v23

    int-to-long v1, v1

    and-long/2addr v1, v3

    add-long/2addr v15, v1

    const-wide/16 v1, 0x0

    add-long v3, v15, v1

    long-to-int v15, v3

    .line 400
    aput v15, p2, v23

    const/16 v15, 0x20

    ushr-long/2addr v3, v15

    mul-long v26, v13, v5

    add-int/lit8 v16, v0, 0x1

    .line 402
    aget v1, p2, v16

    int-to-long v1, v1

    const-wide v19, 0xffffffffL

    and-long v1, v1, v19

    add-long v26, v26, v1

    add-long v3, v3, v26

    long-to-int v1, v3

    .line 403
    aput v1, p2, v16

    ushr-long v1, v3, v15

    mul-long v3, v13, v7

    add-int/lit8 v23, v0, 0x2

    .line 405
    aget v15, p2, v23

    move-wide/from16 v26, v5

    int-to-long v5, v15

    and-long v5, v5, v19

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 406
    aput v3, p2, v23

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    mul-long v4, v13, v9

    add-int/lit8 v6, v0, 0x3

    .line 408
    aget v15, p2, v6

    move-wide/from16 v28, v7

    int-to-long v7, v15

    and-long v7, v7, v19

    add-long/2addr v4, v7

    add-long/2addr v1, v4

    long-to-int v4, v1

    .line 409
    aput v4, p2, v6

    ushr-long/2addr v1, v3

    mul-long v4, v13, v11

    add-int/lit8 v6, v0, 0x4

    .line 411
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v7, v7, v19

    add-long/2addr v4, v7

    add-long/2addr v1, v4

    long-to-int v4, v1

    .line 412
    aput v4, p2, v6

    ushr-long/2addr v1, v3

    mul-long v13, v13, v21

    add-int/lit8 v4, v0, 0x5

    .line 414
    aget v5, p2, v4

    int-to-long v5, v5

    and-long v5, v5, v19

    add-long/2addr v13, v5

    add-long/2addr v1, v13

    long-to-int v5, v1

    .line 415
    aput v5, p2, v4

    ushr-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x6

    .line 417
    aget v4, p2, v0

    int-to-long v4, v4

    and-long v4, v4, v19

    move-wide/from16 v6, v17

    add-long v17, v6, v4

    add-long v1, v1, v17

    long-to-int v4, v1

    .line 418
    aput v4, p2, v0

    ushr-long v17, v1, v3

    move/from16 v0, v16

    move-wide/from16 v3, v19

    move-wide/from16 v13, v21

    move-wide/from16 v1, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v28

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v6, v17

    long-to-int v0, v6

    return v0
.end method

.method public static square([II[II)V
    .locals 36

    add-int/lit8 v0, p1, 0x0

    .line 711
    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x5

    :goto_0
    add-int/lit8 v8, v7, -0x1

    add-int v7, p1, v7

    .line 719
    aget v7, p0, v7

    int-to-long v9, v7

    and-long/2addr v9, v2

    mul-long v9, v9, v9

    add-int/lit8 v6, v6, -0x1

    add-int v7, p3, v6

    shl-int/lit8 v5, v5, 0x1f

    const/16 v11, 0x21

    ushr-long v12, v9, v11

    long-to-int v13, v12

    or-int/2addr v5, v13

    .line 721
    aput v5, p2, v7

    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v7, 0x1

    ushr-long v12, v9, v7

    long-to-int v13, v12

    .line 722
    aput v13, p2, v5

    long-to-int v5, v9

    if-gtz v8, :cond_0

    mul-long v8, v0, v0

    shl-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    and-long/2addr v5, v2

    ushr-long v10, v8, v11

    or-long/2addr v5, v10

    add-int/lit8 v10, p3, 0x0

    long-to-int v11, v8

    .line 730
    aput v11, p2, v10

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    long-to-int v9, v8

    and-int/lit8 v8, v9, 0x1

    add-int/lit8 v9, p1, 0x1

    .line 735
    aget v9, p0, v9

    int-to-long v11, v9

    and-long/2addr v11, v2

    add-int/lit8 v9, p3, 0x2

    .line 736
    aget v13, p2, v9

    int-to-long v13, v13

    and-long/2addr v13, v2

    mul-long v15, v11, v0

    add-long/2addr v5, v15

    long-to-int v15, v5

    add-int/lit8 v16, p3, 0x1

    shl-int/lit8 v17, v15, 0x1

    or-int v8, v17, v8

    .line 741
    aput v8, p2, v16

    ushr-int/lit8 v8, v15, 0x1f

    ushr-long/2addr v5, v10

    add-long/2addr v13, v5

    add-int/lit8 v5, p1, 0x2

    .line 746
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v15, p3, 0x3

    .line 747
    aget v7, p2, v15

    move-wide/from16 v18, v11

    int-to-long v10, v7

    and-long/2addr v10, v2

    add-int/lit8 v7, p3, 0x4

    .line 748
    aget v12, p2, v7

    move-wide/from16 v20, v10

    int-to-long v10, v12

    and-long/2addr v10, v2

    mul-long v22, v5, v0

    add-long v13, v13, v22

    long-to-int v12, v13

    shl-int/lit8 v22, v12, 0x1

    or-int v8, v22, v8

    .line 752
    aput v8, p2, v9

    ushr-int/lit8 v8, v12, 0x1f

    const/16 v9, 0x20

    ushr-long v12, v13, v9

    mul-long v22, v5, v18

    add-long v12, v12, v22

    add-long v12, v20, v12

    ushr-long v20, v12, v9

    add-long v10, v10, v20

    and-long/2addr v12, v2

    add-int/lit8 v9, p1, 0x3

    .line 759
    aget v9, p0, v9

    move-wide/from16 v20, v5

    int-to-long v4, v9

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x5

    .line 760
    aget v9, p2, v6

    move/from16 v22, v15

    int-to-long v14, v9

    and-long/2addr v14, v2

    add-int/lit8 v9, p3, 0x6

    move/from16 v24, v6

    .line 761
    aget v6, p2, v9

    move/from16 v25, v7

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v26, v4, v0

    add-long v12, v12, v26

    long-to-int v2, v12

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v8

    .line 765
    aput v3, p2, v22

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x20

    ushr-long/2addr v12, v3

    mul-long v28, v4, v18

    add-long v12, v12, v28

    add-long/2addr v10, v12

    ushr-long v12, v10, v3

    mul-long v28, v4, v20

    add-long v12, v12, v28

    add-long/2addr v14, v12

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    ushr-long v26, v14, v3

    add-long v6, v6, v26

    and-long/2addr v14, v12

    add-int/lit8 v3, p1, 0x4

    .line 774
    aget v3, p0, v3

    move/from16 v22, v9

    int-to-long v8, v3

    and-long/2addr v8, v12

    add-int/lit8 v3, p3, 0x7

    move-wide/from16 v28, v4

    .line 775
    aget v4, p2, v3

    int-to-long v4, v4

    and-long/2addr v4, v12

    add-int/lit8 v30, p3, 0x8

    move/from16 v31, v3

    .line 776
    aget v3, p2, v30

    move-wide/from16 v32, v4

    int-to-long v3, v3

    and-long/2addr v3, v12

    mul-long v12, v8, v0

    add-long/2addr v10, v12

    long-to-int v5, v10

    shl-int/lit8 v12, v5, 0x1

    or-int/2addr v2, v12

    .line 780
    aput v2, p2, v25

    ushr-int/lit8 v2, v5, 0x1f

    const/16 v5, 0x20

    ushr-long/2addr v10, v5

    mul-long v12, v8, v18

    add-long/2addr v10, v12

    add-long/2addr v14, v10

    ushr-long v10, v14, v5

    mul-long v12, v8, v20

    add-long/2addr v10, v12

    add-long/2addr v6, v10

    const-wide v10, 0xffffffffL

    and-long v12, v14, v10

    ushr-long v14, v6, v5

    mul-long v25, v8, v28

    add-long v14, v14, v25

    add-long v14, v32, v14

    and-long/2addr v6, v10

    ushr-long v25, v14, v5

    add-long v3, v3, v25

    and-long/2addr v14, v10

    const/16 v23, 0x5

    add-int/lit8 v5, p1, 0x5

    .line 791
    aget v5, p0, v5

    move-wide/from16 v25, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    add-int/lit8 v5, p3, 0x9

    move-wide/from16 v32, v3

    .line 792
    aget v3, p2, v5

    int-to-long v3, v3

    and-long/2addr v3, v10

    add-int/lit8 v23, p3, 0xa

    move/from16 p0, v5

    .line 793
    aget v5, p2, v23

    move-wide/from16 v34, v3

    int-to-long v3, v5

    and-long/2addr v3, v10

    mul-long v0, v0, v8

    add-long/2addr v12, v0

    long-to-int v0, v12

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v2

    .line 797
    aput v1, p2, v24

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v10, v12, v1

    mul-long v12, v8, v18

    add-long/2addr v10, v12

    add-long/2addr v6, v10

    ushr-long v10, v6, v1

    mul-long v12, v8, v20

    add-long/2addr v10, v12

    add-long/2addr v14, v10

    ushr-long v10, v14, v1

    mul-long v12, v8, v28

    add-long/2addr v10, v12

    add-long v10, v32, v10

    ushr-long v12, v10, v1

    mul-long v8, v8, v25

    add-long/2addr v12, v8

    add-long v8, v34, v12

    ushr-long v12, v8, v1

    add-long/2addr v3, v12

    long-to-int v1, v6

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 807
    aput v0, p2, v22

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v14

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 810
    aput v0, p2, v31

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v10

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 813
    aput v0, p2, v30

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v8

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 816
    aput v0, p2, p0

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v3

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 819
    aput v0, p2, v23

    ushr-int/lit8 v0, v1, 0x1f

    add-int/lit8 v1, p3, 0xb

    .line 821
    aget v2, p2, v1

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v2, v4

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 822
    aput v0, p2, v1

    return-void

    :cond_0
    move v7, v8

    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 36

    const/4 v0, 0x0

    .line 595
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v6, 0xc

    const/4 v7, 0x5

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v9, v7, -0x1

    .line 603
    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long v10, v10, v10

    add-int/lit8 v6, v6, -0x1

    shl-int/lit8 v7, v8, 0x1f

    const/16 v8, 0x21

    ushr-long v12, v10, v8

    long-to-int v13, v12

    or-int/2addr v7, v13

    .line 605
    aput v7, p1, v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    ushr-long v12, v10, v7

    long-to-int v13, v12

    .line 606
    aput v13, p1, v6

    long-to-int v11, v10

    if-gtz v9, :cond_0

    mul-long v9, v1, v1

    shl-int/lit8 v6, v11, 0x1f

    int-to-long v11, v6

    and-long/2addr v11, v3

    ushr-long v13, v9, v8

    or-long/2addr v11, v13

    long-to-int v6, v9

    .line 614
    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    .line 619
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    const/4 v10, 0x2

    .line 620
    aget v13, p1, v10

    int-to-long v13, v13

    and-long/2addr v13, v3

    mul-long v15, v8, v1

    add-long/2addr v11, v15

    long-to-int v15, v11

    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    .line 625
    aput v6, p1, v7

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long/2addr v11, v0

    add-long/2addr v13, v11

    .line 630
    aget v11, p0, v10

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v15, 0x3

    .line 631
    aget v7, p1, v15

    move/from16 v18, v6

    int-to-long v5, v7

    and-long/2addr v5, v3

    const/4 v7, 0x4

    .line 632
    aget v15, p1, v7

    move-wide/from16 v20, v8

    int-to-long v7, v15

    and-long/2addr v7, v3

    mul-long v22, v11, v1

    add-long v13, v13, v22

    long-to-int v15, v13

    shl-int/lit8 v22, v15, 0x1

    or-int v18, v22, v18

    .line 636
    aput v18, p1, v10

    ushr-int/lit8 v10, v15, 0x1f

    ushr-long/2addr v13, v0

    mul-long v22, v11, v20

    add-long v13, v13, v22

    add-long/2addr v5, v13

    ushr-long v13, v5, v0

    add-long/2addr v7, v13

    and-long/2addr v5, v3

    const/4 v13, 0x3

    .line 643
    aget v14, p0, v13

    int-to-long v13, v14

    and-long/2addr v13, v3

    const/4 v15, 0x5

    .line 644
    aget v9, p1, v15

    move-wide/from16 v22, v1

    int-to-long v0, v9

    and-long/2addr v0, v3

    const/4 v15, 0x6

    .line 645
    aget v9, p1, v15

    move-wide/from16 v24, v0

    int-to-long v0, v9

    and-long/2addr v0, v3

    mul-long v26, v13, v22

    add-long v5, v5, v26

    long-to-int v9, v5

    shl-int/lit8 v26, v9, 0x1

    or-int v10, v26, v10

    const/16 v19, 0x3

    .line 649
    aput v10, p1, v19

    ushr-int/lit8 v10, v9, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr v5, v2

    mul-long v26, v13, v20

    add-long v5, v5, v26

    add-long/2addr v7, v5

    ushr-long v5, v7, v2

    mul-long v26, v13, v11

    add-long v5, v5, v26

    add-long v5, v24, v5

    and-long/2addr v7, v3

    ushr-long v24, v5, v2

    add-long v0, v0, v24

    and-long/2addr v5, v3

    const/4 v9, 0x4

    .line 658
    aget v2, p0, v9

    move/from16 v19, v10

    int-to-long v9, v2

    and-long/2addr v9, v3

    const/16 v25, 0x7

    .line 659
    aget v2, p1, v25

    move-wide/from16 v26, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    const/16 v28, 0x8

    .line 660
    aget v2, p1, v28

    move-wide/from16 v29, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    mul-long v31, v9, v22

    add-long v7, v7, v31

    long-to-int v2, v7

    shl-int/lit8 v31, v2, 0x1

    or-int v19, v31, v19

    const/16 v24, 0x4

    .line 664
    aput v19, p1, v24

    ushr-int/lit8 v19, v2, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    mul-long v31, v9, v20

    add-long v7, v7, v31

    add-long/2addr v5, v7

    ushr-long v7, v5, v2

    mul-long v31, v9, v11

    add-long v7, v7, v31

    add-long/2addr v0, v7

    and-long/2addr v5, v3

    ushr-long v7, v0, v2

    mul-long v31, v9, v26

    add-long v7, v7, v31

    add-long v7, v29, v7

    and-long/2addr v0, v3

    ushr-long v29, v7, v2

    add-long v13, v13, v29

    and-long/2addr v7, v3

    const/16 v17, 0x5

    .line 675
    aget v2, p0, v17

    move-wide/from16 v29, v9

    int-to-long v9, v2

    and-long/2addr v9, v3

    const/16 v24, 0x9

    .line 676
    aget v2, p1, v24

    move-wide/from16 v31, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    const/16 v33, 0xa

    .line 677
    aget v2, p1, v33

    move-wide/from16 v34, v13

    int-to-long v13, v2

    and-long/2addr v3, v13

    mul-long v13, v9, v22

    add-long/2addr v5, v13

    long-to-int v2, v5

    shl-int/lit8 v13, v2, 0x1

    or-int v13, v13, v19

    const/4 v14, 0x5

    .line 681
    aput v13, p1, v14

    ushr-int/lit8 v13, v2, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr v5, v2

    mul-long v17, v9, v20

    add-long v5, v5, v17

    add-long/2addr v0, v5

    ushr-long v5, v0, v2

    mul-long v11, v11, v9

    add-long/2addr v5, v11

    add-long/2addr v7, v5

    ushr-long v5, v7, v2

    mul-long v11, v9, v26

    add-long/2addr v5, v11

    add-long v5, v31, v5

    ushr-long v11, v5, v2

    mul-long v9, v9, v29

    add-long/2addr v11, v9

    add-long v9, v34, v11

    ushr-long v11, v9, v2

    add-long/2addr v3, v11

    long-to-int v1, v0

    shl-int/lit8 v0, v1, 0x1

    or-int/2addr v0, v13

    .line 691
    aput v0, p1, v15

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v7

    shl-int/lit8 v7, v1, 0x1

    or-int/2addr v0, v7

    .line 694
    aput v0, p1, v25

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v5

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    .line 697
    aput v0, p1, v28

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v9

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    .line 700
    aput v0, p1, v24

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v3

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    .line 703
    aput v0, p1, v33

    ushr-int/lit8 v0, v1, 0x1f

    const/16 v1, 0xb

    .line 705
    aget v5, p1, v1

    const/16 v2, 0x20

    shr-long v2, v3, v2

    long-to-int v3, v2

    add-int/2addr v5, v3

    const/4 v2, 0x1

    shl-int/lit8 v2, v5, 0x1

    or-int/2addr v0, v2

    .line 706
    aput v0, p1, v1

    return-void

    :cond_0
    move v7, v9

    move v8, v11

    goto/16 :goto_0
.end method

.method public static sub([II[II[II)I
    .locals 9

    add-int/lit8 v0, p1, 0x0

    .line 852
    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    .line 853
    aput v5, p4, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 855
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    .line 856
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 858
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    .line 859
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 861
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    .line 862
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 864
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    .line 865
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x5

    .line 867
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x5

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr v0, p0

    add-int/lit8 p5, p5, 0x5

    long-to-int p0, v0

    .line 868
    aput p0, p4, p5

    shr-long p0, v0, v4

    long-to-int p1, p0

    return p1
.end method

.method public static sub([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 828
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 829
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 831
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 832
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 834
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 835
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 837
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 838
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 840
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 841
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 843
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 844
    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static subFrom([I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 900
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 901
    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 903
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 904
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 906
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 907
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 909
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 910
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 912
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 913
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 915
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 916
    aput p0, p1, v5

    shr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 950
    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x5

    shl-int/lit8 v3, v3, 0x2

    .line 953
    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 956
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero([I)V
    .locals 2

    const/4 v0, 0x0

    .line 961
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 962
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 963
    aput v0, p0, v1

    const/4 v1, 0x3

    .line 964
    aput v0, p0, v1

    const/4 v1, 0x4

    .line 965
    aput v0, p0, v1

    const/4 v1, 0x5

    .line 966
    aput v0, p0, v1

    return-void
.end method
