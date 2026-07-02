.class public Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;
.super Ljava/lang/Object;
.source "TodoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$MessageIdParsingException;,
        Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;
    }
.end annotation


# static fields
.field private static final MESSAGE_ID_ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field private static final MESSAGE_ID_PARAM_ACTION:Ljava/lang/String; = "action"

.field private static final MESSAGE_ID_PARAM_KEY:Ljava/lang/String; = "key"

.field private static final MESSAGE_ID_PARAM_TYPE:Ljava/lang/String; = "type"

.field private static final MESSAGE_ID_PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final MESSAGE_ID_SEQUENCE:Ljava/lang/String; = "sequence"

.field private static final MESSAGE_ID_V1_VERSION_VALUE:Ljava/lang/String; = "V1"


# instance fields
.field private mAction:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

.field private mActionString:Ljava/lang/String;

.field private mAnonymous:Z

.field private mFull:Z

.field private mIncremental:Z

.field private mKey:Ljava/lang/String;

.field private mMultimedia:Z

.field private mPayload:Ljava/lang/String;

.field private mPriority:I

.field private mSequence:J

.field private mTitle:Ljava/lang/String;

.field private mType:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

.field private mTypeString:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionUnknown:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mAction:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    .line 35
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeUnknown:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mType:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionUnknown:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mAction:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    .line 35
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->TodoTypeUnknown:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mType:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    .line 55
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->copyNodeData(Lorg/w3c/dom/Element;)Z

    return-void
.end method

.method private copyNodeData(Lorg/w3c/dom/Element;)Z
    .locals 6

    const/4 v0, 0x0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p1, :cond_0

    return v0

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->writeElementToString(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mPayload:Ljava/lang/String;

    const-string/jumbo v2, "priority"

    .line 67
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setPriority(I)V

    const-string v2, "action"

    .line 70
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setActionString(Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    .line 71
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setTypeString(Ljava/lang/String;)V

    const-string v2, "key"

    .line 73
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setKey(Ljava/lang/String;)V

    const-string/jumbo v2, "sequence"

    .line 75
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setSequence(J)V

    const-string/jumbo v1, "url"

    .line 78
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setURL(Ljava/lang/String;)V

    const-string v1, "is_incremental"

    .line 79
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setIsIncremental(Z)V

    .line 81
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 82
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_e

    .line 84
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 86
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 88
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 92
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-eq v4, v3, :cond_2

    goto/16 :goto_2

    .line 97
    :cond_2
    check-cast v2, Lorg/w3c/dom/Element;

    .line 99
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 103
    invoke-direct {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->isValidChildNode(Lorg/w3c/dom/Element;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 108
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v4, "title"

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "description"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const-string v4, "is_multimedia_enabled"

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 121
    invoke-direct {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->isValidChildNode(Lorg/w3c/dom/Element;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    .line 126
    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setIsMultimediaEnabled(Z)V

    goto :goto_2

    :cond_7
    const-string v4, "anonymous"

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 130
    invoke-direct {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->isValidChildNode(Lorg/w3c/dom/Element;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    .line 135
    :cond_8
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setIsAnonymous(Z)V

    goto :goto_2

    :cond_9
    const-string v4, "full"

    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 139
    invoke-direct {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->isValidChildNode(Lorg/w3c/dom/Element;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_2

    .line 144
    :cond_a
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setIsFull(Z)V

    goto :goto_2

    .line 112
    :cond_b
    :goto_1
    invoke-direct {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->isValidChildNode(Lorg/w3c/dom/Element;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_2

    .line 117
    :cond_c
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->setTitle(Ljava/lang/String;)V

    :cond_d
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_e
    return v3
.end method

.method public static deserializeToResponseParams(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$MessageIdParsingException;
        }
    .end annotation

    .line 385
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;->parse(Ljava/lang/String;)Lcom/amazon/whispersync/org/json/simple/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 391
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;-><init>()V

    const-string v1, "action"

    .line 392
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "type"

    .line 393
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mType:Ljava/lang/String;

    const-string v1, "key"

    .line 394
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mKey:Ljava/lang/String;

    const-string v1, "accountId"

    .line 395
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mAccountId:Ljava/lang/String;

    const-string/jumbo v1, "version"

    .line 396
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mTodoVersion:Ljava/lang/String;

    const-string/jumbo v1, "sequence"

    .line 397
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mSequence:J

    return-object v0

    .line 388
    :cond_0
    new-instance p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$MessageIdParsingException;

    const-string v0, "Message ID is not valid JSON object"

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$MessageIdParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isTodoV1(Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;)Z
    .locals 1

    .line 404
    iget-object p0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mTodoVersion:Ljava/lang/String;

    const-string v0, "V1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isValidChildNode(Lorg/w3c/dom/Element;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 180
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 187
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static serializeResponseParams(Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;)Ljava/lang/String;
    .locals 3

    .line 372
    new-instance v0, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/json/simple/JSONObject;-><init>()V

    .line 373
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mTodoVersion:Ljava/lang/String;

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mType:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mAction:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mAccountId:Ljava/lang/String;

    const-string v2, "accountId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mKey:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-wide v1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mSequence:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v1, "sequence"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeElementToString(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 3

    .line 156
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string v1, "omit-xml-declaration"

    const-string/jumbo v2, "yes"

    .line 158
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 161
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p1, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 163
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to transform todo xml DOM node to string. Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAction()Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mAction:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    return-object v0
.end method

.method public getActionString()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mActionString:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 339
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;-><init>()V

    const-string v1, "V1"

    .line 340
    iput-object v1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mTodoVersion:Ljava/lang/String;

    .line 341
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mTypeString:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mType:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mActionString:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mAction:Ljava/lang/String;

    .line 343
    iput-object p1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mAccountId:Ljava/lang/String;

    .line 344
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mKey:Ljava/lang/String;

    iput-object p1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mKey:Ljava/lang/String;

    .line 345
    iget-wide v1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mSequence:J

    iput-wide v1, v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;->mSequence:J

    .line 347
    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->serializeResponseParams(Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem$ResponseParams;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mPriority:I

    return v0
.end method

.method public getSequence()J
    .locals 2

    .line 289
    iget-wide v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mSequence:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mType:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    return-object v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mTitle:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mAnonymous:Z

    return v0
.end method

.method public isFull()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mFull:Z

    return v0
.end method

.method public isIncremental()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mIncremental:Z

    return v0
.end method

.method public isMultimediaEnabled()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mMultimedia:Z

    return v0
.end method

.method public setActionString(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mActionString:Ljava/lang/String;

    .line 203
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->getActionById(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mAction:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    return-void
.end method

.method public setIsAnonymous(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mAnonymous:Z

    return-void
.end method

.method public setIsFull(Z)V
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mFull:Z

    return-void
.end method

.method public setIsIncremental(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mIncremental:Z

    return-void
.end method

.method public setIsMultimediaEnabled(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mMultimedia:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mPayload:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mPriority:I

    return-void
.end method

.method public setSequence(J)V
    .locals 0

    .line 294
    iput-wide p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mSequence:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTypeString(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mTypeString:Ljava/lang/String;

    .line 219
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;->getTypeById(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mType:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoType;

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoItem;->mValue:Ljava/lang/String;

    return-void
.end method
