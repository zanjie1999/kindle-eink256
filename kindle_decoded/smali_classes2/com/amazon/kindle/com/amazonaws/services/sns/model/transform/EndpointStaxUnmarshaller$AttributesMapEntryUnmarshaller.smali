.class Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;
.super Ljava/lang/Object;
.source "EndpointStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributesMapEntryUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;

    .line 69
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/EndpointStaxUnmarshaller$AttributesMapEntryUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 41
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/transform/MapEntry;

    invoke-direct {v2}, Lcom/amazon/kindle/com/amazonaws/transform/MapEntry;-><init>()V

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const-string v3, "key"

    .line 49
    invoke-virtual {p1, v3, v1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/com/amazonaws/transform/MapEntry;->setKey(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "value"

    .line 53
    invoke-virtual {p1, v3, v1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/com/amazonaws/transform/MapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v3

    if-ge v3, v0, :cond_0

    return-object v2
.end method
