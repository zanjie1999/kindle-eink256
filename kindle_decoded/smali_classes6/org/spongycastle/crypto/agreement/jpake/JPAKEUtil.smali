.class public Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;
.super Ljava/lang/Object;
.source "JPAKEUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 27
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    .line 28
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    return-void
.end method

.method private static calculateMacKey(Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)[B
    .locals 1

    .line 382
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 384
    invoke-static {p1, p0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigest(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V

    const-string p0, "JPAKE_KC"

    .line 388
    invoke-static {p1, p0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateDigest(Lorg/spongycastle/crypto/Digest;Ljava/lang/String;)V

    .line 390
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    new-array p0, p0, [B

    const/4 v0, 0x0

    .line 391
    invoke-interface {p1, p0, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-object p0
.end method

.method public static calculateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)Ljava/math/BigInteger;
    .locals 2

    .line 347
    invoke-static {p6, p7}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateMacKey(Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)[B

    move-result-object p6

    .line 351
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v0, p7}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 352
    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result p7

    new-array p7, p7, [B

    .line 353
    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p6}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    const-string v1, "KC_1_U"

    .line 358
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/lang/String;)V

    .line 359
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/lang/String;)V

    .line 360
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/lang/String;)V

    .line 361
    invoke-static {v0, p2}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/math/BigInteger;)V

    .line 362
    invoke-static {v0, p3}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/math/BigInteger;)V

    .line 363
    invoke-static {v0, p4}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/math/BigInteger;)V

    .line 364
    invoke-static {v0, p5}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->updateMac(Lorg/spongycastle/crypto/Mac;Ljava/math/BigInteger;)V

    const/4 p0, 0x0

    .line 366
    invoke-virtual {v0, p7, p0}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 368
    invoke-static {p6, p0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 370
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p7}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method private static updateDigest(Lorg/spongycastle/crypto/Digest;Ljava/lang/String;)V
    .locals 2

    .line 458
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 459
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 460
    invoke-static {p1, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateDigest(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V
    .locals 2

    .line 443
    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    .line 444
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 445
    invoke-static {p1, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateMac(Lorg/spongycastle/crypto/Mac;Ljava/lang/String;)V
    .locals 2

    .line 480
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 481
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 482
    invoke-static {p1, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateMac(Lorg/spongycastle/crypto/Mac;Ljava/math/BigInteger;)V
    .locals 2

    .line 473
    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    .line 474
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 475
    invoke-static {p1, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method public static validateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    move-object v0, p1

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p6

    move-object v7, p7

    .line 423
    invoke-static/range {v0 .. v7}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, p8

    .line 433
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/CryptoException;

    const-string v1, "Partner MacTag validation failed. Therefore, the password, MAC, or digest algorithm of each participant does not match."

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 314
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not be null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
