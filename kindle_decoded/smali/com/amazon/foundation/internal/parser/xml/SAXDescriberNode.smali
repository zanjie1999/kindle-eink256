.class public Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
.super Ljava/lang/Object;
.source "SAXDescriberNode.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private afterOpenTagCallback:Lcom/amazon/foundation/ICallback;

.field private attributeMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/foundation/internal/IStringValueMapping;",
            ">;"
        }
    .end annotation
.end field

.field private beforeOpenTagCallback:Lcom/amazon/foundation/ICallback;

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;",
            ">;"
        }
    .end annotation
.end field

.field private closeTagCallback:Lcom/amazon/foundation/ICallback;

.field private contentMapping:Lcom/amazon/foundation/internal/IStringValueMapping;

.field private contentValue:Ljava/lang/String;

.field private genericTagDescriber:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

.field private name:Ljava/lang/String;

.field private parent:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

.field private tagNameMapping:Lcom/amazon/foundation/internal/IStringValueMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->name:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->attributeMappings:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->children:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->name:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->attributeMappings:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->children:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->parent:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    return-void
.end method


# virtual methods
.method public addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 203
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->attributeMappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addContentValue(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    return-void
.end method

.method public callTagCallback(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 124
    sget-object p1, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->TAG:Ljava/lang/String;

    const-string v0, "Wrong Type of CallBack during call in SAXDescriberNode"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->closeTagCallback:Lcom/amazon/foundation/ICallback;

    if-eqz p1, :cond_3

    .line 119
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->afterOpenTagCallback:Lcom/amazon/foundation/ICallback;

    if-eqz p1, :cond_3

    .line 113
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    goto :goto_0

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->beforeOpenTagCallback:Lcom/amazon/foundation/ICallback;

    if-eqz p1, :cond_3

    .line 107
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_3
    :goto_0
    return-void
.end method

.method public callTagNameMapping()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->tagNameMapping:Lcom/amazon/foundation/internal/IStringValueMapping;

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStringValueMapping;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getChild(Ljava/lang/String;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->genericTagDescriber:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    .line 167
    :cond_2
    iget-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->genericTagDescriber:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .locals 2

    .line 143
    new-instance v0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    invoke-direct {v0, p0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;-><init>(Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;)V

    .line 145
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getParent()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->parent:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    return-object v0
.end method

.method public releaseContentValue()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentMapping:Lcom/amazon/foundation/internal/IStringValueMapping;

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStringValueMapping;->setValue(Ljava/lang/String;)V

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentValue:Ljava/lang/String;

    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->attributeMappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/foundation/internal/IStringValueMapping;

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1, p2}, Lcom/amazon/foundation/internal/IStringValueMapping;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 189
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->contentMapping:Lcom/amazon/foundation/internal/IStringValueMapping;

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->name:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setTagCallback(ILcom/amazon/foundation/ICallback;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 96
    sget-object p1, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->TAG:Ljava/lang/String;

    const-string v1, "Wrong Type of CallBack during set in SAXDescriberNode"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    iput-object p2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->closeTagCallback:Lcom/amazon/foundation/ICallback;

    goto :goto_0

    .line 86
    :cond_1
    iput-object p2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->afterOpenTagCallback:Lcom/amazon/foundation/ICallback;

    goto :goto_0

    .line 81
    :cond_2
    iput-object p2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->beforeOpenTagCallback:Lcom/amazon/foundation/ICallback;

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
