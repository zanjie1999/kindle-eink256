.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
.super Ljava/lang/Object;
.source "StdTypeResolverBuilder.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field protected _customIdResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

.field protected _defaultImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected _idType:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field protected _includeAs:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;

.field protected _typeProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noTypeInfoBuilder()Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 3

    .line 58
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->init(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildTypeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 104
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->idResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object v2

    .line 107
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$As:[I

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 116
    new-instance v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeDeserializer;

    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeDeserializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v6

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_2
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsWrapperTypeDeserializer;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    invoke-direct {v0, p2, v2, p4, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsWrapperTypeDeserializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    return-object v0

    .line 111
    :cond_3
    new-instance v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;

    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v6

    .line 109
    :cond_4
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    invoke-direct {v0, p2, v2, p4, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    return-object v0
.end method

.method public buildTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 82
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->idResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object p1

    .line 83
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$As:[I

    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_4

    const/4 p3, 0x2

    if-eq p2, p3, :cond_3

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    .line 91
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;

    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    invoke-direct {p2, p1, p4, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeSerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V

    return-object p2

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_2
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;

    invoke-direct {p2, p1, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V

    return-object p2

    .line 87
    :cond_3
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;

    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    invoke-direct {p2, p1, p4, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V

    return-object p2

    .line 85
    :cond_4
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;

    invoke-direct {p2, p1, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V

    return-object p2
.end method

.method public bridge synthetic defaultImpl(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultImpl(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    return-object p0
.end method

.method public getDefaultImpl()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_defaultImpl:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeProperty()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    return-object v0
.end method

.method protected idResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;ZZ)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_customIdResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    if-eqz v0, :cond_0

    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-eqz v0, :cond_5

    .line 189
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$Id:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 200
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Do not know how to construct standard type id resolver for idType: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->construct(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;

    move-result-object p1

    return-object p1

    .line 193
    :cond_3
    new-instance p3, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;)V

    return-object p3

    .line 191
    :cond_4
    new-instance p3, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;)V

    return-object p3

    .line 187
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not build, \'init()\' not yet called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic inclusion(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->inclusion(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object p1

    return-object p1
.end method

.method public inclusion(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 133
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object p0

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "includeAs can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic init(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->init(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 0

    if-eqz p1, :cond_0

    .line 68
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 69
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_customIdResolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    .line 71
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    return-object p0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "idType can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic typeProperty(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object p1

    return-object p1
.end method

.method public typeProperty(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object p1

    .line 148
    :cond_1
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    return-object p0
.end method
