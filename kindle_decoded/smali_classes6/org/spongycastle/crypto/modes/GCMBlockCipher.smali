.class public Lorg/spongycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x10


# instance fields
.field private H:[B

.field private J0:[B

.field private S:[B

.field private S_at:[B

.field private S_atPre:[B

.field private atBlock:[B

.field private atBlockPos:I

.field private atLength:J

.field private atLengthPre:J

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private counter:[B

.field private exp:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private macBlock:[B

.field private macSize:I

.field private multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

.field private nonce:[B

.field private totalLength:J


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_0

    .line 69
    new-instance p2, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;

    invoke-direct {p2}, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;-><init>()V

    .line 72
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 73
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    return-void

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cipher required with a block size of 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private gCTRBlock([B[BI)V
    .locals 3

    .line 475
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    move-result-object v0

    .line 477
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 478
    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-boolean p3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz p3, :cond_0

    move-object p1, v0

    :cond_0
    invoke-direct {p0, p2, p1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 482
    iget-wide p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v0, 0x10

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void
.end method

.method private gCTRPartial([BII[BI)V
    .locals 1

    .line 487
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    move-result-object v0

    .line 489
    invoke-static {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    const/4 p2, 0x0

    .line 490
    invoke-static {v0, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    iget-object p4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-boolean p5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    invoke-direct {p0, p4, p1, p2, p3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 494
    iget-wide p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void
.end method

.method private gHASH([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    sub-int v1, p3, v0

    const/16 v2, 0x10

    .line 501
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 502
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    return-void
.end method

.method private gHASHBlock([B[B)V
    .locals 0

    .line 508
    invoke-static {p1, p2}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 509
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p2, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private gHASHPartial([B[BII)V
    .locals 0

    .line 514
    invoke-static {p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    .line 515
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p2, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private getNextCounterBlock()[B
    .locals 4

    const/16 v0, 0xf

    :goto_0
    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 522
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 523
    aput-byte v2, v1, v0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 533
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-object v0
.end method

.method private initCipher()V
    .locals 8

    .line 248
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const/16 v2, 0x10

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-lez v6, :cond_0

    .line 250
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 255
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_1

    .line 257
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v1, v6, v5, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 258
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v6, v6

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 261
    :cond_1
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v6, v0, v3

    if-lez v6, :cond_2

    .line 263
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private outputBlock([BI)V
    .locals 5

    .line 303
    array-length v0, p1

    add-int/lit8 v1, p2, 0x10

    if-lt v0, v1, :cond_2

    .line 307
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 309
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([B[BI)V

    .line 312
    iget-boolean p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 314
    iput p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    goto :goto_0

    .line 318
    :cond_1
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    const/16 v1, 0x10

    invoke-static {p1, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    iput p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    :goto_0
    return-void

    .line 305
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private reset(Z)V
    .locals 4

    .line 444
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 446
    iput-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    new-array v1, v0, [B

    .line 447
    iput-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    new-array v1, v0, [B

    .line 448
    iput-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    new-array v0, v0, [B

    .line 449
    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    const/4 v0, 0x0

    .line 450
    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const-wide/16 v1, 0x0

    .line 451
    iput-wide v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 452
    iput-wide v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 453
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 454
    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 455
    iput-wide v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 457
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v1, :cond_0

    .line 459
    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 464
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 467
    :cond_1
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz p1, :cond_2

    .line 469
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    :cond_2
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 326
    iget-wide v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-nez v2, :cond_0

    .line 328
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 331
    :cond_0
    iget v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 332
    iget-boolean v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v1, :cond_2

    .line 334
    iget v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-lt v0, v1, :cond_1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 336
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    move v10, v0

    const-string v11, "Output buffer too short"

    if-lez v10, :cond_4

    .line 343
    array-length v0, v7

    add-int v1, p2, v10

    if-lt v0, v1, :cond_3

    .line 347
    iget-object v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v3, v10

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gCTRPartial([BII[BI)V

    goto :goto_1

    .line 345
    :cond_3
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    invoke-direct {v0, v11}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_4
    :goto_1
    iget-wide v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget v2, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 352
    iget-wide v3, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    const-wide/16 v12, 0x8

    const/16 v5, 0x10

    const/4 v14, 0x0

    cmp-long v15, v0, v3

    if-lez v15, :cond_8

    if-lez v2, :cond_5

    .line 364
    iget-object v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {v6, v0, v1, v14, v2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 368
    :cond_5
    iget-wide v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v2, v0, v8

    if-lez v2, :cond_6

    .line 370
    iget-object v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 374
    :cond_6
    iget-wide v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long v0, v0, v12

    const-wide/16 v2, 0x7f

    add-long/2addr v0, v2

    const/4 v2, 0x7

    ushr-long/2addr v0, v2

    new-array v2, v5, [B

    .line 378
    iget-object v3, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    if-nez v3, :cond_7

    .line 380
    new-instance v3, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;

    invoke-direct {v3}, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;-><init>()V

    iput-object v3, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    .line 381
    iget-object v4, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v3, v4}, Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    .line 383
    :cond_7
    iget-object v3, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    invoke-interface {v3, v0, v1, v2}, Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    .line 386
    iget-object v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    .line 389
    iget-object v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-object v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    :cond_8
    new-array v0, v5, [B

    .line 394
    iget-wide v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    mul-long v1, v1, v12

    invoke-static {v1, v2, v0, v14}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 395
    iget-wide v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long v1, v1, v12

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 397
    iget-object v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {v6, v1, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    new-array v0, v5, [B

    .line 401
    iget-object v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {v1, v2, v14, v0, v14}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 402
    iget-object v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 407
    iget v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v2, v1, [B

    iput-object v2, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 408
    invoke-static {v0, v14, v2, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    iget-boolean v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_a

    .line 412
    array-length v0, v7

    add-int v1, p2, v10

    iget v2, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_9

    .line 417
    iget-object v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v1, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v1, p2, v1

    invoke-static {v0, v14, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    iget v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v10, v0

    goto :goto_2

    .line 414
    :cond_9
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    invoke-direct {v0, v11}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_a
    iget v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v1, v0, [B

    .line 424
    iget-object v2, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v2, v10, v1, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    iget-object v0, v6, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 431
    :goto_2
    invoke-direct {v6, v14}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    return v10

    .line 427
    :cond_b
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check in GCM failed"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/GCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1

    .line 195
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 197
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 199
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr p1, v0

    return p1

    .line 202
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    .line 207
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 208
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v0, :cond_1

    .line 210
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    .line 216
    :cond_1
    rem-int/lit8 v0, p1, 0x10

    sub-int/2addr p1, v0

    return p1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 93
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 98
    instance-of v1, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    const/16 v2, 0x8

    const/16 v3, 0x10

    if-eqz v1, :cond_1

    .line 100
    check-cast p2, Lorg/spongycastle/crypto/params/AEADParameters;

    .line 102
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    .line 103
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 105
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v1

    const/16 v4, 0x20

    if-lt v1, v4, :cond_0

    const/16 v4, 0x80

    if-gt v1, v4, :cond_0

    .line 106
    rem-int/lit8 v4, v1, 0x8

    if-nez v4, :cond_0

    .line 111
    div-int/2addr v1, v2

    iput v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 112
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p2

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value for MAC size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_1
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_8

    .line 116
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 118
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    .line 119
    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 120
    iput v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 121
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, 0x10

    goto :goto_1

    .line 128
    :cond_2
    iget p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr p1, v3

    .line 129
    :goto_1
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    .line 131
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz p1, :cond_7

    array-length p1, p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_7

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 142
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v4, v1, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    new-array p2, v3, [B

    .line 144
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    .line 145
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v4, p2, p1, p2, p1}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 148
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {p2, v4}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 149
    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    goto :goto_2

    .line 151
    :cond_3
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    if-eqz p2, :cond_6

    :goto_2
    new-array p2, v3, [B

    .line 156
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    .line 158
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v4, v0

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    .line 160
    array-length v2, v0

    invoke-static {v0, p1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/16 v0, 0xf

    aput-byte v1, p2, v0

    goto :goto_3

    .line 165
    :cond_4
    array-length v1, v0

    invoke-direct {p0, p2, v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASH([B[BI)V

    new-array p2, v3, [B

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v4, 0x8

    mul-long v0, v0, v4

    invoke-static {v0, v1, p2, v2}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 168
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    :goto_3
    new-array p2, v3, [B

    .line 171
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    new-array p2, v3, [B

    .line 172
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    new-array p2, v3, [B

    .line 173
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    new-array p2, v3, [B

    .line 174
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    .line 175
    iput p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const-wide/16 v0, 0x0

    .line 176
    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 177
    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 178
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 179
    iput p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 180
    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 182
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz p2, :cond_5

    .line 184
    array-length v0, p2

    invoke-virtual {p0, p2, p1, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    :cond_5
    return-void

    .line 153
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key must be specified in initial init"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV must be at least 1 byte"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to GCM"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAADByte(B)V
    .locals 4

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 222
    iput v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 p1, 0x10

    if-ne v1, p1, :cond_0

    .line 225
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    const/4 p1, 0x0

    .line 226
    iput p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 227
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    :cond_0
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 235
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 236
    iput v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    .line 239
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-direct {p0, v3, v2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 240
    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 241
    iget-wide v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processByte(B[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 271
    iput v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    array-length p1, v0

    if-ne v1, p1, :cond_0

    .line 273
    invoke-direct {p0, p2, p3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->outputBlock([BI)V

    const/16 p1, 0x10

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 282
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 290
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 291
    iput v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    array-length v2, v2

    if-ne v3, v2, :cond_0

    add-int v2, p5, v1

    .line 293
    invoke-direct {p0, p4, v2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->outputBlock([BI)V

    add-int/lit8 v1, v1, 0x10

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 284
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 438
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    return-void
.end method
