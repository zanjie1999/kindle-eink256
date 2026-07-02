.class public Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;
.super Ljava/lang/Object;
.source "SimpleObjectIdResolver.java"

# interfaces
.implements Lcom/fasterxml/jackson/annotation/ObjectIdResolver;


# instance fields
.field protected _items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindItem(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;Ljava/lang/Object;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;->_items:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;->_items:Ljava/util/Map;

    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;->_items:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 24
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already had POJO for id ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Z
    .locals 1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public newForDeserialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    .locals 0

    .line 44
    new-instance p1, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;

    invoke-direct {p1}, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;-><init>()V

    return-object p1
.end method

.method public resolveId(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;->_items:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
