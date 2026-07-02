.class Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicStaxMarshaller;
.super Ljava/lang/Object;
.source "TopicStaxMarshaller.java"


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicStaxMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicStaxMarshaller;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicStaxMarshaller;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicStaxMarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicStaxMarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicStaxMarshaller;

    .line 41
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/TopicStaxMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/Topic;Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/Topic;",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Topic;->getTopicArn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "TopicArn"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 31
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Topic;->getTopicArn()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
