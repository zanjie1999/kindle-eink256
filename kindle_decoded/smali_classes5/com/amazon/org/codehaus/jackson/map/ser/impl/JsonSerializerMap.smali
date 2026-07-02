.class public Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;
.super Ljava/lang/Object;
.source "JsonSerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;
    }
.end annotation


# instance fields
.field private final _buckets:[Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

.field private final _size:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->findSize(I)I

    move-result v0

    .line 22
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_size:I

    add-int/lit8 v1, v0, -0x1

    .line 24
    new-array v0, v0, [Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    .line 27
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hashCode()I

    move-result v4

    and-int/2addr v4, v1

    .line 28
    new-instance v5, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    aget-object v6, v0, v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    invoke-direct {v5, v6, v3, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    aput-object v5, v0, v4

    goto :goto_0

    .line 30
    :cond_0
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_buckets:[Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

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


# virtual methods
.method public find(Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_buckets:[Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 55
    aget-object v0, v1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 63
    :cond_0
    iget-object v2, v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->key:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    iget-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->value:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-object p1

    .line 66
    :cond_1
    iget-object v0, v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->next:Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    if-eqz v0, :cond_2

    .line 67
    iget-object v2, v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->key:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    invoke-virtual {p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->value:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;->_size:I

    return v0
.end method
