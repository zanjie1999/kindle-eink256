.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;
.super Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;
.source "AWSS3V4Signer.java"


# static fields
.field private static final CONTENT_SHA_256:Ljava/lang/String; = "STREAMING-AWS4-HMAC-SHA256-PAYLOAD"

.field private static final DEFAULT_BYTE_LENGTH:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;-><init>(Z)V

    return-void
.end method

.method static getContentLength(Lcom/amazon/kindle/com/amazonaws/Request;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    const/16 v2, 0x1000

    new-array v2, v2, [B

    const/4 v3, -0x1

    .line 144
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 145
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v3, :cond_0

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-wide v0

    .line 138
    :cond_1
    new-instance p0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v0, "Failed to get content length"

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static useChunkEncoding(Lcom/amazon/kindle/com/amazonaws/Request;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 123
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PutObjectRequest;

    if-nez v0, :cond_1

    .line 124
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/Request;->getOriginalRequest()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object p0

    instance-of p0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected calculateContentHash(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "x-amz-content-sha256"

    const-string v1, "required"

    .line 79
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;->useChunkEncoding(Lcom/amazon/kindle/com/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 97
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;->getContentLength(Lcom/amazon/kindle/com/amazonaws/Request;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "x-amz-decoded-content-length"

    .line 104
    invoke-interface {p1, v4, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v2, v3}, Lcom/amazon/kindle/com/amazonaws/auth/AwsChunkedEncodingInputStream;->calculateStreamContentLength(J)J

    move-result-wide v2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/com/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "STREAMING-AWS4-HMAC-SHA256-PAYLOAD"

    return-object p1

    :catch_0
    move-exception p1

    .line 99
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v1, "Cannot get the content-lenght of the request content."

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 114
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;->calculateContentHash(Lcom/amazon/kindle/com/amazonaws/Request;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    const-string p1, "UNSIGNED-PAYLOAD"

    return-object p1
.end method

.method protected processRequestPayload(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AWSS3V4Signer;->useChunkEncoding(Lcom/amazon/kindle/com/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p1}, Lcom/amazon/kindle/com/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 53
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->getDateTime()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->getScope()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->getKSigning()[B

    move-result-object v3

    .line 57
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->getSignature()[B

    move-result-object p2

    .line 56
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object v6

    .line 58
    new-instance p2, Lcom/amazon/kindle/com/amazonaws/auth/AwsChunkedEncodingInputStream;

    move-object v1, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/com/amazonaws/auth/AwsChunkedEncodingInputStream;-><init>(Ljava/io/InputStream;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;)V

    .line 60
    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method
