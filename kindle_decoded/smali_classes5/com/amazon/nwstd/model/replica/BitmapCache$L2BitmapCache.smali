.class Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;
.super Lcom/amazon/nwstd/utils/LRUCache;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/model/replica/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2BitmapCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/nwstd/utils/LRUCache<",
        "Ljava/lang/String;",
        "Lcom/amazon/nwstd/model/replica/CacheElt;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

.field final synthetic this$0:Lcom/amazon/nwstd/model/replica/BitmapCache;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapCache;ILcom/amazon/nwstd/model/replica/BitmapPool;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;->this$0:Lcom/amazon/nwstd/model/replica/BitmapCache;

    .line 19
    invoke-direct {p0, p2}, Lcom/amazon/nwstd/utils/LRUCache;-><init>(I)V

    if-eqz p3, :cond_0

    .line 23
    iput-object p3, p0, Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bitmap pool must exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/amazon/nwstd/model/replica/CacheElt;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;->entryRemoved(Ljava/lang/String;Lcom/amazon/nwstd/model/replica/CacheElt;)V

    return-void
.end method

.method protected entryRemoved(Ljava/lang/String;Lcom/amazon/nwstd/model/replica/CacheElt;)V
    .locals 1

    .line 33
    iget-object p1, p2, Lcom/amazon/nwstd/model/replica/CacheElt;->b:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/amazon/nwstd/model/replica/CacheElt;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    sget-object v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne p2, v0, :cond_1

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    monitor-enter p2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/utils/LRUObjectPool;->push(Ljava/lang/Object;)Z

    .line 37
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/amazon/nwstd/model/replica/CacheElt;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;->sizeOf(Ljava/lang/String;Lcom/amazon/nwstd/model/replica/CacheElt;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/amazon/nwstd/model/replica/CacheElt;)I
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapCache$L2BitmapCache;->this$0:Lcom/amazon/nwstd/model/replica/BitmapCache;

    iget-object p2, p2, Lcom/amazon/nwstd/model/replica/CacheElt;->b:Landroid/graphics/Bitmap;

    invoke-static {p1, p2}, Lcom/amazon/nwstd/model/replica/BitmapCache;->access$000(Lcom/amazon/nwstd/model/replica/BitmapCache;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
