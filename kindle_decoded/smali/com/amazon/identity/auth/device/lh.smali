.class public Lcom/amazon/identity/auth/device/lh;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.lh"

.field private static final tN:[B


# instance fields
.field private tO:Ljava/lang/String;

.field private final tP:Lcom/amazon/identity/auth/device/kn;

.field private tQ:Ljava/lang/String;

.field private tR:Z

.field private tS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 34
    sput-object v0, Lcom/amazon/identity/auth/device/lh;->tN:[B

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/kn;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/amazon/identity/auth/device/lh;->tO:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lh;->tP:Lcom/amazon/identity/auth/device/kn;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/lh;->tR:Z

    .line 49
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/lh;->tS:Z

    return-void
.end method

.method private static a([BLjava/security/PrivateKey;)[B
    .locals 2

    :try_start_0
    const-string v0, "SHA-256"

    .line 337
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 338
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 339
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 341
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 342
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 343
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->update([B)[B

    .line 344
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    .line 364
    sget-object p1, Lcom/amazon/identity/auth/device/lh;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "signWithOldAuth: failed because of InvalidKeyException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 360
    sget-object p1, Lcom/amazon/identity/auth/device/lh;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "signWithOldAuth: failed because of BadPaddingException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 356
    sget-object p1, Lcom/amazon/identity/auth/device/lh;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "signWithOldAuth: failed because of IllegalBlockSizeException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 352
    sget-object p1, Lcom/amazon/identity/auth/device/lh;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "signWithOldAuth: failed because of NoSuchPaddingException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 348
    sget-object p1, Lcom/amazon/identity/auth/device/lh;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "signWithOldAuth: failed because of NoSuchAlgorithmException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private b([BLjava/security/PrivateKey;)[B
    .locals 2

    .line 377
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/lh;->ih()V

    .line 378
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lh;->tO:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 379
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 381
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 382
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 394
    sget-object p2, Lcom/amazon/identity/auth/device/lh;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "signWithNewAuth: failed because of SignatureException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 390
    sget-object p2, Lcom/amazon/identity/auth/device/lh;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "signWithNewAuth: failed because of InvalidKeyException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 386
    sget-object p2, Lcom/amazon/identity/auth/device/lh;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "signWithNewAuth: failed because of NoSuchAlgorithmException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private ih()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lh;->tO:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lh;->tP:Lcom/amazon/identity/auth/device/kn;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/kn;->ht()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/lh;->tO:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ma;)Ljava/lang/String;
    .locals 10

    .line 176
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ma;->iD()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/lh;->tS:Z

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ma;->iA()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "/"

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/amazon/identity/auth/device/lh;->tS:Z

    if-eqz v2, :cond_2

    .line 199
    sget-object p2, Lcom/amazon/identity/auth/device/lh;->tN:[B

    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ma;->iF()[B

    move-result-object p2

    .line 207
    :goto_1
    iget-object v2, p0, Lcom/amazon/identity/auth/device/lh;->tQ:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1136
    :cond_3
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1137
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1139
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-nez v2, :cond_4

    goto :goto_4

    .line 2077
    :cond_4
    invoke-static {v0}, Lcom/amazon/identity/auth/device/jd;->dD(Ljava/lang/String;)[B

    move-result-object v0

    .line 2078
    invoke-static {v1}, Lcom/amazon/identity/auth/device/jd;->dD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2079
    invoke-static {v2}, Lcom/amazon/identity/auth/device/jd;->dD(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz p2, :cond_5

    .line 2083
    array-length v7, p2

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 2089
    :goto_3
    invoke-static {p1}, Lcom/amazon/identity/auth/device/jd;->dD(Ljava/lang/String;)[B

    move-result-object p1

    .line 2093
    array-length v8, v0

    add-int/2addr v8, v4

    array-length v9, v1

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    array-length v9, v6

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    array-length v7, p1

    add-int/2addr v8, v7

    new-array v7, v8, [B

    .line 2099
    array-length v8, v0

    invoke-static {v0, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2100
    array-length v0, v0

    add-int/2addr v0, v5

    const/16 v8, 0xa

    .line 2101
    aput-byte v8, v7, v0

    add-int/2addr v0, v4

    .line 2105
    array-length v9, v1

    invoke-static {v1, v5, v7, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2106
    array-length v1, v1

    add-int/2addr v0, v1

    .line 2107
    aput-byte v8, v7, v0

    add-int/2addr v0, v4

    .line 2111
    array-length v1, v6

    invoke-static {v6, v5, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2112
    array-length v1, v6

    add-int/2addr v0, v1

    .line 2113
    aput-byte v8, v7, v0

    add-int/2addr v0, v4

    if-eqz p2, :cond_6

    .line 2119
    array-length v1, p2

    invoke-static {p2, v5, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2120
    array-length p2, p2

    add-int/2addr v0, p2

    .line 2122
    :cond_6
    aput-byte v8, v7, v0

    add-int/2addr v0, v4

    .line 2126
    array-length p2, p1

    invoke-static {p1, v5, v7, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object v7, v3

    :goto_5
    if-nez v7, :cond_8

    return-object v3

    .line 222
    :cond_8
    invoke-virtual {p0, v7}, Lcom/amazon/identity/auth/device/lh;->a([B)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    return-object v3

    :cond_9
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v5

    aput-object v2, p2, v4

    const-string p1, "%s:%s"

    .line 230
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Ljava/lang/String;
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lh;->tP:Lcom/amazon/identity/auth/device/kn;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/kn;->hu()Ljava/security/PrivateKey;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 307
    :cond_0
    iget-boolean v2, p0, Lcom/amazon/identity/auth/device/lh;->tR:Z

    if-eqz v2, :cond_2

    .line 309
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/lh;->ih()V

    .line 310
    iget-object v2, p0, Lcom/amazon/identity/auth/device/lh;->tO:Ljava/lang/String;

    const-string v3, "SHA256WithRSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    sget-object v2, Lcom/amazon/identity/auth/device/lh;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Try to use legacy auth when the algorithm is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/identity/auth/device/lh;->tO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_1
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/lh;->a([BLjava/security/PrivateKey;)[B

    move-result-object p1

    goto :goto_0

    .line 318
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/lh;->b([BLjava/security/PrivateKey;)[B

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 323
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public b(Lcom/amazon/identity/auth/device/ma;)Z
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lh;->tP:Lcom/amazon/identity/auth/device/kn;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/kn;->x()Lcom/amazon/identity/auth/device/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/a;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 152
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/lh;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ma;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    return v1

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/lh;->ik()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/lh;->ij()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/lh;->il()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/lh;->il()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/lh;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/identity/auth/device/ma;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 156
    sget-object v0, Lcom/amazon/identity/auth/device/lh;->TAG:Ljava/lang/String;

    const-string v2, "Exception in getting ADP signature."

    invoke-static {v0, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public ig()Ljava/lang/String;
    .locals 2

    .line 236
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/lh;->tR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/lh;->ih()V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/lh;->tO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ii()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/lh;->tR:Z

    return v0
.end method

.method public ij()Ljava/lang/String;
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/lh;->tR:Z

    if-eqz v0, :cond_0

    const-string v0, "X-ADP-Authentication-Token"

    return-object v0

    :cond_0
    const-string/jumbo v0, "x-adp-token"

    return-object v0
.end method

.method public ik()Ljava/lang/String;
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/lh;->tR:Z

    if-eqz v0, :cond_0

    const-string v0, "X-ADP-Request-Digest"

    return-object v0

    :cond_0
    const-string/jumbo v0, "x-adp-signature"

    return-object v0
.end method

.method public il()Ljava/lang/String;
    .locals 1

    .line 426
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/lh;->tR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "x-adp-alg"

    return-object v0
.end method

.method public l(Z)V
    .locals 2

    .line 263
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/lh;->tR:Z

    if-eqz p1, :cond_1

    .line 269
    sget-object p1, Lcom/amazon/identity/auth/device/lh;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Try to set useLegacyAuthentication to be true when algorithm is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/lh;->tO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/amazon/identity/auth/device/lh;->tP:Lcom/amazon/identity/auth/device/kn;

    if-eqz p1, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/lh;->ih()V

    .line 273
    iget-object p1, p0, Lcom/amazon/identity/auth/device/lh;->tO:Ljava/lang/String;

    const-string v0, "SHA256WithRSA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LegacyAuthentication is not compatible with algorithm:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/lh;->tO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
