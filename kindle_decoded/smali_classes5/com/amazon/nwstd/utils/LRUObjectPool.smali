.class public abstract Lcom/amazon/nwstd/utils/LRUObjectPool;
.super Ljava/lang/Object;
.source "LRUObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/utils/LRUObjectPool$Filter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mEvictionCount:I

.field private mHitCount:I

.field private mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mMissCount:I

.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 65
    iput p1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mMaxSize:I

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mSize:I

    .line 67
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mList:Ljava/util/LinkedList;

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected onEvicted(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public pop(Lcom/amazon/nwstd/utils/LRUObjectPool$Filter;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/utils/LRUObjectPool$Filter<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 85
    invoke-interface {p1, v1}, Lcom/amazon/nwstd/utils/LRUObjectPool$Filter;->match(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 89
    iget p1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mSize:I

    invoke-virtual {p0, v1}, Lcom/amazon/nwstd/utils/LRUObjectPool;->sizeOf(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mSize:I

    .line 90
    iget p1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mHitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mHitCount:I

    return-object v1

    .line 95
    :cond_1
    iget p1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mMissCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mMissCount:I

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "filter is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public push(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/utils/LRUObjectPool;->sizeOf(Ljava/lang/Object;)I

    move-result v0

    .line 113
    iget v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mSize:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mMaxSize:I

    if-le v1, v2, :cond_1

    sub-int v1, v2, v0

    const/4 v3, 0x0

    if-gez v1, :cond_0

    return v3

    :cond_0
    sub-int/2addr v2, v0

    .line 120
    invoke-virtual {p0, v2}, Lcom/amazon/nwstd/utils/LRUObjectPool;->trimToSize(I)V

    .line 124
    iget v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mSize:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mMaxSize:I

    if-le v1, v2, :cond_1

    return v3

    .line 129
    :cond_1
    iget v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mSize:I

    .line 130
    iget-object v0, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot push a null object to pool"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxSize(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 180
    iput p1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mMaxSize:I

    .line 181
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/utils/LRUObjectPool;->trimToSize(I)V

    return-void

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract sizeOf(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 203
    iget v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mMaxSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mHitCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mMissCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mEvictionCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "LRUObjectPool: maxSize=%d size=%d lenght=%s hitCount=%d missCount=%d evictionCount=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize(I)V
    .locals 4

    const/4 v0, 0x1

    if-ltz p1, :cond_1

    .line 145
    :goto_0
    iget v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mSize:I

    if-le v1, p1, :cond_0

    iget-object v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    .line 147
    iget v2, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mSize:I

    invoke-virtual {p0, v1}, Lcom/amazon/nwstd/utils/LRUObjectPool;->sizeOf(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mSize:I

    .line 148
    iget v2, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mEvictionCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/amazon/nwstd/utils/LRUObjectPool;->mEvictionCount:I

    .line 150
    invoke-virtual {p0, v1}, Lcom/amazon/nwstd/utils/LRUObjectPool;->onEvicted(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 142
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string/jumbo p1, "size=%d < 0"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
