.class public abstract Lcom/amazon/nwstd/utils/LRUCache;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 28
    iput p1, p0, Lcom/amazon/nwstd/utils/LRUCache;->maxSize:I

    .line 29
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/amazon/nwstd/utils/LRUCache;->map:Ljava/util/LinkedHashMap;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/amazon/nwstd/utils/LRUCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "key cannot be null"

    .line 119
    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract entryRemoved(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget v1, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/nwstd/utils/LRUCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    :cond_0
    return-object v0

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 44
    iget-object v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 49
    iget v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->putCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->putCount:I

    .line 50
    iget v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/utils/LRUCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    .line 51
    iget-object v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 53
    iget v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/utils/LRUCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    .line 56
    :cond_0
    iget p1, p0, Lcom/amazon/nwstd/utils/LRUCache;->maxSize:I

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/utils/LRUCache;->trimToSize(I)V

    return-object p2

    .line 45
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "key=%s already exists"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxSize(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/amazon/nwstd/utils/LRUCache;->maxSize:I

    .line 197
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/utils/LRUCache;->trimToSize(I)V

    return-void
.end method

.method public final size()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    return v0
.end method

.method protected abstract sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 209
    iget v1, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/nwstd/utils/LRUCache;->maxSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "LRUCache[size=%s maxSize=%d]"

    .line 209
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize(I)V
    .locals 4

    if-ltz p1, :cond_4

    .line 75
    :goto_0
    iget v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    if-nez v0, :cond_3

    .line 80
    :cond_0
    iget v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/utils/LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/amazon/nwstd/utils/LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget v2, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    invoke-direct {p0, v1, v0}, Lcom/amazon/nwstd/utils/LRUCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/nwstd/utils/LRUCache;->size:I

    .line 89
    iget v2, p0, Lcom/amazon/nwstd/utils/LRUCache;->evictionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazon/nwstd/utils/LRUCache;->evictionCount:I

    .line 91
    invoke-virtual {p0, v1, v0}, Lcom/amazon/nwstd/utils/LRUCache;->entryRemoved(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize>=0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
