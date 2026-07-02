.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/AddPermissionRequestMarshaller;
.super Ljava/lang/Object;
.source "AddPermissionRequestMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/amazon/kindle/com/amazonaws/Request<",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;",
        ">;",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;",
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
.method public marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;)Lcom/amazon/kindle/com/amazonaws/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 37
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;

    const-string v1, "AmazonSNS"

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/DefaultRequest;-><init>(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "AddPermission"

    .line 39
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Version"

    const-string v2, "2010-03-31"

    .line 40
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "TopicArn"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "Label"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v1

    const-string v2, ".member."

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 55
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AWSAccountId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_2

    .line 61
    invoke-static {v5}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0, v6, v5}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 69
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_4

    .line 75
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v0

    .line 33
    :cond_6
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(AddPermissionRequest)"

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
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/AddPermissionRequestMarshaller;->marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/AddPermissionRequest;)Lcom/amazon/kindle/com/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
