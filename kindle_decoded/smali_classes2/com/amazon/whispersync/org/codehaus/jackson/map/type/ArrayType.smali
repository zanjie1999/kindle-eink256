.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBase;
.source "ArrayType.java"


# instance fields
.field protected final _componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

.field protected final _emptyArray:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 33
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    return-void
.end method

.method public static construct(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p0

    return-object p0
.end method

.method public static construct(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
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

    .line 120
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 134
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible narrowing operation: trying to narrow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 0

    if-nez p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

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
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 255
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    if-eq v1, v2, :cond_2

    return v0

    .line 257
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    .line 258
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0x5b

    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0x5b

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public hasGenericTypes()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isArrayType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConcrete()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isContainerType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[array type, component type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 76
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 95
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->withContentValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 66
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 86
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_componentType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1
.end method
