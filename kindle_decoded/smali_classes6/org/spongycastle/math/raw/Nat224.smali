.class public abstract Lorg/spongycastle/math/raw/Nat224;
.super Ljava/lang/Object;
.source "Nat224.java"


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
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 30
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 32
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 33
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static addBothTo([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 68
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

    .line 69
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 71
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

    .line 72
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 74
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

    .line 75
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 77
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

    .line 78
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 80
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

    .line 81
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 83
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

    .line 84
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 86
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

    .line 87
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static copy([I[I)V
    .locals 2

    const/4 v0, 0x0

    .line 209
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 210
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 211
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 212
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x4

    .line 213
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x5

    .line 214
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x6

    .line 215
    aget p0, p0, v0

    aput p0, p1, v0

    return-void
.end method

.method public static create()[I
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    return-object v0
.end method

.method public static eq([I[I)Z
    .locals 3

    const/4 v0, 0x6

    :goto_0
    if-ltz v0, :cond_1

    .line 246
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

    .line 256
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_1

    .line 261
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 263
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 265
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 266
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0

    .line 258
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getBit([II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 275
    aget p0, p0, v0

    :goto_0
    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_2

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    .line 283
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static gte([I[I)Z
    .locals 5

    const/4 v0, 0x6

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 290
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 291
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

    .line 316
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    .line 322
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
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 334
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

.method public static mul([I[I[I)V
    .locals 32

    const/4 v0, 0x0

    .line 344
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 345
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    .line 346
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    .line 347
    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    .line 348
    aget v15, p1, v14

    int-to-long v14, v15

    and-long/2addr v14, v3

    const/16 v17, 0x5

    .line 349
    aget v11, p1, v17

    move-wide/from16 v20, v9

    int-to-long v8, v11

    and-long/2addr v8, v3

    const/4 v10, 0x6

    .line 350
    aget v11, p1, v10

    int-to-long v10, v11

    and-long/2addr v10, v3

    .line 353
    aget v5, p0, v0

    move-wide/from16 v24, v10

    int-to-long v10, v5

    and-long/2addr v10, v3

    mul-long v26, v10, v1

    const-wide/16 v28, 0x0

    add-long v3, v26, v28

    long-to-int v5, v3

    .line 355
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    mul-long v26, v10, v6

    add-long v3, v3, v26

    long-to-int v5, v3

    const/16 v23, 0x1

    .line 358
    aput v5, p2, v23

    ushr-long/2addr v3, v0

    mul-long v26, v10, v20

    add-long v3, v3, v26

    long-to-int v5, v3

    const/16 v19, 0x2

    .line 361
    aput v5, p2, v19

    ushr-long/2addr v3, v0

    mul-long v26, v10, v12

    add-long v3, v3, v26

    long-to-int v5, v3

    const/16 v18, 0x3

    .line 364
    aput v5, p2, v18

    ushr-long/2addr v3, v0

    mul-long v18, v10, v14

    add-long v3, v3, v18

    long-to-int v5, v3

    const/16 v16, 0x4

    .line 367
    aput v5, p2, v16

    ushr-long/2addr v3, v0

    mul-long v18, v10, v8

    add-long v3, v3, v18

    long-to-int v5, v3

    .line 370
    aput v5, p2, v17

    ushr-long/2addr v3, v0

    mul-long v10, v10, v24

    add-long/2addr v3, v10

    long-to-int v5, v3

    const/4 v10, 0x6

    .line 373
    aput v5, p2, v10

    ushr-long/2addr v3, v0

    long-to-int v4, v3

    const/4 v3, 0x7

    .line 375
    aput v4, p2, v3

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v3, :cond_0

    .line 380
    aget v4, p0, v5

    int-to-long v10, v4

    const-wide v16, 0xffffffffL

    and-long v10, v10, v16

    mul-long v18, v10, v1

    add-int/lit8 v4, v5, 0x0

    .line 381
    aget v3, p2, v4

    move-wide/from16 v22, v1

    int-to-long v0, v3

    and-long v0, v0, v16

    add-long v18, v18, v0

    add-long v0, v18, v28

    long-to-int v3, v0

    .line 382
    aput v3, p2, v4

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v3, v10, v6

    add-int/lit8 v18, v5, 0x1

    .line 384
    aget v2, p2, v18

    move-wide/from16 v26, v6

    int-to-long v6, v2

    and-long v6, v6, v16

    add-long/2addr v3, v6

    add-long/2addr v0, v3

    long-to-int v2, v0

    .line 385
    aput v2, p2, v18

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v3, v10, v20

    add-int/lit8 v6, v5, 0x2

    .line 387
    aget v7, p2, v6

    move-wide/from16 v30, v8

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 388
    aput v3, p2, v6

    ushr-long/2addr v0, v2

    mul-long v3, v10, v12

    add-int/lit8 v6, v5, 0x3

    .line 390
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 391
    aput v3, p2, v6

    ushr-long/2addr v0, v2

    mul-long v3, v10, v14

    add-int/lit8 v6, v5, 0x4

    .line 393
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 394
    aput v3, p2, v6

    ushr-long/2addr v0, v2

    mul-long v8, v10, v30

    add-int/lit8 v3, v5, 0x5

    .line 396
    aget v4, p2, v3

    int-to-long v6, v4

    and-long v6, v6, v16

    add-long/2addr v8, v6

    add-long/2addr v0, v8

    long-to-int v4, v0

    .line 397
    aput v4, p2, v3

    ushr-long/2addr v0, v2

    mul-long v10, v10, v24

    add-int/lit8 v3, v5, 0x6

    .line 399
    aget v4, p2, v3

    int-to-long v6, v4

    and-long v6, v6, v16

    add-long/2addr v10, v6

    add-long/2addr v0, v10

    long-to-int v4, v0

    .line 400
    aput v4, p2, v3

    ushr-long/2addr v0, v2

    add-int/lit8 v5, v5, 0x7

    long-to-int v1, v0

    .line 402
    aput v1, p2, v5

    move/from16 v5, v18

    move-wide/from16 v1, v22

    move-wide/from16 v6, v26

    move-wide/from16 v8, v30

    const/16 v0, 0x20

    const/4 v3, 0x7

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

    .line 561
    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long v6, v0, v4

    add-int/lit8 v8, p4, 0x0

    .line 562
    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    add-int/lit8 v8, p6, 0x0

    long-to-int v9, v6

    .line 563
    aput v9, p5, v8

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    add-int/lit8 v9, p2, 0x1

    .line 565
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v4

    add-int/lit8 v4, p4, 0x1

    .line 566
    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v11, v4

    add-long/2addr v6, v11

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v6

    .line 567
    aput v5, p5, v4

    ushr-long v4, v6, v8

    add-int/lit8 v6, p2, 0x2

    .line 569
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x2

    .line 570
    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v9, p6, 0x2

    long-to-int v10, v4

    .line 571
    aput v10, p5, v9

    ushr-long/2addr v4, v8

    add-int/lit8 v9, p2, 0x3

    .line 573
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, p4, 0x3

    .line 574
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v11, v6

    add-long/2addr v4, v11

    add-int/lit8 v6, p6, 0x3

    long-to-int v7, v4

    .line 575
    aput v7, p5, v6

    ushr-long/2addr v4, v8

    add-int/lit8 v6, p2, 0x4

    .line 577
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x4

    .line 578
    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v9, p6, 0x4

    long-to-int v10, v4

    .line 579
    aput v10, p5, v9

    ushr-long/2addr v4, v8

    add-int/lit8 v9, p2, 0x5

    .line 581
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, p4, 0x5

    .line 582
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v11, v6

    add-long/2addr v4, v11

    add-int/lit8 v6, p6, 0x5

    long-to-int v7, v4

    .line 583
    aput v7, p5, v6

    ushr-long/2addr v4, v8

    add-int/lit8 v6, p2, 0x6

    .line 585
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v0, v0, v6

    add-long/2addr v0, v9

    add-int/lit8 v9, p4, 0x6

    .line 586
    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v2, v9

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    add-int/lit8 v0, p6, 0x6

    long-to-int v1, v4

    .line 587
    aput v1, p5, v0

    ushr-long v0, v4, v8

    add-long/2addr v0, v6

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

    .line 681
    aget v11, v0, v1

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    const-wide/16 v11, 0x0

    add-long/2addr v9, v11

    long-to-int v13, v9

    .line 682
    aput v13, v0, v1

    const/16 v1, 0x20

    ushr-long/2addr v9, v1

    ushr-long v13, p1, v1

    mul-long v3, v3, v13

    add-long/2addr v3, v7

    add-int/lit8 v7, v2, 0x1

    .line 685
    aget v8, v0, v7

    int-to-long v11, v8

    and-long/2addr v11, v5

    add-long/2addr v3, v11

    add-long/2addr v9, v3

    long-to-int v3, v9

    .line 686
    aput v3, v0, v7

    ushr-long v3, v9, v1

    add-int/lit8 v7, v2, 0x2

    .line 688
    aget v8, v0, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    add-long/2addr v13, v8

    add-long/2addr v3, v13

    long-to-int v8, v3

    .line 689
    aput v8, v0, v7

    ushr-long/2addr v3, v1

    add-int/lit8 v7, v2, 0x3

    .line 691
    aget v8, v0, v7

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v3, v5

    long-to-int v5, v3

    .line 692
    aput v5, v0, v7

    ushr-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    const/4 v3, 0x4

    .line 694
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

    .line 703
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x0

    add-long/2addr v0, v5

    long-to-int v7, v0

    .line 704
    aput v7, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v7, p3, 0x1

    .line 706
    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr p0, v8

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 707
    aput p0, p2, v7

    ushr-long p0, v0, v4

    add-int/lit8 v0, p3, 0x2

    .line 709
    aget v1, p2, v0

    int-to-long v7, v1

    and-long v1, v7, v2

    add-long/2addr p0, v1

    long-to-int v1, p0

    .line 710
    aput v1, p2, v0

    ushr-long/2addr p0, v4

    cmp-long v0, p0, v5

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    const/4 p1, 0x3

    .line 712
    invoke-static {p0, p2, p3, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 32

    const/4 v0, 0x0

    .line 473
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 474
    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    .line 475
    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    .line 476
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    .line 477
    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v13, 0x5

    .line 478
    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/4 v15, 0x6

    .line 479
    aget v15, p1, v15

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const-wide/16 v19, 0x0

    move-wide/from16 v21, v19

    const/4 v2, 0x0

    :goto_0
    const/4 v15, 0x7

    if-ge v2, v15, :cond_0

    .line 484
    aget v15, p0, v2

    move-wide/from16 v23, v0

    int-to-long v0, v15

    and-long/2addr v0, v3

    mul-long v15, v0, v17

    add-int/lit8 v25, v2, 0x0

    move-wide/from16 v26, v13

    .line 485
    aget v13, p2, v25

    int-to-long v13, v13

    and-long/2addr v13, v3

    add-long/2addr v15, v13

    add-long v13, v15, v19

    long-to-int v15, v13

    .line 486
    aput v15, p2, v25

    const/16 v15, 0x20

    ushr-long/2addr v13, v15

    mul-long v28, v0, v5

    add-int/lit8 v16, v2, 0x1

    .line 488
    aget v15, p2, v16

    move-wide/from16 v30, v5

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v28, v28, v5

    add-long v13, v13, v28

    long-to-int v5, v13

    .line 489
    aput v5, p2, v16

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v28, v0, v7

    add-int/lit8 v6, v2, 0x2

    .line 491
    aget v15, p2, v6

    move/from16 v25, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v28, v28, v5

    add-long v13, v13, v28

    long-to-int v5, v13

    .line 492
    aput v5, p2, v25

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v28, v0, v9

    add-int/lit8 v6, v2, 0x3

    .line 494
    aget v15, p2, v6

    move/from16 v25, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v28, v28, v5

    add-long v13, v13, v28

    long-to-int v5, v13

    .line 495
    aput v5, p2, v25

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v28, v0, v11

    add-int/lit8 v6, v2, 0x4

    .line 497
    aget v15, p2, v6

    move/from16 v25, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v28, v28, v5

    add-long v13, v13, v28

    long-to-int v5, v13

    .line 498
    aput v5, p2, v25

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v28, v0, v26

    add-int/lit8 v6, v2, 0x5

    .line 500
    aget v15, p2, v6

    move/from16 v25, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v28, v28, v5

    add-long v13, v13, v28

    long-to-int v5, v13

    .line 501
    aput v5, p2, v25

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v0, v0, v23

    add-int/lit8 v6, v2, 0x6

    .line 503
    aget v15, p2, v6

    move/from16 v25, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long/2addr v0, v5

    add-long/2addr v13, v0

    long-to-int v0, v13

    .line 504
    aput v0, p2, v25

    const/16 v0, 0x20

    ushr-long v5, v13, v0

    add-int/lit8 v2, v2, 0x7

    .line 506
    aget v1, p2, v2

    int-to-long v13, v1

    and-long/2addr v13, v3

    move-wide/from16 v3, v21

    add-long v21, v3, v13

    add-long v5, v5, v21

    long-to-int v1, v5

    .line 507
    aput v1, p2, v2

    ushr-long v21, v5, v0

    move/from16 v2, v16

    move-wide/from16 v0, v23

    move-wide/from16 v13, v26

    move-wide/from16 v5, v30

    const-wide v3, 0xffffffffL

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v3, v21

    long-to-int v0, v3

    return v0
.end method

.method public static square([I[I)V
    .locals 41

    const/4 v0, 0x0

    .line 747
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v6, 0xe

    const/4 v7, 0x6

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v9, v7, -0x1

    .line 755
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

    .line 757
    aput v7, p1, v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    ushr-long v12, v10, v7

    long-to-int v13, v12

    .line 758
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

    .line 766
    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    .line 771
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    const/4 v10, 0x2

    .line 772
    aget v13, p1, v10

    int-to-long v13, v13

    and-long/2addr v13, v3

    mul-long v15, v8, v1

    add-long/2addr v11, v15

    long-to-int v15, v11

    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    .line 777
    aput v6, p1, v7

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long/2addr v11, v0

    add-long/2addr v13, v11

    .line 782
    aget v11, p0, v10

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v15, 0x3

    .line 783
    aget v7, p1, v15

    move/from16 v18, v6

    int-to-long v5, v7

    and-long/2addr v5, v3

    const/4 v7, 0x4

    .line 784
    aget v15, p1, v7

    move-wide/from16 v20, v8

    int-to-long v7, v15

    and-long/2addr v7, v3

    mul-long v22, v11, v1

    add-long v13, v13, v22

    long-to-int v15, v13

    shl-int/lit8 v22, v15, 0x1

    or-int v18, v22, v18

    .line 788
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

    .line 795
    aget v14, p0, v13

    int-to-long v13, v14

    and-long/2addr v13, v3

    const/4 v15, 0x5

    .line 796
    aget v9, p1, v15

    move-wide/from16 v22, v1

    int-to-long v0, v9

    and-long/2addr v0, v3

    const/4 v9, 0x6

    .line 797
    aget v2, p1, v9

    move-wide/from16 v25, v0

    int-to-long v0, v2

    and-long/2addr v0, v3

    mul-long v27, v13, v22

    add-long v5, v5, v27

    long-to-int v2, v5

    shl-int/lit8 v9, v2, 0x1

    or-int/2addr v9, v10

    const/4 v10, 0x3

    .line 801
    aput v9, p1, v10

    ushr-int/lit8 v10, v2, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr v5, v2

    mul-long v27, v13, v20

    add-long v5, v5, v27

    add-long/2addr v7, v5

    ushr-long v5, v7, v2

    mul-long v27, v13, v11

    add-long v5, v5, v27

    add-long v5, v25, v5

    and-long/2addr v7, v3

    ushr-long v24, v5, v2

    add-long v0, v0, v24

    and-long/2addr v5, v3

    const/4 v9, 0x4

    .line 810
    aget v2, p0, v9

    move/from16 v18, v10

    int-to-long v9, v2

    and-long/2addr v9, v3

    const/16 v25, 0x7

    .line 811
    aget v2, p1, v25

    move-wide/from16 v26, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    const/16 v28, 0x8

    .line 812
    aget v2, p1, v28

    move-wide/from16 v29, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    mul-long v31, v9, v22

    add-long v7, v7, v31

    long-to-int v2, v7

    shl-int/lit8 v31, v2, 0x1

    or-int v18, v31, v18

    const/16 v19, 0x4

    .line 816
    aput v18, p1, v19

    ushr-int/lit8 v18, v2, 0x1f

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

    .line 827
    aget v2, p0, v15

    move-wide/from16 v29, v9

    int-to-long v9, v2

    and-long/2addr v9, v3

    const/16 v19, 0x9

    .line 828
    aget v2, p1, v19

    move-wide/from16 v31, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    const/16 v33, 0xa

    .line 829
    aget v2, p1, v33

    move-wide/from16 v34, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    mul-long v36, v9, v22

    add-long v5, v5, v36

    long-to-int v2, v5

    shl-int/lit8 v36, v2, 0x1

    or-int v18, v36, v18

    .line 833
    aput v18, p1, v15

    ushr-int/lit8 v15, v2, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr v5, v2

    mul-long v36, v9, v20

    add-long v5, v5, v36

    add-long/2addr v0, v5

    ushr-long v5, v0, v2

    mul-long v36, v9, v11

    add-long v5, v5, v36

    add-long/2addr v7, v5

    and-long/2addr v0, v3

    ushr-long v5, v7, v2

    mul-long v36, v9, v26

    add-long v5, v5, v36

    add-long v5, v31, v5

    and-long/2addr v7, v3

    ushr-long v31, v5, v2

    mul-long v36, v9, v29

    add-long v31, v31, v36

    add-long v31, v34, v31

    and-long/2addr v5, v3

    ushr-long v34, v31, v2

    add-long v13, v13, v34

    and-long v31, v31, v3

    const/16 v17, 0x6

    .line 846
    aget v2, p0, v17

    move-wide/from16 v34, v9

    int-to-long v9, v2

    and-long/2addr v9, v3

    const/16 v18, 0xb

    .line 847
    aget v2, p1, v18

    move-wide/from16 v36, v13

    int-to-long v13, v2

    and-long/2addr v13, v3

    const/16 v38, 0xc

    .line 848
    aget v2, p1, v38

    move-wide/from16 v39, v13

    int-to-long v13, v2

    and-long/2addr v3, v13

    mul-long v13, v9, v22

    add-long/2addr v0, v13

    long-to-int v2, v0

    shl-int/lit8 v13, v2, 0x1

    or-int/2addr v13, v15

    const/4 v14, 0x6

    .line 852
    aput v13, p1, v14

    ushr-int/lit8 v13, v2, 0x1f

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v14, v9, v20

    add-long/2addr v0, v14

    add-long/2addr v7, v0

    ushr-long v0, v7, v2

    mul-long v11, v11, v9

    add-long/2addr v0, v11

    add-long/2addr v5, v0

    ushr-long v0, v5, v2

    mul-long v11, v9, v26

    add-long/2addr v0, v11

    add-long v0, v31, v0

    ushr-long v11, v0, v2

    mul-long v14, v9, v29

    add-long/2addr v11, v14

    add-long v11, v36, v11

    ushr-long v14, v11, v2

    mul-long v9, v9, v34

    add-long/2addr v14, v9

    add-long v9, v39, v14

    ushr-long v14, v9, v2

    add-long/2addr v3, v14

    long-to-int v8, v7

    shl-int/lit8 v7, v8, 0x1

    or-int/2addr v7, v13

    .line 863
    aput v7, p1, v25

    ushr-int/lit8 v7, v8, 0x1f

    long-to-int v6, v5

    shl-int/lit8 v5, v6, 0x1

    or-int/2addr v5, v7

    .line 866
    aput v5, p1, v28

    ushr-int/lit8 v5, v6, 0x1f

    long-to-int v1, v0

    shl-int/lit8 v0, v1, 0x1

    or-int/2addr v0, v5

    .line 869
    aput v0, p1, v19

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v11

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    .line 872
    aput v0, p1, v33

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v9

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    .line 875
    aput v0, p1, v18

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v3

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    .line 878
    aput v0, p1, v38

    ushr-int/lit8 v0, v1, 0x1f

    const/16 v1, 0xd

    .line 880
    aget v5, p1, v1

    const/16 v2, 0x20

    shr-long v2, v3, v2

    long-to-int v3, v2

    add-int/2addr v5, v3

    const/4 v2, 0x1

    shl-int/lit8 v2, v5, 0x1

    or-int/2addr v0, v2

    .line 881
    aput v0, p1, v1

    return-void

    :cond_0
    move v7, v9

    move v8, v11

    goto/16 :goto_0
.end method

.method public static sub([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 1026
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

    .line 1027
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1029
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1030
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1032
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1033
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1035
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1036
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1038
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1039
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1041
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1042
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1044
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1045
    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static subFrom([I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 1107
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

    .line 1108
    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1110
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1111
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1113
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1114
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1116
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1117
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1119
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1120
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1122
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1123
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1125
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1126
    aput p0, p1, v5

    shr-long p0, v1, v0

    long-to-int p1, p0

    return p1
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x1c

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 1163
    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x6

    shl-int/lit8 v3, v3, 0x2

    .line 1166
    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero([I)V
    .locals 2

    const/4 v0, 0x0

    .line 1174
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 1175
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 1176
    aput v0, p0, v1

    const/4 v1, 0x3

    .line 1177
    aput v0, p0, v1

    const/4 v1, 0x4

    .line 1178
    aput v0, p0, v1

    const/4 v1, 0x5

    .line 1179
    aput v0, p0, v1

    const/4 v1, 0x6

    .line 1180
    aput v0, p0, v1

    return-void
.end method
