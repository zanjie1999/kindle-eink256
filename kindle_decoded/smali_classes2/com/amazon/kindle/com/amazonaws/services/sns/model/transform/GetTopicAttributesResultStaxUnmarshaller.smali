.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "GetTopicAttributesResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller$AttributesMapEntryUnmarshaller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;",
        "Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;
    .locals 1

    .line 108
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;

    .line 110
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;-><init>()V

    .line 78
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 81
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x2

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v3, "Attributes/entry"

    .line 90
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller$AttributesMapEntryUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller$AttributesMapEntryUnmarshaller;

    move-result-object v3

    .line 92
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller$AttributesMapEntryUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 93
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;->addAttributesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 97
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

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/GetTopicAttributesResult;

    move-result-object p1

    return-object p1
.end method
