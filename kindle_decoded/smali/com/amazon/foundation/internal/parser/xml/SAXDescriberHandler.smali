.class public Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXDescriberHandler.java"


# instance fields
.field private currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

.field private rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 20
    new-instance v0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->characters(Ljava/lang/String;)Z

    return-void
.end method

.method public characters(Ljava/lang/String;)Z
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    if-ne v0, v2, :cond_1

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    return v1

    .line 168
    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addContentValue(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->endDocument(Z)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->endDocument(Z)Z

    :goto_0
    return-void
.end method

.method public endDocument(Z)Z
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    xor-int/2addr p1, v2

    return p1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->endElement(Ljava/lang/String;)Z

    return-void
.end method

.method public endElement(Ljava/lang/String;)Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->releaseContentValue()V

    .line 97
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->callTagCallback(I)V

    .line 100
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getParent()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    const/4 p1, 0x1

    return p1
.end method

.method public getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->rootNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 114
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1, p3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getChild(Ljava/lang/String;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p1

    if-nez p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1, p3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    .line 132
    :cond_1
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    const/4 p2, 0x0

    .line 137
    invoke-virtual {p1, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->callTagCallback(I)V

    .line 140
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-virtual {p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->callTagNameMapping()V

    .line 143
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setAttributeValue(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->currentNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->callTagCallback(I)V

    return-void
.end method
