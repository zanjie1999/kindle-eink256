.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
.super Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.source "GeneratePresignedUrlRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private contentMd5:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private customQueryParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expiration:Ljava/util/Date;

.field private key:Ljava/lang/String;

.field private kmsCmkId:Ljava/lang/String;

.field private method:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

.field private final requestParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;

.field private sseAlgorithm:Ljava/lang/String;

.field private sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

.field private versionId:Ljava/lang/String;

.field private zeroByteContent:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/HttpMethod;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->requestParameters:Ljava/util/Map;

    .line 225
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    .line 227
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentMd5()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->contentMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomQueryParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->customQueryParameters:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 461
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->expiration:Ljava/util/Date;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKmsCmkId()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->kmsCmkId:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/amazon/kindle/com/amazonaws/HttpMethod;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazon/kindle/com/amazonaws/HttpMethod;

    return-object v0
.end method

.method public getRequestParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->requestParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->responseHeaders:Lcom/amazon/kindle/com/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public getSSEAlgorithm()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getSSECustomerKey()Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseCustomerKey:Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public isZeroByteContent()Z
    .locals 1

    .line 664
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->zeroByteContent:Z

    return v0
.end method

.method public setExpiration(Ljava/util/Date;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->expiration:Ljava/util/Date;

    return-void
.end method
