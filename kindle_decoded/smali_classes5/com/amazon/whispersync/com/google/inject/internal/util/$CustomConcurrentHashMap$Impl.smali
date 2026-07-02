.class Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$EntrySet;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Values;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$KeySet;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$EntryIterator;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$ValueIterator;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$KeyIterator;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$InternalsImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl<",
            "TK;TV;TE;>.Segment;"
        }
    .end annotation
.end field

.field final strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy<",
            "TK;TV;TE;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy<",
            "TK;TV;TE;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;",
            ")V"
        }
    .end annotation

    .line 585
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 586
    iget v0, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->loadFactor:F

    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->loadFactor:F

    .line 587
    iget v0, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    .line 588
    iget p2, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->initialCapacity:I

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_0

    const/high16 v0, 0x10000

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    rsub-int/lit8 v0, v4, 0x20

    .line 601
    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentShift:I

    add-int/lit8 v0, v3, -0x1

    .line 602
    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentMask:I

    .line 603
    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    const/high16 v0, 0x40000000    # 2.0f

    if-le p2, v0, :cond_2

    const/high16 p2, 0x40000000    # 2.0f

    .line 609
    :cond_2
    div-int v0, p2, v3

    mul-int v3, v3, v0

    if-ge v3, p2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_1
    if-ge v2, v0, :cond_4

    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 618
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    array-length v0, p2

    if-ge v1, v0, :cond_5

    .line 619
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v0, p0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;I)V

    aput-object v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 622
    :cond_5
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 624
    new-instance p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$InternalsImpl;

    invoke-direct {p2, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$InternalsImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;)V

    invoke-interface {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->setInternals(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1918
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1919
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v1

    .line 1920
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1921
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 1923
    sget-object v4, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->loadFactor:Ljava/lang/reflect/Field;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v4, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/high16 v1, 0x10000

    if-le v2, v1, :cond_0

    const/high16 v2, 0x10000

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1936
    :cond_1
    sget-object v2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->segmentShift:Ljava/lang/reflect/Field;

    rsub-int/lit8 v6, v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1937
    sget-object v2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->segmentMask:Ljava/lang/reflect/Field;

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1938
    sget-object v2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->segments:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    move-result-object v6

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/high16 v2, 0x40000000    # 2.0f

    if-le v0, v2, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    .line 1944
    :cond_2
    div-int v2, v0, v5

    mul-int v5, v5, v2

    if-ge v5, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_1
    if-ge v4, v2, :cond_4

    shl-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1953
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 1954
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    new-instance v2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v2, p0, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1957
    :cond_5
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->strategy:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1960
    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 1964
    :cond_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1965
    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1968
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1879
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1880
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->loadFactor:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 1881
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1882
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1883
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1884
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1885
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1887
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 1534
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1535
    invoke-virtual {v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1338
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1339
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    .line 1336
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 8

    if-eqz p1, :cond_b

    .line 1359
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    .line 1360
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1365
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 1367
    aget-object v7, v0, v4

    iget v7, v7, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1368
    aget-object v7, v0, v4

    iget v7, v7, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v7, v1, v4

    add-int/2addr v6, v7

    .line 1369
    aget-object v7, v0, v4

    invoke-virtual {v7, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_3

    const/4 v4, 0x0

    .line 1375
    :goto_2
    array-length v6, v0

    if-ge v4, v6, :cond_3

    .line 1377
    aget-object v6, v0, v4

    iget v6, v6, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1378
    aget v6, v1, v4

    aget-object v7, v0, v4

    iget v7, v7, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v6, v7, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1389
    :cond_5
    array-length v1, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 1390
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1394
    :cond_6
    :try_start_0
    array-length v1, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    .line 1395
    invoke-virtual {v4, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    .line 1401
    :goto_6
    array-length p1, v0

    :goto_7
    if-ge v2, p1, :cond_9

    aget-object v1, v0, v2

    .line 1402
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    return v5

    :catchall_0
    move-exception p1

    .line 1401
    array-length v1, v0

    :goto_8
    if-ge v2, v1, :cond_a

    aget-object v3, v0, v2

    .line 1402
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1401
    :cond_a
    throw p1

    .line 1354
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "value"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1601
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1602
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$EntrySet;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$EntrySet;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1321
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1322
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1319
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method hash(Ljava/lang/Object;)I
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->hashKey(Ljava/lang/Object;)I

    move-result p1

    .line 629
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap;->access$000(I)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 6

    .line 1219
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    .line 1229
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1231
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 1232
    aget-object v5, v0, v3

    iget v5, v5, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v5, :cond_0

    return v2

    .line 1235
    :cond_0
    aget-object v5, v0, v3

    iget v5, v5, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v5, v1, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_4

    const/4 v3, 0x0

    .line 1242
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 1243
    aget-object v4, v0, v3

    iget v4, v4, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    if-nez v4, :cond_3

    aget v4, v1, v3

    aget-object v5, v0, v3

    iget v5, v5, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1557
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1558
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$KeySet;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$KeySet;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method newSegmentArray(I)[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl<",
            "TK;TV;TE;>.Segment;"
        }
    .end annotation

    .line 668
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1428
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1429
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1426
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1423
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1458
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1459
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1446
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1447
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1444
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1441
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1476
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1477
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1474
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1489
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1490
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    .line 1487
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1526
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1527
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1524
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1521
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1508
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1509
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1506
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "newValue"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1503
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "oldValue"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1500
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method segmentFor(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl<",
            "TK;TV;TE;>.Segment;"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentShift:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentMask:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 13

    .line 1260
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    .line 1263
    array-length v1, v0

    new-array v1, v1, [I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    move-wide v8, v6

    const/4 v5, 0x0

    :goto_0
    const/4 v10, 0x2

    if-ge v5, v10, :cond_5

    move-wide v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1270
    :goto_1
    array-length v10, v0

    if-ge v8, v10, :cond_0

    .line 1271
    aget-object v10, v0, v8

    iget v10, v10, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v10, v10

    add-long/2addr v6, v10

    .line 1272
    aget-object v10, v0, v8

    iget v10, v10, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v10, v1, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    if-eqz v9, :cond_3

    move-wide v9, v2

    const/4 v8, 0x0

    .line 1275
    :goto_2
    array-length v11, v0

    if-ge v8, v11, :cond_2

    .line 1276
    aget-object v11, v0, v8

    iget v11, v11, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    .line 1277
    aget v11, v1, v8

    aget-object v12, v0, v8

    iget v12, v12, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v11, v12, :cond_1

    const-wide/16 v8, -0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move-wide v8, v9

    goto :goto_3

    :cond_3
    move-wide v8, v2

    :goto_3
    cmp-long v10, v8, v6

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    cmp-long v1, v8, v6

    if-eqz v1, :cond_9

    .line 1289
    array-length v1, v0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_6

    aget-object v6, v0, v5

    .line 1290
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1292
    :cond_6
    array-length v1, v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v1, :cond_7

    aget-object v6, v0, v5

    .line 1293
    iget v6, v6, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1295
    :cond_7
    array-length v1, v0

    :goto_7
    if-ge v4, v1, :cond_8

    aget-object v5, v0, v4

    .line 1296
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    move-wide v6, v2

    :cond_9
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, v6, v0

    if-lez v2, :cond_a

    const v0, 0x7fffffff

    return v0

    :cond_a
    long-to-int v0, v6

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1579
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1580
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Values;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Values;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method
