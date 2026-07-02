.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/DeletePlatformApplicationRequestMarshaller;
.super Ljava/lang/Object;
.source "DeletePlatformApplicationRequestMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/amazon/kindle/com/amazonaws/Request<",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;",
        ">;",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;)Lcom/amazon/kindle/com/amazonaws/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 38
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;

    const-string v1, "AmazonSNS"

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;-><init>(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "DeletePlatformApplication"

    .line 40
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Version"

    const-string v2, "2010-03-31"

    .line 41
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;->getPlatformApplicationArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;->getPlatformApplicationArn()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "PlatformApplicationArn"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 34
    :cond_1
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(DeletePlatformApplicationRequest)"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/DeletePlatformApplicationRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeletePlatformApplicationRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
