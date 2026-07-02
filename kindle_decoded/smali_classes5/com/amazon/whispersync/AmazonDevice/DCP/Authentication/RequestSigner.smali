.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;
.super Ljava/lang/Object;
.source "RequestSigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;
    }
.end annotation


# instance fields
.field private final mAuthProvider:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;

.field private mOverriddenTimestamp:Ljava/lang/String;

.field private mUseBustedIdentityBehavior:Z

.field private mUseLegacyAuth:Z


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mAuthProvider:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mUseLegacyAuth:Z

    .line 176
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mUseBustedIdentityBehavior:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mUseBustedIdentityBehavior:Z

    return p0
.end method

.method private parseKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 5

    const-string v0, "RSA"

    const-string v1, ""

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "-----BEGIN RSA PRIVATE KEY-----"

    .line 374
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "-----END RSA PRIVATE KEY-----"

    .line 375
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "-----BEGIN PRIVATE KEY-----"

    .line 376
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "-----END PRIVATE KEY-----"

    .line 377
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    .line 380
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object p1

    .line 382
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "BC"

    .line 387
    invoke-static {v0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 394
    :catch_0
    :try_start_2
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 397
    :goto_0
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseKey: failed because of an Unsupported Encoding UTF-8: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseKey: Could not parse private key because it was invalid. Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseKey: Could not parse private key because of no RSA algorithm. Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v2
.end method

.method private signWithNewAuth([BLjava/security/PrivateKey;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA256withRSA"

    .line 342
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 343
    invoke-virtual {v1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 345
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 346
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 358
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "signWithNewAuth: failed because of SignatureException: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "signWithNewAuth: failed because of InvalidKeyException: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "signWithNewAuth: failed because of NoSuchAlgorithmException: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private signWithOldAuth([BLjava/security/PrivateKey;)[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA-256"

    .line 303
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 304
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 305
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 307
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 308
    invoke-virtual {v1, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 309
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 310
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 330
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "signWithOldAuth: failed because of InvalidKeyException: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 326
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "signWithOldAuth: failed because of BadPaddingException: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "signWithOldAuth: failed because of IllegalBlockSizeException: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "signWithOldAuth: failed because of NoSuchPaddingException: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "signWithOldAuth: failed because of NoSuchAlgorithmException: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public getAdpAlgorithm()Ljava/lang/String;
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mUseLegacyAuth:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "SHA256WithRSA:1.0"

    return-object v0
.end method

.method public getAdpAlgorithmHeaderName()Ljava/lang/String;
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mUseLegacyAuth:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "x-adp-alg"

    return-object v0
.end method

.method public getAdpSignature(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;)Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mAuthProvider:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;

    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mOverriddenTimestamp:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;-><init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->isValid()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "RequestSigner: signRequest: unable to sign request, confirm that the ITokenAuthProvider implementation is providing correct token."

    .line 202
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 207
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->getCorpus()[B

    move-result-object p1

    .line 208
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner$CorpusBuilder;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->signBufferAsBase64([B)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "%s:%s"

    .line 223
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v2
.end method

.method public getAdpSignatureHeaderName()Ljava/lang/String;
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mUseLegacyAuth:Z

    if-eqz v0, :cond_0

    const-string v0, "X-ADP-Request-Digest"

    return-object v0

    :cond_0
    const-string/jumbo v0, "x-adp-signature"

    return-object v0
.end method

.method public getAdpToken()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mAuthProvider:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdpTokenHeaderName()Ljava/lang/String;
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mUseLegacyAuth:Z

    if-eqz v0, :cond_0

    const-string v0, "X-ADP-Authentication-Token"

    return-object v0

    :cond_0
    const-string/jumbo v0, "x-adp-token"

    return-object v0
.end method

.method public getUseLegacyAuthentication()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mUseLegacyAuth:Z

    return v0
.end method

.method public setUseBustedIdentityBehavior(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mUseBustedIdentityBehavior:Z

    return-void
.end method

.method public setUseLegacyAuthentication(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mUseLegacyAuth:Z

    return-void
.end method

.method public signBufferAsBase64([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mAuthProvider:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;->getPrivateKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->parseKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 276
    :cond_0
    iget-boolean v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mUseLegacyAuth:Z

    if-eqz v2, :cond_1

    .line 278
    invoke-direct {p0, p1, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->signWithOldAuth([BLjava/security/PrivateKey;)[B

    move-result-object p1

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->signWithNewAuth([BLjava/security/PrivateKey;)[B

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 287
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "signBufferAsBase64: Failed to sign because UTF-8 is an unsupported encoding"

    .line 292
    invoke-static {v1, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public signRequest(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;)Z
    .locals 2

    .line 181
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->getAdpSignature(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->getAdpSignatureHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->getAdpTokenHeaderName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mAuthProvider:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->getAdpAlgorithmHeaderName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->getAdpAlgorithmHeaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->getAdpAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public testOverrideTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->mOverriddenTimestamp:Ljava/lang/String;

    return-void
.end method
