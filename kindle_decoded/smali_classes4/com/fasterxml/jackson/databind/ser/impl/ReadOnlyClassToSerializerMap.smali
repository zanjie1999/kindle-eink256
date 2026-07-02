.class public final Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
.super Ljava/lang/Object;
.source "ReadOnlyClassToSerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;
    }
.end annotation


# instance fields
.field private final _buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

.field private final _mask:I

.field private final _size:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/util/TypeKey;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->findSize(I)I

    move-result v0

    .line 29
    iput v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_size:I

    add-int/lit8 v1, v0, -0x1

    .line 30
    iput v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    .line 31
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    .line 32
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/util/TypeKey;

    .line 34
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/TypeKey;->hashCode()I

    move-result v3

    iget v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    and-int/2addr v3, v4

    .line 35
    new-instance v4, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    aget-object v5, v0, v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-direct {v4, v5, v2, v1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;Lcom/fasterxml/jackson/databind/util/TypeKey;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    aput-object v4, v0, v3

    goto :goto_0

    .line 37
    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    return-void
.end method

.method private static final findSize(I)I
    .locals 1

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    add-int/2addr p0, p0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr p0, v0

    :goto_0
    const/16 v0, 0x8

    :goto_1
    if-ge v0, p0, :cond_1

    add-int/2addr v0, v0

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static from(Ljava/util/HashMap;)Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/fasterxml/jackson/databind/util/TypeKey;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public typedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->typedHash(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 72
    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesTyped(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1

    .line 75
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->next:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesTyped(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public typedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->typedHash(Ljava/lang/Class;)I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 89
    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesTyped(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1

    .line 92
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->next:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesTyped(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public untypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->untypedHash(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 106
    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesUntyped(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1

    .line 109
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->next:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesUntyped(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public untypedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->untypedHash(Ljava/lang/Class;)I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->_mask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 123
    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesUntyped(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1

    .line 126
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->next:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->matchesUntyped(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1

    :cond_2
    return-object v1
.end method
