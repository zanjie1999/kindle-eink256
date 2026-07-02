.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;
.super Ljava/lang/Object;
.source "S3ErrorResponseHandler.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# static fields
.field private static final HTTP_INTERNAL_FAILURE_STATUS_CODE:I = 0x1f4

.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private errorTypeOf(I)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;
    .locals 1

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    .line 126
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    :goto_0
    return-object p1
.end method

.method private newAmazonS3Exception(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;
    .locals 3

    .line 100
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result p1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 104
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;->errorTypeOf(I)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;)V

    .line 105
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo p2, "x-amz-request-id"

    .line 106
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setRequestId(Ljava/lang/String;)V

    const-string/jumbo p2, "x-amz-id-2"

    .line 107
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    const-string p2, "X-Amz-Cf-Id"

    .line 108
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->setCloudFrontId(Ljava/lang/String;)V

    .line 109
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "x-amz-bucket-region"

    .line 111
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 110
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->setAdditionalDetails(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;->newAmazonS3Exception(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :try_start_1
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->documentFrom(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "Error/Message"

    .line 74
    invoke-static {v2, v1}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error/Code"

    .line 75
    invoke-static {v3, v1}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error/RequestId"

    .line 76
    invoke-static {v4, v1}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error/HostId"

    .line 77
    invoke-static {v5, v1}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v5, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v5, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v2

    .line 80
    invoke-virtual {v5, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 81
    invoke-direct {p0, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;->errorTypeOf(I)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;)V

    .line 82
    invoke-virtual {v5, v3}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5, v4}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setRequestId(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "X-Amz-Cf-Id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;->setCloudFrontId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    move-exception v1

    .line 88
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed in parsing the response as XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 91
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;->newAmazonS3Exception(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v0

    .line 67
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "Failed in reading the error response"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;->newAmazonS3Exception(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ErrorResponseHandler;->handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
