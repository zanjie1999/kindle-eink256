.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/InternalErrorExceptionUnmarshaller;
.super Lcom/amazon/kindle/com/amazonaws/transform/StandardErrorUnmarshaller;
.source "InternalErrorExceptionUnmarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/InternalErrorException;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/transform/StandardErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public unmarshall(Lorg/w3c/dom/Node;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/transform/StandardErrorUnmarshaller;->parseErrorCode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "InternalError"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/com/amazonaws/transform/StandardErrorUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/InternalErrorException;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/InternalErrorExceptionUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method
