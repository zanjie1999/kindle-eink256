.class public Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;
.source "ObjectNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode$NoFieldsIterator;
    }
.end annotation


# instance fields
.field protected _children:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private final _put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object p1
.end method


# virtual methods
.method public asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 607
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    if-eq v2, v3, :cond_2

    return v1

    .line 610
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    .line 611
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 614
    :cond_3
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_6

    .line 615
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 616
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 617
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    .line 619
    invoke-virtual {p1, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->get(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 621
    invoke-virtual {v4, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_5
    return v1

    :cond_6
    return v0
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->findParent(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public findParent(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    .line 180
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->findParent(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    .line 196
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public findValue(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object p1

    .line 127
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->findValue(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    .line 143
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    .line 161
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public get(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getElements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode$NoNodesIterator;->instance()Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode$NoNodesIterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFieldNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode$NoStringsIterator;->instance()Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode$NoStringsIterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode$NoFieldsIterator;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode$NoFieldsIterator;

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isObject()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public path(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    .line 64
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;

    move-result-object p1

    return-object p1
.end method

.method public path(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-eqz p1, :cond_0

    return-object p1

    .line 76
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    if-nez p2, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object p2

    .line 273
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;D)V
    .locals 0

    .line 510
    invoke-virtual {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(D)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 0

    .line 491
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(F)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 0

    .line 453
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(I)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 0

    .line 472
    invoke-virtual {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(J)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    if-nez p2, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->booleanNode(Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2

    if-nez p2, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(D)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    if-nez p2, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(F)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    if-nez p2, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(I)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    if-nez p2, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(J)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    .line 542
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->textNode(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/TextNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0

    if-nez p2, :cond_0

    .line 531
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(Ljava/math/BigDecimal;)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 0

    .line 551
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->booleanNode(Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 0

    if-nez p2, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->binaryNode([B)Lcom/amazon/whispersync/org/codehaus/jackson/node/BinaryNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    :goto_0
    return-void
.end method

.method public putAll(Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 2

    .line 358
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 360
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 361
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->putContentsTo(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    goto :goto_1

    .line 335
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-nez v1, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object v1

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public putArray(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->arrayNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 422
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method protected putContentsTo(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;)V"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 591
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-void
.end method

.method public putObject(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 1

    .line 435
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->objectNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 436
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public putPOJO(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 442
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->POJONode(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-void
.end method

.method public remove(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/util/Collection;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic removeAll()Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->removeAll()Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public removeAll()Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 1

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public retain(Ljava/util/Collection;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 382
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public varargs retain([Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 0

    .line 403
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->retain(Ljava/util/Collection;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public final serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 222
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 230
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;->serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public serializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 241
    invoke-virtual {p3, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 242
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 245
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;->serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p3, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->size()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 642
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez v2, :cond_0

    const-string v4, ","

    .line 644
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 647
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/node/TextNode;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 v4, 0x3a

    .line 648
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 649
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v3}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "}"

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->with(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-eqz v0, :cond_2

    .line 100
    instance-of v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    if-eqz v1, :cond_1

    .line 101
    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    return-object v0

    .line 103
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has value that is not of type ObjectNode (but "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->objectNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
