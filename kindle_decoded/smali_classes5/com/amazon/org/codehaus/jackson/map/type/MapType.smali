.class public final Lcom/amazon/org/codehaus/jackson/map/type/MapType;
.super Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
.source "MapType.java"


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .line 28
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 33
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 44
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public narrowKey(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 65
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[map type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 54
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public widenKey(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 79
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;
    .locals 7

    .line 93
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;
    .locals 7

    .line 106
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withKeyTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->withKeyTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withKeyTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;
    .locals 7

    .line 122
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic withKeyValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withKeyValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;
    .locals 7

    .line 131
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;
    .locals 7

    .line 86
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;
    .locals 7

    .line 100
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method
