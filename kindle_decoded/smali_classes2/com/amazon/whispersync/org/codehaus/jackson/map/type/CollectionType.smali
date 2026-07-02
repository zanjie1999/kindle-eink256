.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;
.source "CollectionType.java"


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 35
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[collection type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;
    .locals 4

    .line 66
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;->withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;
    .locals 4

    .line 79
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;->withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;
    .locals 4

    .line 59
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;
    .locals 4

    .line 73
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1
.end method
