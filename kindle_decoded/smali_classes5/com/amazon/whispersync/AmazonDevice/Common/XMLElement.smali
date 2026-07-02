.class public Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;
.super Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;
.source "XMLElement.java"


# static fields
.field private static final XML_DOCUMENT_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;


# instance fields
.field private mEntityChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerText:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->XML_DOCUMENT_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->mName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->mInnerText:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->mEntityChildren:Ljava/util/List;

    .line 47
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)V

    return-void
.end method

.method private convertDocumentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 4

    .line 91
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string v2, "omit-xml-declaration"

    const-string v3, "no"

    .line 96
    invoke-virtual {v0, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 98
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p1, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 99
    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertDocumentToString: Unable to convert XML Document to text. Error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertDocumentToString: Unable to convert XML Document to text since the transformer could not be constructed. Error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private createElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->mInnerText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->mEntityChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;

    .line 133
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;->toXML(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;
    .locals 1

    .line 63
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChild(Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)Z

    return-object p0
.end method

.method public addNewChild(Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->mEntityChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addNewChildElement(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;
    .locals 2

    .line 57
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;)V

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChild(Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)Z

    return-object p0
.end method

.method public convertToString()Ljava/lang/String;
    .locals 3

    .line 72
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->XML_DOCUMENT_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->createElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 76
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 78
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->convertDocumentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToString: Unable to construct an XML Document since the document factory could not be constructed. Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method toXML(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 117
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->createElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 119
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method
