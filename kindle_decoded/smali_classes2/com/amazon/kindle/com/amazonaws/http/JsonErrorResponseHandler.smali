.class public Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler;
.super Ljava/lang/Object;
.source "JsonErrorResponseHandler.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# static fields
.field private static final HTTP_STATUS_INTERNAL_SERVER_ERROR:I = 0x1f4

.field private static final X_AMZN_ERROR_TYPE:Ljava/lang/String; = "x-amzn-ErrorType"


# instance fields
.field private final unmarshallerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler;->unmarshallerList:Ljava/util/List;

    return-void
.end method

.method private runErrorUnmarshallers(Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler;->unmarshallerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;

    .line 97
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;->match(Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->fromResponse(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler;->runErrorUnmarshallers(Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 72
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_1

    .line 73
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;)V

    goto :goto_0

    .line 75
    :cond_1
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;)V

    .line 77
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "X-Amzn-RequestId"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setRequestId(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    .line 64
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v1, "Unable to parse error response"

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler;->handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
