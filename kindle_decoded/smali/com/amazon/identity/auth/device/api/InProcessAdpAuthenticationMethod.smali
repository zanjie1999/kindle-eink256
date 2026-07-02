.class Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;
.super Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/ADPCorpusSigningAuthenticationMethod;


# static fields
.field static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.InProcessAdpAuthenticationMethod"

.field private static final aq:J

.field private static final ga:[B


# instance fields
.field private final as:Lcom/amazon/identity/auth/device/api/TokenManagement;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->d(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->aq:J

    const-string v0, "\n"

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->ga:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V

    .line 71
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    const-string p2, "dcp_token_mangement"

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    .line 73
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    const-string p2, "dcp_token_mangement"

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    .line 85
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 6

    const-string v0, "/"

    const/4 v1, 0x0

    .line 454
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p2, :cond_0

    .line 458
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string p2, "No verb specified. Cannot create corpus"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    const-string v3, "BustedIdentityADPAuthenticator"

    if-nez p1, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 9504
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9506
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9509
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, ""

    .line 9515
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 9517
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9520
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p1

    .line 9521
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 9523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    move-object p1, v4

    :goto_0
    if-nez p1, :cond_6

    .line 465
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string p2, "No path specified. Cannot create corpus"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 9531
    :cond_6
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    new-array p3, v3, [B

    goto :goto_1

    :cond_7
    if-nez p3, :cond_8

    new-array p3, v3, [B

    :cond_8
    :goto_1
    if-nez p5, :cond_9

    .line 473
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string p2, "Unable to retrieve ADP token for given account. Cannot generate corpus."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 477
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 478
    sget-object p2, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->ga:[B

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 479
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 480
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->ga:[B

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 481
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 482
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->ga:[B

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 483
    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 484
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->ga:[B

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 485
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 487
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 491
    sget-object p2, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string p3, "Could not construct a corpus because an IOException occured"

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static a([BLjava/security/PrivateKey;)[B
    .locals 2

    :try_start_0
    const-string v0, "SHA-256"

    .line 384
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 386
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 388
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 389
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 390
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->update([B)[B

    .line 391
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

    .line 413
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Signing request with old auth failed because of InvalidKeyException: "

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

    .line 409
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Signing request with old auth failed because of BadPaddingException: "

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

    .line 404
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Signing request with old auth failed because of IllegalBlockSizeException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 404
    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 400
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Signing request with old auth failed because of NoSuchPaddingException: "

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

    .line 395
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Signing request with old auth failed because of NoSuchAlgorithmException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 395
    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private b([BLjava/security/PrivateKey;)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA256WithRSA"

    .line 424
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 425
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 427
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 428
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 440
    sget-object p2, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v0, "Request signing failed because there was a problem with the signature"

    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 436
    sget-object p2, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v0, "Request signing failed because it was given an invalid key"

    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 432
    sget-object p2, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v0, "Request signing failed because of No such algorithm found."

    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private bg()Z
    .locals 2

    .line 546
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->DeviceAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getOptions()Landroid/os/Bundle;
    .locals 3

    .line 560
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ignore.platform.restrictions"

    const/4 v2, 0x1

    .line 561
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getPrivateKey()Ljava/security/PrivateKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;
        }
    .end annotation

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bM:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->mPackageName:Ljava/lang/String;

    .line 337
    invoke-static {v2}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getPrivateKeyKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->getOptions()Landroid/os/Bundle;

    move-result-object v3

    sget-wide v4, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->aq:J

    .line 336
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ii;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 370
    sget-object v1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting private key failed because of TimeoutException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 366
    sget-object v1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting private key failed because of ExecutionException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 362
    sget-object v1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting private key failed because of InterruptedException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 348
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.amazon.identity.mobi.account.recover.context"

    .line 349
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 356
    sget-object v1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting private key failed because of callback error. Error Bundle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v2, "Getting private key failed because of BackwardsCompatibleDataStorageException"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {v1}, Lcom/amazon/identity/auth/device/fl;->B(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    .line 354
    new-instance v1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;-><init>(Lcom/amazon/identity/auth/device/fl;)V

    throw v1

    :catch_4
    move-exception v0

    .line 344
    sget-object v1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v2, "Could not sign request because there was an invalid key"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->bg()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->a([BLjava/security/PrivateKey;)[B

    move-result-object p1

    goto :goto_0

    .line 320
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->b([BLjava/security/PrivateKey;)[B

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 325
    new-instance v1, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    :cond_2
    return-object v1
.end method

.method protected getAuthenticationBundle(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            "[B",
            "Lcom/amazon/identity/auth/device/bl;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p5

    const-string v0, "Unable to sign request. Could not retrieve ADP token for account"

    const/4 v9, 0x6

    const/4 v10, 0x0

    .line 111
    :try_start_0
    iget-object v1, v7, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v2, v7, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bM:Ljava/lang/String;

    iget-object v3, v7, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->mPackageName:Ljava/lang/String;

    .line 113
    invoke-static {v3}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAdpTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->getOptions()Landroid/os/Bundle;

    move-result-object v4

    sget-wide v5, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->aq:J

    .line 112
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    if-nez v11, :cond_0

    .line 1288
    invoke-static {v8, v12, v0, v10}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 122
    sget-object v1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 2282
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->getCurrentTimestamp()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object v5, v0

    move-object v6, v11

    .line 2283
    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->a(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 2291
    :cond_1
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->a([B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "%s:%s"

    new-array v3, v12, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    .line 2299
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2287
    :cond_3
    :goto_0
    sget-object v0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v1, "Could not sign request because we were unable to create a corpus"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v10

    :goto_2
    if-nez v0, :cond_4

    const-string v0, "Unable to sign request. Could not generate ADP signature. Please check provided parameters."

    const/4 v1, 0x3

    .line 3288
    invoke-static {v8, v1, v0, v10}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 132
    sget-object v0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v1, "Unable to sign request. Could not generate ADP signature."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 136
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4254
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->bg()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "X-ADP-Request-Digest"

    goto :goto_3

    :cond_5
    const-string/jumbo v2, "x-adp-signature"

    .line 137
    :goto_3
    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jm;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 5242
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->bg()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "X-ADP-Authentication-Token"

    goto :goto_4

    :cond_6
    const-string/jumbo v0, "x-adp-token"

    .line 138
    :goto_4
    invoke-static {v1, v0, v11}, Lcom/amazon/identity/auth/device/jm;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 5266
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->bg()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v10

    goto :goto_5

    :cond_7
    const-string/jumbo v0, "x-adp-alg"

    :goto_5
    if-eqz v0, :cond_9

    .line 6230
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->bg()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v10

    goto :goto_6

    :cond_8
    const-string v2, "SHA256WithRSA:1.0"

    .line 143
    :goto_6
    invoke-static {v1, v0, v2}, Lcom/amazon/identity/auth/device/jm;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v8, :cond_a

    .line 148
    invoke-virtual {v8, v1}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return-object v8

    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;->eE()Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 216
    sget-object v1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v2, "Getting ADP token failed. Return recover bundle"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Getting ADP Token failed bacause of BackwardsCompatibleDataStorageException"

    .line 217
    invoke-static {v8, v9, v1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 222
    :cond_b
    sget-object v0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v1, "Getting ADP Token failed because of BackwardsCompatibleDataStorageException."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_1
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting ADP Token failed because of TimeoutException. This happens when the timeout passed into the future object occurs. Exception message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9288
    invoke-static {v8, v9, v1, v10}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 206
    sget-object v1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_2
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting ADP Token failed because of ExecutionException. This can happen when the thread or task was aborted. Exception message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8288
    invoke-static {v8, v9, v1, v10}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 195
    sget-object v1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_3
    move-exception v0

    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting ADP Token failed because of InterruptedException. This can happen if the caller kills the thread or asnc task that is calling MAP\'s api. Exception message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7288
    invoke-static {v8, v9, v1, v10}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 184
    sget-object v1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_4
    move-exception v0

    .line 155
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 156
    invoke-static {v0}, Lcom/amazon/identity/auth/device/fl;->a(Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    const-string v2, "Getting ADP Token failed because of callback error. Error Bundle: "

    if-nez v0, :cond_c

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6288
    invoke-static {v8, v9, v0, v10}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 174
    sget-object v0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-object v8

    .line 159
    :cond_c
    sget-object v3, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v4, "Getting ADP token failed and return recover bundle"

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object v2

    .line 160
    invoke-static {v8, v9, v1, v2}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 165
    new-instance v1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fl;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Database is corrupted"

    invoke-direct {v1, v2, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    throw v1
.end method

.method protected getCurrentTimestamp()Ljava/lang/String;
    .locals 3

    .line 552
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 553
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 555
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public signCorpus([BLandroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance p2, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p2, p3}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    if-nez p1, :cond_0

    .line 571
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/hm;->b(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)V

    return-object p2

    .line 575
    :cond_0
    iget-object p3, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bM:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bM:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 583
    :cond_1
    iget-object p3, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bM:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->mPackageName:Ljava/lang/String;

    .line 584
    invoke-static {v1}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAdpTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;->getOptions()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod$1;-><init>(Lcom/amazon/identity/auth/device/api/InProcessAdpAuthenticationMethod;[BLcom/amazon/identity/auth/device/bl;)V

    .line 583
    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x2

    const-string p3, "The account is not valid or no longer registered."

    .line 577
    invoke-static {p2, p1, p3}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    return-object p2
.end method
