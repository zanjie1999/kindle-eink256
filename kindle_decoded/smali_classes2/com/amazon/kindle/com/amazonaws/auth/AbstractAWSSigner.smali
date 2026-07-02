.class public abstract Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;
.super Ljava/lang/Object;
.source "AbstractAWSSigner.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/Signer;


# static fields
.field private static final BUFFER_SIZE_MULTIPLIER:I = 0x5

.field private static final DEFAULT_BUFFER_SIZE:I = 0x400

.field private static final SHA256_MESSAGE_DIGEST:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIME_MILLISEC:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner$1;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->SHA256_MESSAGE_DIGEST:Ljava/lang/ThreadLocal;

    const-string v0, ""

    .line 76
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->doHash(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doHash(Ljava/lang/String;)[B
    .locals 3

    .line 144
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getMessageDigestInstance()Ljava/security/MessageDigest;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 146
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 148
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to compute hash while signing request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getMessageDigestInstance()Ljava/security/MessageDigest;
    .locals 1

    .line 470
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->SHA256_MESSAGE_DIGEST:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 471
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-object v0
.end method


# virtual methods
.method protected getBinaryRequestPayloadStream(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 317
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->usePayloadForQueryParameters(Lcom/amazon/kindle/com/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->encodeParameters(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 320
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    .line 323
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 324
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 327
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getBinaryRequestPayloadStreamWithoutQueryParams(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method protected getBinaryRequestPayloadStreamWithoutQueryParams(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 332
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    .line 337
    :cond_0
    instance-of v1, v0, Lcom/amazon/kindle/com/amazonaws/util/StringInputStream;

    if-eqz v1, :cond_1

    return-object v0

    .line 341
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 342
    :cond_2
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v0, "Unable to read request payload to sign request."

    invoke-direct {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 347
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read request payload to sign request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getBinaryRequestPayloadWithoutQueryParams(Lcom/amazon/kindle/com/amazonaws/Request;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)[B"
        }
    .end annotation

    .line 291
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getBinaryRequestPayloadStreamWithoutQueryParams(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, -0x1

    .line 294
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 295
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1400

    new-array v2, v2, [B

    .line 298
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 306
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 307
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 309
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v4, 0x0

    .line 303
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 311
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read request payload to sign request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getCanonicalizedEndpoint(Ljava/net/URI;)Ljava/lang/String;
    .locals 2

    .line 370
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->isUsingNonDefaultPort(Ljava/net/URI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getCanonicalizedQueryString(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 234
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->usePayloadForQueryParameters(Lcom/amazon/kindle/com/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 237
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getCanonicalizedQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCanonicalizedQueryString(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 205
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 206
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    .line 210
    invoke-static {v2, v3}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 215
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 218
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "&"

    .line 221
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCanonicalizedResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 353
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getCanonicalizedResourcePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCanonicalizedResourcePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    if-eqz p1, :cond_3

    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 360
    invoke-static {p1, p2}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 361
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    .line 364
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected getRequestPayloadWithoutQueryParams(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 279
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getBinaryRequestPayloadWithoutQueryParams(Lcom/amazon/kindle/com/amazonaws/Request;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->newString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSignatureDate(I)Ljava/util/Date;
    .locals 4

    .line 436
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 440
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method protected getTimeOffset(Lcom/amazon/kindle/com/amazonaws/Request;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)I"
        }
    .end annotation

    .line 446
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getTimeOffset()I

    move-result p1

    .line 447
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/SDKGlobalConfiguration;->getGlobalTimeOffset()I

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/SDKGlobalConfiguration;->getGlobalTimeOffset()I

    move-result p1

    :cond_0
    return p1
.end method

.method protected hash(Ljava/io/InputStream;)[B
    .locals 3

    .line 158
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getMessageDigestInstance()Ljava/security/MessageDigest;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/internal/SdkDigestInputStream;

    invoke-direct {v1, p1, v0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkDigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 162
    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/DigestInputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 167
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to compute hash while signing request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hash(Ljava/lang/String;)[B
    .locals 0

    .line 139
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->doHash(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public hash([B)[B
    .locals 3

    :try_start_0
    const-string v0, "SHA-256"

    .line 181
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 183
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 185
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to compute hash while signing request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected newString([B)Ljava/lang/String;
    .locals 2

    .line 432
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method protected sanitizeCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;
    .locals 3

    .line 401
    monitor-enter p1

    .line 402
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v1

    .line 404
    instance-of v2, p1, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    if-eqz v2, :cond_0

    .line 405
    move-object v2, p1

    check-cast v2, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 407
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 412
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v2, :cond_3

    .line 415
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 418
    :cond_3
    instance-of p1, p1, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    if-eqz p1, :cond_4

    .line 419
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 422
    :cond_4
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/auth/BasicAWSCredentials;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/BasicAWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception v0

    .line 407
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sign(Ljava/lang/String;[BLcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)[B
    .locals 1

    .line 112
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sign([B[BLcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 115
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to calculate a request signature: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected sign([B[BLcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)[B
    .locals 2

    .line 122
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 123
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 124
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 126
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to calculate a request signature: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected signAndBase64Encode(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;
    .locals 1

    .line 85
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->signAndBase64Encode([BLjava/lang/String;Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected signAndBase64Encode([BLjava/lang/String;Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;
    .locals 1

    .line 95
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sign([B[BLcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 98
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to calculate a request signature: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
