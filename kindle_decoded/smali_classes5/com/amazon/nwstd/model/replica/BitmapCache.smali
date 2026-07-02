.class Lcom/amazon/nwstd/model/replica/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHE_CAPACITY:I = 0xa


# instance fields
.field private mCacheL1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/nwstd/model/replica/CacheElt;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheL2:Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;

.field private mL1CacheSize:I

.field private mMaxSize:I


# direct methods
.method constructor <init>(ILcom/amazon/nwstd/model/replica/BitmapPool;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL1:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;-><init>(Lcom/amazon/nwstd/model/replica/BitmapCache;ILcom/amazon/nwstd/model/replica/BitmapPool;)V

    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL2:Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;

    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    .line 58
    iput p1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mMaxSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/nwstd/model/replica/BitmapCache;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getBitmapCount(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method private getBitmapCount(Landroid/graphics/Bitmap;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v1, "Unsupported bitmap"

    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    mul-int v0, v0, p1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private updateL2CacheMaxSize()V
    .locals 2

    .line 199
    iget v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mMaxSize:I

    iget v1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL2:Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/utils/LRUCache;->setMaxSize(I)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL2:Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/utils/LRUCache;->setMaxSize(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method addUnsafe(Ljava/lang/String;Lcom/amazon/nwstd/model/replica/CacheElt;)Lcom/amazon/nwstd/model/replica/CacheElt;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL1:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL1:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p2, Lcom/amazon/nwstd/model/replica/CacheElt;->b:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 109
    iget v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getBitmapCount(Landroid/graphics/Bitmap;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    .line 110
    invoke-direct {p0}, Lcom/amazon/nwstd/model/replica/BitmapCache;->updateL2CacheMaxSize()V

    :cond_0
    return-object p2

    .line 103
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache element("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") already exists!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method existsUnsafe(Ljava/lang/String;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL1:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL2:Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/utils/LRUCache;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public freeMemory()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL2:Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/utils/LRUCache;->trimToSize(I)V

    return-void
.end method

.method declared-synchronized get(Ljava/lang/String;)Lcom/amazon/nwstd/model/replica/CacheElt;
    .locals 0

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getUnsafe(Ljava/lang/String;)Lcom/amazon/nwstd/model/replica/CacheElt;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getBitmapKey(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 150
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getBitmapKeyUnsafe(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getBitmapKeyUnsafe(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL1:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/model/replica/CacheElt;

    iget-object v2, v2, Lcom/amazon/nwstd/model/replica/CacheElt;->b:Landroid/graphics/Bitmap;

    if-ne v2, p1, :cond_0

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method declared-synchronized getSize()I
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    iget v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL2:Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;

    invoke-virtual {v1}, Lcom/amazon/nwstd/utils/LRUCache;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getUnsafe(Ljava/lang/String;)Lcom/amazon/nwstd/model/replica/CacheElt;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL1:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/model/replica/CacheElt;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL2:Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/utils/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/model/replica/CacheElt;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL1:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget p1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    iget-object v1, v0, Lcom/amazon/nwstd/model/replica/CacheElt;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getBitmapCount(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    .line 76
    invoke-direct {p0}, Lcom/amazon/nwstd/model/replica/BitmapCache;->updateL2CacheMaxSize()V

    :cond_0
    return-object v0
.end method

.method declared-synchronized remove(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->removeUnsafe(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removeUnsafe(Ljava/lang/String;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL1:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/model/replica/CacheElt;

    if-eqz v0, :cond_0

    .line 124
    iget v1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    iget-object v2, v0, Lcom/amazon/nwstd/model/replica/CacheElt;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getBitmapCount(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    .line 127
    invoke-direct {p0}, Lcom/amazon/nwstd/model/replica/BitmapCache;->updateL2CacheMaxSize()V

    .line 128
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL2:Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/nwstd/utils/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setMaxSize(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mMaxSize:I

    .line 210
    invoke-direct {p0}, Lcom/amazon/nwstd/model/replica/BitmapCache;->updateL2CacheMaxSize()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 187
    iget v1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mMaxSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL1:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mCacheL2:Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;

    invoke-virtual {v1}, Lcom/amazon/nwstd/utils/LRUCache;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "BitmapCache: mMaxSize=%d mL1CacheSize=%d mCacheL1Count=%d mL2CacheInfo=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatedElement(Lcom/amazon/nwstd/model/replica/CacheElt;)V
    .locals 1

    .line 181
    iget v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    iget-object p1, p1, Lcom/amazon/nwstd/model/replica/CacheElt;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getBitmapCount(Landroid/graphics/Bitmap;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache;->mL1CacheSize:I

    .line 182
    invoke-direct {p0}, Lcom/amazon/nwstd/model/replica/BitmapCache;->updateL2CacheMaxSize()V

    return-void
.end method
