.class Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxMarshaller;
.super Ljava/lang/Object;
.source "EndpointStaxMarshaller.java"


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxMarshaller;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxMarshaller;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxMarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxMarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxMarshaller;

    .line 61
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/Endpoint;Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/Endpoint;",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Endpoint;->getEndpointArn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EndpointArn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Endpoint;->getEndpointArn()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Endpoint;->getAttributes()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Attributes"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/Endpoint;->getAttributes()Ljava/util/Map;

    move-result-object p1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".entry."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 39
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    invoke-interface {p2, v3, v4}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".value"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p2, v2, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
