.class public Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;
.super Lcom/amazon/kindle/com/amazonaws/transform/AbstractErrorUnmarshaller;
.source "JsonErrorUnmarshaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/com/amazonaws/transform/AbstractErrorUnmarshaller<",
        "Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/transform/AbstractErrorUnmarshaller;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/transform/AbstractErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public match(Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/transform/AbstractErrorUnmarshaller;->newException(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    return-object v0

    .line 50
    :cond_2
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v0, "Neither error message nor error code is found in the error response payload."

    invoke-direct {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method
