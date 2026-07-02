.class public Lcom/amazon/nwstd/model/replica/BitmapPool;
.super Lcom/amazon/nwstd/utils/LRUObjectPool;
.source "BitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/nwstd/utils/LRUObjectPool<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/utils/LRUObjectPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onEvicted(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/amazon/nwstd/utils/LRUObjectPool;->onEvicted(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method protected bridge synthetic onEvicted(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapPool;->onEvicted(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public sizeOf(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unsupported bitmap"

    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    mul-int v0, v0, p1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapPool;->sizeOf(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
