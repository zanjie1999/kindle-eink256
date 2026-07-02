.class public Lcom/amazon/identity/auth/device/mf;
.super Lcom/amazon/identity/auth/device/mg;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.mf"

.field private static final uP:Ljavax/xml/parsers/DocumentBuilderFactory;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final uQ:Ljava/lang/String;

.field private uR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/mg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/mf;->uP:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/identity/auth/device/mc;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/identity/auth/device/mg;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/identity/auth/device/mg;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/mg;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazon/identity/auth/device/mf;->mName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/amazon/identity/auth/device/mf;->uQ:Ljava/lang/String;

    .line 51
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/mf;->uR:Ljava/util/List;

    .line 52
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/amazon/identity/auth/device/mg;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/identity/auth/device/mg;)V

    return-void
.end method

.method public static a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    .line 96
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 100
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string/jumbo v1, "omit-xml-declaration"

    .line 101
    instance-of v2, p0, Lorg/w3c/dom/Document;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "no"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "yes"

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 104
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 114
    sget-object v0, Lcom/amazon/identity/auth/device/mf;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "convertDocumentToString: Unable to convert XML Document to text. Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 109
    sget-object v0, Lcom/amazon/identity/auth/device/mf;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "convertDocumentToString: Unable to convert XML Document to text since the transformer could not be constructed. Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-static {v0, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private f(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mf;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mf;->uQ:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mf;->uR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/mg;

    .line 139
    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/mg;->c(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/mg;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mf;->uR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public ax(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/mf;
    .locals 2

    .line 62
    new-instance v0, Lcom/amazon/identity/auth/device/mf;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/amazon/identity/auth/device/mc;

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/identity/auth/device/mf;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/identity/auth/device/mc;)V

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/mf;->a(Lcom/amazon/identity/auth/device/mg;)Z

    return-object p0
.end method

.method c(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 123
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/mf;->f(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 125
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public iJ()Ljava/lang/String;
    .locals 4

    .line 77
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/mf;->uP:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 80
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/mf;->f(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 81
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 83
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mf;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    sget-object v1, Lcom/amazon/identity/auth/device/mf;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "convertToString: Unable to construct an XML Document since the document factory could not be constructed. Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
