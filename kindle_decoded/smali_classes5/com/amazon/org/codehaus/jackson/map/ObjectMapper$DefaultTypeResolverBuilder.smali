.class public Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;
.super Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
.source "ObjectMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTypeResolverBuilder"
.end annotation


# instance fields
.field protected final _appliesFor:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;->_appliesFor:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    return-void
.end method


# virtual methods
.method public buildTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;->useForType(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->buildTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public buildTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;->useForType(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->buildTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public useForType(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Z
    .locals 5

    .line 156
    const-class v0, Ljava/lang/Object;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$2;->$SwitchMap$org$codehaus$jackson$map$ObjectMapper$DefaultTyping:[I

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;->_appliesFor:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 165
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    .line 158
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v0, :cond_5

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isConcrete()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2
.end method
