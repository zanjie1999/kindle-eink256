.class public Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
.super Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;
.source "MapLikeType.java"


# instance fields
.field protected final _keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected final _valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 2
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

    .line 38
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 40
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
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

    .line 46
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 48
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;"
        }
    .end annotation

    .line 54
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

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

    .line 60
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 173
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public containedTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "K"

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "V"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
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

    .line 257
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 259
    :cond_2
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    .line 260
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v3, p1, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v3, p1, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, v3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x3c

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v0, ">;"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public getKeyType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public isContainerType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMapLikeType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTrueMapType()Z
    .locals 2

    .line 237
    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
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

    .line 67
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 70
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

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

    .line 87
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 90
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[map-like type; class "

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

    .line 77
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 80
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

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

    .line 100
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 103
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 7

    .line 118
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object p1

    return-object p1
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 7

    .line 131
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object p1

    return-object p1
.end method

.method public withKeyTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 7

    .line 216
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public withKeyValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 7

    .line 224
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 7

    .line 111
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object p1

    return-object p1
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 7

    .line 125
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_keyType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->_valueType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object p1

    return-object p1
.end method
