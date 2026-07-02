.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ObjectResponseHandler;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;
.source "S3ObjectResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler<",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->parseResponseMetadata(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "x-amz-website-redirect-location"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->setRedirectLocation(Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "x-amz-request-charged"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->setRequesterCharged(Z)V

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "x-amz-tagging-count"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->setTaggingCount(Ljava/lang/Integer;)V

    .line 55
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    .line 56
    invoke-virtual {p0, p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->populateObjectMetadata(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 58
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazon/kindle/com/amazonaws/services/s3/model/S3ObjectInputStream;)V

    .line 60
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ObjectResponseHandler;->handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
