.class public Lcom/amazon/kindle/com/amazonaws/transform/StandardErrorUnmarshaller;
.super Lcom/amazon/kindle/com/amazonaws/transform/AbstractErrorUnmarshaller;
.source "StandardErrorUnmarshaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/com/amazonaws/transform/AbstractErrorUnmarshaller<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
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

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/transform/AbstractErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getErrorPropertyPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorResponse/Error/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseErrorCode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ErrorResponse/Error/Code"

    .line 86
    invoke-static {v0, p1}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unmarshall(Lorg/w3c/dom/Node;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/transform/StandardErrorUnmarshaller;->parseErrorCode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErrorResponse/Error/Type"

    .line 58
    invoke-static {v1, p1}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ErrorResponse/RequestId"

    .line 59
    invoke-static {v2, p1}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ErrorResponse/Error/Message"

    .line 60
    invoke-static {v3, p1}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/transform/AbstractErrorUnmarshaller;->newException(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setRequestId(Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 67
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;)V

    goto :goto_0

    :cond_0
    const-string v0, "Receiver"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;)V

    goto :goto_0

    :cond_1
    const-string v0, "Sender"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException$ErrorType;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/transform/StandardErrorUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method
