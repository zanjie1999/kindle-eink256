.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/HeadBucketResultHandler;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;
.source "HeadBucketResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler<",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/model/HeadBucketResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/HeadBucketResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 30
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/HeadBucketResult;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/HeadBucketResult;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v2, "x-amz-bucket-region"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/HeadBucketResult;->setBucketRegion(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/transform/HeadBucketResultHandler;->handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method
