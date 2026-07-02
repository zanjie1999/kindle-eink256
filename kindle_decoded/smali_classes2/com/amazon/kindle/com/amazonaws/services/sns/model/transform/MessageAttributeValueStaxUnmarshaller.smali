.class Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;
.super Ljava/lang/Object;
.source "MessageAttributeValueStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;",
        "Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;
    .locals 1

    .line 77
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;

    .line 79
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x2

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const-string v3, "DataType"

    .line 50
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    .line 52
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->setDataType(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "StringValue"

    .line 55
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    .line 57
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->setStringValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "BinaryValue"

    .line 60
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;

    move-result-object v3

    .line 62
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 61
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;->setBinaryValue(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v3

    if-ge v3, v1, :cond_0

    :goto_1
    return-object v0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/MessageAttributeValueStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/MessageAttributeValue;

    move-result-object p1

    return-object p1
.end method
