.class public final Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;
.super Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;
.source "ArrayNode.java"


# instance fields
.field protected _children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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

    return-void
.end method

.method private _add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private _insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 728
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 729
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 733
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 735
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private _sameChildren(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;)Z"
        }
    .end annotation

    .line 747
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 748
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 752
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public _set(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object p1

    .line 712
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", array size "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public add(D)V
    .locals 0

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(D)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(F)V
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(F)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(I)V
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(I)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(J)V
    .locals 0

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(J)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V
    .locals 0

    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object p1

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->addNull()V

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->booleanNode(Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public add(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->addNull()V

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(D)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public add(Ljava/lang/Float;)V
    .locals 0

    if-nez p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->addNull()V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(F)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public add(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->addNull()V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(I)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public add(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->addNull()V

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(J)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->addNull()V

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->textNode(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/TextNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public add(Ljava/math/BigDecimal;)V
    .locals 0

    if-nez p1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->addNull()V

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(Ljava/math/BigDecimal;)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public add(Z)V
    .locals 0

    .line 436
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->booleanNode(Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public add([B)V
    .locals 0

    if-nez p1, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->addNull()V

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->binaryNode([B)Lcom/amazon/whispersync/org/codehaus/jackson/node/BinaryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public addAll(Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 2

    .line 218
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 220
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->addContentsTo(Ljava/util/List;)V

    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;"
        }
    .end annotation

    .line 239
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public addArray()Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->arrayNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 300
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-object v0
.end method

.method protected addContentsTo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;)V"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    .line 642
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addNull()V
    .locals 1

    .line 332
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public addObject()Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->objectNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 313
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-object v0
.end method

.method public addPOJO(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->addNull()V

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->POJONode(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_add(Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public asToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 658
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    if-eq v2, v3, :cond_2

    return v1

    .line 661
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    .line 662
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 665
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_sameChildren(Ljava/util/ArrayList;)Z

    move-result p1

    return p1

    .line 663
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->size()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->findParent(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public findParent(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    .line 153
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->findParent(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
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

    .line 165
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    .line 167
    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public findValue(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    .line 117
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->findValue(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
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

    .line 129
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    .line 131
    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
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

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    .line 142
    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public get(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    if-ltz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

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

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode$NoNodesIterator;->instance()Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode$NoNodesIterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 672
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 675
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 676
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    if-eqz v2, :cond_1

    .line 678
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public insert(ID)V
    .locals 0

    .line 561
    invoke-virtual {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(D)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(IF)V
    .locals 0

    .line 542
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(F)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(II)V
    .locals 0

    .line 504
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(I)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(IJ)V
    .locals 0

    .line 523
    invoke-virtual {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(J)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V
    .locals 0

    if-nez p2, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object p2

    .line 262
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(ILjava/lang/Boolean;)V
    .locals 0

    if-nez p2, :cond_0

    .line 612
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->booleanNode(Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public insert(ILjava/lang/Double;)V
    .locals 2

    if-nez p2, :cond_0

    .line 571
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(D)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public insert(ILjava/lang/Float;)V
    .locals 0

    if-nez p2, :cond_0

    .line 552
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(F)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public insert(ILjava/lang/Integer;)V
    .locals 0

    if-nez p2, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(I)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public insert(ILjava/lang/Long;)V
    .locals 2

    if-nez p2, :cond_0

    .line 533
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(J)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public insert(ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    .line 593
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    goto :goto_0

    .line 595
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->textNode(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/TextNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public insert(ILjava/math/BigDecimal;)V
    .locals 0

    if-nez p2, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->numberNode(Ljava/math/BigDecimal;)Lcom/amazon/whispersync/org/codehaus/jackson/node/NumericNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public insert(IZ)V
    .locals 0

    .line 602
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->booleanNode(Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/BooleanNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insert(I[B)V
    .locals 0

    if-nez p2, :cond_0

    .line 623
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->binaryNode([B)Lcom/amazon/whispersync/org/codehaus/jackson/node/BinaryNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public insertArray(I)Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;
    .locals 1

    .line 465
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->arrayNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 466
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-object v0
.end method

.method public insertNull(I)V
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-void
.end method

.method public insertObject(I)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->objectNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 479
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    return-object v0
.end method

.method public insertPOJO(ILjava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->insertNull(I)V

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->POJONode(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/node/POJONode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_insert(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)V

    :goto_0
    return-void
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public path(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    if-ltz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object p1

    .line 65
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;

    move-result-object p1

    return-object p1
.end method

.method public path(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    .line 57
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;->getInstance()Lcom/amazon/whispersync/org/codehaus/jackson/node/MissingNode;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    if-ltz p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeAll()Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;
    .locals 1

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    return-object p0
.end method

.method public bridge synthetic removeAll()Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->removeAll()Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    .line 86
    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;->serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    return-void
.end method

.method public serializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 97
    invoke-virtual {p3, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    .line 100
    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/BaseJsonNode;->serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p3, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public set(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    if-nez p2, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ContainerNode;->nullNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/NullNode;

    move-result-object p2

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_set(ILcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->size()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 690
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 692
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const/16 v3, 0x2c

    .line 694
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 696
    :cond_0
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/node/ArrayNode;->_children:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v3}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
