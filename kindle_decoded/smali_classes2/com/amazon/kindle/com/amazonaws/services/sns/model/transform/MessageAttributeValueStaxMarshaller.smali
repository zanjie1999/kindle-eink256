.class Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxMarshaller;
.super Ljava/lang/Object;
.source "MessageAttributeValueStaxMarshaller.java"


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxMarshaller;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxMarshaller;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxMarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxMarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxMarshaller;

    .line 52
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxMarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getDataType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DataType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getDataType()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "StringValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getBinaryValue()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "BinaryValue"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 42
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->getBinaryValue()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->fromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/amazon/kindle/com/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
