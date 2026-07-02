.class public final Lcom/amazon/messaging/odot/webservices/transportdto/XMLParserHelpers;
.super Ljava/lang/Object;
.source "XMLParserHelpers.java"


# direct methods
.method public static getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 18
    :cond_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 20
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 24
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public static hasElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
