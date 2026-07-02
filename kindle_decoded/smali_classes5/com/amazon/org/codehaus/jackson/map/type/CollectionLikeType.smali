.class public Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;
.super Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;
.source "CollectionLikeType.java"


# instance fields
.field protected final _elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    if-nez p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public containedTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "E"

    return-object p1

    :cond_0
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

    .line 192
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 194
    :cond_2
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    .line 195
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v3, p1, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

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

    .line 117
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBase;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x3c

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v0, ">;"

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public isCollectionLikeType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isContainerType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTrueCollectionType()Z
    .locals 2

    .line 178
    const-class v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[collection-like type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 66
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 4

    .line 87
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object p1

    return-object p1
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 4

    .line 100
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object p1

    return-object p1
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 4

    .line 80
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object p1

    return-object p1
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 4

    .line 94
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->_elementType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object p1

    return-object p1
.end method
