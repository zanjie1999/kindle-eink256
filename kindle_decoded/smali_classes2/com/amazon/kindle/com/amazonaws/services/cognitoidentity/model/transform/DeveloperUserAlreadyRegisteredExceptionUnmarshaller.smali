.class public Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/DeveloperUserAlreadyRegisteredExceptionUnmarshaller;
.super Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;
.source "DeveloperUserAlreadyRegisteredExceptionUnmarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/DeveloperUserAlreadyRegisteredException;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public match(Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeveloperUserAlreadyRegisteredException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/transform/JsonErrorUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/DeveloperUserAlreadyRegisteredException;

    const-string v0, "DeveloperUserAlreadyRegisteredException"

    .line 39
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/DeveloperUserAlreadyRegisteredExceptionUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method
