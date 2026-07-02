.class public Lcom/amazon/identity/auth/device/kc;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/kb;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 27
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 31
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 32
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 37
    check-cast v2, Lorg/w3c/dom/Element;

    const-string/jumbo v3, "url"

    .line 39
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string/jumbo v4, "value"

    .line 40
    invoke-static {v2, v4}, Lcom/amazon/identity/auth/device/mi;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 42
    invoke-static {v3}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-static {v2}, Lcom/amazon/identity/auth/device/mi;->f(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    .line 45
    new-instance v4, Lcom/amazon/identity/auth/device/kb;

    invoke-direct {v4}, Lcom/amazon/identity/auth/device/kb;-><init>()V

    .line 46
    invoke-virtual {v4, v3}, Lcom/amazon/identity/auth/device/kb;->dK(Ljava/lang/String;)Z

    .line 47
    invoke-virtual {v4, v2}, Lcom/amazon/identity/auth/device/kb;->setValue(Ljava/lang/String;)Z

    .line 49
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
