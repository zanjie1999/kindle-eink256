.class public Lcom/amazon/krf/platform/KRFPageView;
.super Landroid/widget/ImageView;
.source "KRFPageView.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final LOG_TAG:Ljava/lang/String; = "KRFPageView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mListener:Lcom/amazon/krf/platform/KRFPageViewListener;

.field private mPageNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/amazon/krf/platform/KRFPageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/krf/platform/KRFPageView;-><init>(Landroid/content/Context;J)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-wide p2, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 34
    invoke-static {p0, p2, p3}, Lcom/amazon/krf/platform/KRFPageView;->nativeSetPageView(Lcom/amazon/krf/platform/KRFPageView;J)V

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create KRFPageView with 0 ptr"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static allocateBitmap(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 122
    :try_start_0
    sget-object v0, Lcom/amazon/krf/platform/KRFPageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allocate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pixel bitmap"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KRFPageView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private freeBitmap()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFPageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    iput-object v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private static native nativeDisposePage(J)V
.end method

.method private static native nativeGetPageModel(J)Lcom/amazon/krf/platform/PageModel;
.end method

.method private static native nativeGetPositionRange(J)Lcom/amazon/krf/platform/PositionRange;
.end method

.method private static native nativeRenderAndBlock(Landroid/graphics/Rect;JZ)Z
.end method

.method private static native nativeRenderAsyncAtSize(Landroid/graphics/Rect;JLcom/amazon/krf/platform/KRFPageViewListener;Z)V
.end method

.method private static native nativeSetPageView(Lcom/amazon/krf/platform/KRFPageView;J)V
.end method

.method private presentBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 143
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFPageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private declared-synchronized setPagePointer(J)V
    .locals 5

    monitor-enter p0

    .line 155
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 156
    iput-wide p1, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 5

    monitor-enter p0

    .line 185
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 186
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/KRFPageView;->nativeDisposePage(J)V

    .line 187
    iput-wide v2, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFPageView;->dispose()V

    .line 176
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized getPageModel()Lcom/amazon/krf/platform/PageModel;
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFPageView;->getPagePointer()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/KRFPageView;->nativeGetPageModel(J)Lcom/amazon/krf/platform/PageModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPagePointer()J
    .locals 5

    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 109
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    const-string v0, "KRF"

    const-string v1, "PageView called with invalid state"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KRFPageView Called after dispose()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPositionRange()Lcom/amazon/krf/platform/PositionRange;
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFPageView;->getPagePointer()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/KRFPageView;->nativeGetPositionRange(J)Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized renderAndBlock(Landroid/graphics/Rect;)Z
    .locals 3

    monitor-enter p0

    .line 50
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/krf/platform/KRFPageView;->nativeRenderAndBlock(Landroid/graphics/Rect;JZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renderAndBlock(Landroid/graphics/Rect;Z)Z
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J

    invoke-static {p1, v0, v1, p2}, Lcom/amazon/krf/platform/KRFPageView;->nativeRenderAndBlock(Landroid/graphics/Rect;JZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renderAsyncAtSize(Landroid/graphics/Rect;)V
    .locals 4

    monitor-enter p0

    .line 71
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J

    iget-object v2, p0, Lcom/amazon/krf/platform/KRFPageView;->mListener:Lcom/amazon/krf/platform/KRFPageViewListener;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/krf/platform/KRFPageView;->nativeRenderAsyncAtSize(Landroid/graphics/Rect;JLcom/amazon/krf/platform/KRFPageViewListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renderAsyncAtSize(Landroid/graphics/Rect;Z)V
    .locals 3

    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFPageView;->mPageNativePtr:J

    iget-object v2, p0, Lcom/amazon/krf/platform/KRFPageView;->mListener:Lcom/amazon/krf/platform/KRFPageViewListener;

    invoke-static {p1, v0, v1, v2, p2}, Lcom/amazon/krf/platform/KRFPageView;->nativeRenderAsyncAtSize(Landroid/graphics/Rect;JLcom/amazon/krf/platform/KRFPageViewListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPageViewListener(Lcom/amazon/krf/platform/KRFPageViewListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFPageView;->mListener:Lcom/amazon/krf/platform/KRFPageViewListener;

    return-void
.end method
