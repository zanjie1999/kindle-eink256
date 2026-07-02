.class public Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;
.super Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;
.source "AWS4Signer.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/ServiceAwareSigner;
.implements Lcom/amazon/kindle/com/amazonaws/auth/RegionAwareSigner;
.implements Lcom/amazon/kindle/com/amazonaws/auth/Presigner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;
    }
.end annotation


# static fields
.field private static final DATE_PATTERN:Ljava/lang/String; = "yyyyMMdd"

.field private static final MAX_EXPIRATION_TIME_IN_SECONDS:J = 0x93a80L

.field private static final MILLISEC:J = 0x3e8L

.field private static final TIME_PATTERN:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss\'Z\'"

.field protected static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field protected doubleUrlEncode:Z

.field protected overriddenDate:Ljava/util/Date;

.field protected regionName:Ljava/lang/String;

.field protected serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    const-class v0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;-><init>()V

    .line 89
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->doubleUrlEncode:Z

    return-void
.end method


# virtual methods
.method protected addHostHeader(Lcom/amazon/kindle/com/amazonaws/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    .line 331
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->isUsingNonDefaultPort(Ljava/net/URI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "Host"

    .line 335
    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected addSessionCredentials(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;",
            ")V"
        }
    .end annotation

    .line 180
    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "x-amz-security-token"

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected calculateContentHash(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 354
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getBinaryRequestPayloadStream(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, -0x1

    .line 355
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->hash(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 358
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 360
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v1, "Unable to reset stream after calculating AWS4 signature"

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected calculateContentHashPresign(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 483
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->calculateContentHash(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final computeSignature(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;"
        }
    .end annotation

    .line 290
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->extractRegionName(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->extractServiceName(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "aws4_request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {p0, p1, p5}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getCanonicalRequest(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {p0, p4, p3, v2, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getStringToSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "AWS4"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p6}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object p5, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 300
    invoke-virtual {p4, p5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    .line 301
    sget-object p5, Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;

    invoke-virtual {p0, p2, p4, p5}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sign(Ljava/lang/String;[BLcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object p2

    .line 302
    sget-object p4, Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;

    invoke-virtual {p0, v0, p2, p4}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sign(Ljava/lang/String;[BLcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object p2

    .line 303
    sget-object p4, Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;

    invoke-virtual {p0, v1, p2, p4}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sign(Ljava/lang/String;[BLcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object p2

    .line 304
    sget-object p4, Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;

    invoke-virtual {p0, v3, p2, p4}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sign(Ljava/lang/String;[BLcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object p2

    .line 306
    sget-object p4, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    sget-object p4, Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;

    invoke-virtual {p0, p1, p2, p4}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sign([B[BLcom/amazon/kindle/com/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object p1

    .line 308
    new-instance p4, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;

    invoke-direct {p4, p3, v2, p2, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V

    return-object p4
.end method

.method protected extractRegionName(Ljava/net/URI;)Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->regionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->serviceName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/AwsHostNameUtils;->parseRegionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected extractServiceName(Ljava/net/URI;)Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->serviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/AwsHostNameUtils;->parseServiceName(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCanonicalRequest(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 253
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Lcom/amazon/kindle/com/amazonaws/util/HttpUtils;->appendUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHttpMethod()Lcom/amazon/kindle/com/amazonaws/http/HttpMethodName;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->doubleUrlEncode:Z

    .line 262
    invoke-virtual {p0, v0, v3}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getCanonicalizedResourcePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getCanonicalizedQueryString(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getCanonicalizedHeaderString(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getSignedHeadersString(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AWS4 Canonical Request: \'\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    return-object p1
.end method

.method protected getCanonicalizedHeaderString(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->needsSign(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-static {v2}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "\\s+"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "\n"

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final getDateFromRequest(Lcom/amazon/kindle/com/amazonaws/Request;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)J"
        }
    .end annotation

    .line 320
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getTimeOffset(Lcom/amazon/kindle/com/amazonaws/Request;)I

    move-result p1

    .line 321
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->getSignatureDate(I)Ljava/util/Date;

    move-result-object p1

    .line 322
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->overriddenDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 325
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getDateStamp(J)Ljava/lang/String;
    .locals 1

    .line 316
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo p1, "yyyyMMdd"

    invoke-static {p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->format(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getScope(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 340
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->extractRegionName(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->extractServiceName(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p1

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "aws4_request"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSignedHeadersString(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    sget-object p1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->needsSign(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ";"

    .line 242
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_1
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getStringToSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0, p4}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->hash(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "AWS4 String to Sign: \'\""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    return-object p1
.end method

.method protected final getTimeStamp(J)Ljava/lang/String;
    .locals 1

    .line 312
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo p1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-static {p1, v0}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->format(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method needsSign(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "date"

    .line 494
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-MD5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "host"

    .line 495
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "x-amz"

    .line 496
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "X-Amz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public presignRequest(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Ljava/util/Date;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 416
    instance-of v0, p2, Lcom/amazon/kindle/com/amazonaws/auth/AnonymousAWSCredentials;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x93a80

    if-eqz p3, :cond_1

    .line 423
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    cmp-long v4, v2, v0

    if-gtz v4, :cond_3

    .line 435
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->addHostHeader(Lcom/amazon/kindle/com/amazonaws/Request;)V

    .line 437
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sanitizeCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v11

    .line 439
    instance-of p2, v11, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    if-eqz p2, :cond_2

    .line 443
    move-object p2, v11

    check-cast p2, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    .line 445
    invoke-interface {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object p2

    const-string p3, "X-Amz-Security-Token"

    .line 443
    invoke-interface {p1, p3, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getDateFromRequest(Lcom/amazon/kindle/com/amazonaws/Request;)J

    move-result-wide p2

    .line 449
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getDateStamp(J)Ljava/lang/String;

    move-result-object v7

    .line 451
    invoke-virtual {p0, p1, v7}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getScope(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getTimeStamp(J)Ljava/lang/String;

    move-result-object v8

    const-string p2, "X-Amz-Algorithm"

    const-string p3, "AWS4-HMAC-SHA256"

    .line 458
    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "X-Amz-Date"

    .line 459
    invoke-interface {p1, p2, v8}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getSignedHeadersString(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "X-Amz-SignedHeaders"

    .line 460
    invoke-interface {p1, p3, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "X-Amz-Expires"

    .line 462
    invoke-interface {p1, p3, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "X-Amz-Credential"

    .line 464
    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->calculateContentHashPresign(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object v10

    const-string v9, "AWS4-HMAC-SHA256"

    move-object v5, p0

    move-object v6, p1

    .line 468
    invoke-virtual/range {v5 .. v11}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->computeSignature(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;

    move-result-object p2

    .line 472
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->getSignature()[B

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object p2

    const-string p3, "X-Amz-Signature"

    .line 471
    invoke-interface {p1, p3, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 428
    :cond_3
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requests that are pre-signed by SigV4 algorithm are valid for at most 7 days. The expiration date set on the current request ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getTimeStamp(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] has exceeded this limit."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected processRequestPayload(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setRegionName(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->regionName:Ljava/lang/String;

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public sign(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;",
            ")V"
        }
    .end annotation

    .line 97
    instance-of v0, p2, Lcom/amazon/kindle/com/amazonaws/auth/AnonymousAWSCredentials;

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/com/amazonaws/auth/AbstractAWSSigner;->sanitizeCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    move-result-object v7

    .line 102
    instance-of p2, v7, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    if-eqz p2, :cond_1

    .line 103
    move-object p2, v7

    check-cast p2, Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->addSessionCredentials(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;)V

    .line 106
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->addHostHeader(Lcom/amazon/kindle/com/amazonaws/Request;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getDateFromRequest(Lcom/amazon/kindle/com/amazonaws/Request;)J

    move-result-wide v0

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getDateStamp(J)Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {p0, p1, v3}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getScope(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 113
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->calculateContentHash(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getTimeStamp(J)Ljava/lang/String;

    move-result-object v4

    const-string v0, "X-Amz-Date"

    .line 116
    invoke-interface {p1, v0, v4}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "x-amz-content-sha256"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "required"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-interface {p1, v1, v6}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v5, "AWS4-HMAC-SHA256"

    move-object v1, p0

    move-object v2, p1

    .line 125
    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->computeSignature(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credential="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignedHeaders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->getSignedHeadersString(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->getSignature()[B

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/com/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AWS4-HMAC-SHA256 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Authorization"

    .line 145
    invoke-interface {p1, v1, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->processRequestPayload(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;)V

    return-void
.end method
