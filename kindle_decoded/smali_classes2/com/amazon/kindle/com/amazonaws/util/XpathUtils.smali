.class public Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;
.super Ljava/lang/Object;
.source "XpathUtils.java"


# static fields
.field private static factory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 48
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->xpath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, p1, v1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 121
    invoke-static {p0, p1}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 62
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;->close()V

    return-object p0
.end method

.method public static documentFrom(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method private static evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 281
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->isEmpty(Lorg/w3c/dom/Node;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "."

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    invoke-static {p0, p1}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->asNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 297
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/util/XpathUtils;->xpath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEmpty(Lorg/w3c/dom/Node;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static xpath()Ljavax/xml/xpath/XPath;
    .locals 1

    .line 335
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    return-object v0
.end method
