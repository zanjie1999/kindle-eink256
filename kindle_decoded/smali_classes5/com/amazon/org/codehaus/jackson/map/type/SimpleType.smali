.class public final Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;
.super Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;
.source "SimpleType.java"


# instance fields
.field protected final _typeNames:[Ljava/lang/String;

.field protected final _typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
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

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 47
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    :goto_1
    return-void
.end method

.method public static construct(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;"
        }
    .end annotation

    .line 92
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, ")"

    if-nez v0, :cond_2

    .line 95
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not construct SimpleType for an array (class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not construct SimpleType for a Collection (class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not construct SimpleType for a Map (class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static constructUnsafe(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;"
        }
    .end annotation

    .line 63
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

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

    .line 70
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .locals 8

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/16 v1, 0x3c

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/16 v7, 0x2c

    .line 147
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    :goto_1
    invoke-virtual {v6}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 2

    if-ltz p1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public containedTypeCount()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 227
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    if-eq v2, v3, :cond_2

    return v1

    .line 229
    :cond_2
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    .line 232
    iget-object v2, p1, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    if-eq v2, v3, :cond_3

    return v1

    .line 235
    :cond_3
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 236
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-nez v2, :cond_6

    if-eqz p1, :cond_5

    .line 238
    array-length p1, p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0

    :cond_6
    if-nez p1, :cond_7

    return v1

    .line 242
    :cond_7
    array-length v3, v2

    array-length v4, p1

    if-eq v3, v4, :cond_8

    return v1

    .line 243
    :cond_8
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_a

    .line 244
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    return v1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    return v0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 197
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_1

    const/16 v0, 0x3c

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 200
    invoke-virtual {v3, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x3b

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public isContainerType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Internal error: SimpleType.narrowContentsBy() should never be called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[simple type, class "

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->buildCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Internal error: SimpleType.widenContentsBy() should never be called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 116
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Simple types have no content types; can not call withContenTypeHandler()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;
    .locals 1

    .line 132
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Simple types have no content types; can not call withContenValueHandler()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    move-result-object p1

    return-object p1
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;
    .locals 7

    .line 109
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    move-result-object p1

    return-object p1
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;
    .locals 7

    .line 122
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 125
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeNames:[Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->_typeParameters:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    move-result-object p1

    return-object p1
.end method
