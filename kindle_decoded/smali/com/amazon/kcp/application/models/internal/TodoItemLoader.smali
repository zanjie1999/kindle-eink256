.class public Lcom/amazon/kcp/application/models/internal/TodoItemLoader;
.super Ljava/lang/Object;
.source "TodoItemLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final factory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static final itemNodeParser:Ljava/lang/String; = "/item/text()|/item/*|/item/@*"

.field private static itemNodeParserExpr:Ljavax/xml/xpath/XPathExpression;

.field private static final xpath:Ljavax/xml/xpath/XPath;


# instance fields
.field public action:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public excludedTransportMethods:Ljava/lang/String;

.field public incremental:Ljava/lang/String;

.field public itemAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public key:Ljava/lang/String;

.field public priority:Ljava/lang/String;

.field public removalBaseUrl:Ljava/lang/String;

.field public sequence:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public xmlNameValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    const-class v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->TAG:Ljava/lang/String;

    .line 43
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->xpath:Ljavax/xml/xpath/XPath;

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemNodeParserExpr:Ljavax/xml/xpath/XPathExpression;

    .line 57
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    :try_start_0
    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 63
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V

    .line 64
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->xpath:Ljavax/xml/xpath/XPath;

    const-string v1, "/item/text()|/item/*|/item/@*"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemNodeParserExpr:Ljavax/xml/xpath/XPathExpression;
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 72
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "xpath doesn\'t compile: \'/item/text()|/item/*|/item/@*\'"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->xmlNameValues:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    return-void
.end method

.method public static createTodoItemLoaderFromXml(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItemLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;-><init>()V

    .line 104
    invoke-direct {v0, p1}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->loadXml(Ljava/lang/String;)V

    .line 108
    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->loadItemAttributes(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p1, "json(%s), xml(%s)"

    .line 111
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array p1, p0, [Ljava/lang/Object;

    .line 112
    iget-object v1, v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    aput-object v1, p1, v2

    const-string v1, "itemAttributes(%s)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v0, p0, v2

    const-string/jumbo p1, "todoItemLoader(%s)"

    .line 113
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private static getTextNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    .line 162
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 164
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 165
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 166
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 169
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private loadItemAttributes(Ljava/lang/String;)V
    .locals 5

    .line 179
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    iget-object v4, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->xmlNameValues:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse json: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private loadValuesFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    .line 193
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->action:Ljava/lang/String;

    const-string v0, "contentType"

    .line 194
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->contentType:Ljava/lang/String;

    const-string v0, "excluded_transport_methods"

    .line 195
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->excludedTransportMethods:Ljava/lang/String;

    const-string v0, "is_incremental"

    .line 196
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->incremental:Ljava/lang/String;

    const-string v0, "key"

    .line 197
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->key:Ljava/lang/String;

    const-string/jumbo v0, "priority"

    .line 198
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->priority:Ljava/lang/String;

    const-string/jumbo v0, "sequence"

    .line 199
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->sequence:Ljava/lang/String;

    const-string/jumbo v0, "type"

    .line 200
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->type:Ljava/lang/String;

    const-string/jumbo v0, "url"

    .line 201
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->url:Ljava/lang/String;

    return-void
.end method

.method private loadXml(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 123
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemNodeParserExpr:Ljavax/xml/xpath/XPathExpression;

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v0, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    const/4 v1, 0x0

    .line 126
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 127
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 128
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->title:Ljava/lang/String;

    goto :goto_1

    .line 137
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 139
    iget-object v4, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->xmlNameValues:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 145
    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {v2}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->getTextNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 147
    iget-object v4, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->xmlNameValues:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->loadValuesFromMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse xml: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setPrioritySafely(Lcom/amazon/kcp/application/models/internal/TodoItem;)V
    .locals 2

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->priority:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    new-instance p1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v0, "AmazonKindle"

    const-string v1, "GetItemsWebservice"

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PriorityDataError"

    .line 318
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->priority:Ljava/lang/String;

    const-string v1, "InvalidPriorityValue"

    .line 319
    invoke-virtual {p1, v1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 320
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 322
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :goto_0
    return-void
.end method

.method private setSequenceSafely(Lcom/amazon/kcp/application/models/internal/TodoItem;)V
    .locals 2

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->sequence:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setSequence(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    new-instance p1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v0, "AmazonKindle"

    const-string v1, "GetItemsWebservice"

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SequenceDataError"

    .line 332
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->sequence:Ljava/lang/String;

    const-string v1, "InvalidSequenceValue"

    .line 333
    invoke-virtual {p1, v1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 334
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 336
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :goto_0
    return-void
.end method

.method private verifySoftwareVersion()V
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server reports invalid software version data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v2, "AmazonKindle"

    const-string v3, "GetItemsWebservice"

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SoftwareVersionDataError"

    .line 277
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    const-string v2, "InvalidSoftwareVersion"

    .line 278
    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 279
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const/4 v1, 0x0

    .line 280
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :goto_0
    return-void
.end method

.method private verifyUpdateLPR()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server lpr message version missing or bad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    const-string v1, "annotation_time_utc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 299
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server annotation set time missing or bad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    const-string/jumbo v1, "lto"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 307
    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local time offset missing or bad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->title:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->key:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->action:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->type:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->url:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->sequence:Ljava/lang/String;

    .line 215
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->priority:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->incremental:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->contentType:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->excludedTransportMethods:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TodoItemLoader: { "

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "title: \""

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->title:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "key: \""

    .line 349
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->key:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "action: \""

    .line 353
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->action:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "type: \""

    .line 357
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->type:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url: \""

    .line 361
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->url:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removalBaseUrl: \""

    .line 365
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->removalBaseUrl:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sequence: \""

    .line 369
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->sequence:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "priority: \""

    .line 373
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->priority:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "incremental: \""

    .line 377
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->incremental:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "contentType: \""

    .line 381
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->contentType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "excludedTransportMethods: \""

    .line 385
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->excludedTransportMethods:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "xmlNameValues: \""

    .line 389
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v3, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->xmlNameValues:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "itemAttributes: \""

    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v2, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;
    .locals 3

    .line 227
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->verifySoftwareVersion()V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->action:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->verifyUpdateLPR()V

    .line 236
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->removalBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setRemoveBaseURL(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->title:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    const-string/jumbo v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->title:Ljava/lang/String;

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setTitle(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->setPrioritySafely(Lcom/amazon/kcp/application/models/internal/TodoItem;)V

    .line 246
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setTypeString(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setActionString(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->url:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    const-string/jumbo v2, "url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->url:Ljava/lang/String;

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setURL(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->excludedTransportMethods:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setExcludedTransportMethods(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setKey(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->incremental:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 255
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setIncremental(Z)V

    .line 257
    :cond_4
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setContentType(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->setSequenceSafely(Lcom/amazon/kcp/application/models/internal/TodoItem;)V

    .line 260
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    const-string/jumbo v2, "value"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setValue(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    const-string v2, "guid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setGuid(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setItemAttributes(Ljava/util/Map;)V

    return-object v0
.end method
