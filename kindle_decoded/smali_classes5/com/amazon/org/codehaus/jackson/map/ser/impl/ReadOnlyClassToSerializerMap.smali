.class public final Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;
.super Ljava/lang/Object;
.source "ReadOnlyClassToSerializerMap.java"


# instance fields
.field protected final _cacheKey:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

.field protected final _map:Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;


# direct methods
.method private constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const-class v1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    .line 32
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    return-void
.end method

.method public static from(Ljava/util/HashMap;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    invoke-direct {v1, p0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;)V

    return-object v0
.end method


# virtual methods
.method public instance()Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 2

    .line 37
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;)V

    return-object v0
.end method

.method public typedValueSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->resetTyped(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    .line 53
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->find(Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public typedValueSerializer(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->resetTyped(Ljava/lang/Class;)V

    .line 59
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->find(Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public untypedValueSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->resetUntyped(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    .line 71
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->find(Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method public untypedValueSerializer(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->resetUntyped(Ljava/lang/Class;)V

    .line 65
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_map:Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->_cacheKey:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->find(Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method
