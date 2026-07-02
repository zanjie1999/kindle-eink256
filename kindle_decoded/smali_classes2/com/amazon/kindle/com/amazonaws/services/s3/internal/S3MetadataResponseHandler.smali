.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3MetadataResponseHandler;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;
.source "S3MetadataResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler<",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->populateObjectMetadata(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;Lcom/amazon/kindle/com/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->parseResponseMetadata(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3MetadataResponseHandler;->handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method
