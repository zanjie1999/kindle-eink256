.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;
.super Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;
.source "S3XmlResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseUnmarshaller:Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazon.kindle.com.amazonaws.request"

    .line 39
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;->responseUnmarshaller:Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;

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
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->parseResponseMetadata(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;->responseHeaders:Ljava/util/Map;

    .line 63
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;->responseUnmarshaller:Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "Beginning to parse service response XML"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->trace(Ljava/lang/Object;)V

    .line 65
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;->responseUnmarshaller:Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 66
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "Done parsing service response XML"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->trace(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3XmlResponseHandler;->handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method
