.class public Lcom/amazon/krf/platform/PageManager;
.super Ljava/lang/Object;
.source "PageManager.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/amazon/krf/platform/KRFPageViewListener;

.field private mNativeListenerPtr:J

.field private mNativePageManagerPtr:J

.field private mNativePageUpdateListenerPtr:J

.field private mNativeProviderPtr:J

.field private mOptions:Lcom/amazon/krf/platform/PageManagerOptions;

.field private mPageUpdateListener:Lcom/amazon/krf/platform/KRFPageUpdateListener;

.field private mSettings:Lcom/amazon/krf/platform/ViewSettings;


# direct methods
.method private constructor <init>(JJLjava/lang/ref/WeakReference;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageManagerOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/amazon/krf/platform/ViewSettings;",
            "Lcom/amazon/krf/platform/PageManagerOptions;",
            ")V"
        }
    .end annotation

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-wide p1, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageManagerPtr:J

    .line 349
    iput-wide p3, p0, Lcom/amazon/krf/platform/PageManager;->mNativeProviderPtr:J

    .line 350
    invoke-static {p0}, Lcom/amazon/krf/platform/PageManager;->nativeCreatePageViewRenderListener(Lcom/amazon/krf/platform/PageManager;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/krf/platform/PageManager;->mNativeListenerPtr:J

    .line 351
    iput-object p5, p0, Lcom/amazon/krf/platform/PageManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 352
    iput-object p6, p0, Lcom/amazon/krf/platform/PageManager;->mSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 353
    iput-object p7, p0, Lcom/amazon/krf/platform/PageManager;->mOptions:Lcom/amazon/krf/platform/PageManagerOptions;

    .line 355
    iget-wide p3, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageManagerPtr:J

    invoke-static {p1, p2, p3, p4}, Lcom/amazon/krf/platform/PageManager;->nativeSetPageViewRenderListener(JJ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/krf/platform/ViewSettings;J)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/PageManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 59
    iput-object p2, p0, Lcom/amazon/krf/platform/PageManager;->mSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 60
    iput-wide p3, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageManagerPtr:J

    .line 61
    invoke-static {p0}, Lcom/amazon/krf/platform/PageManager;->nativeCreatePageViewRenderListener(Lcom/amazon/krf/platform/PageManager;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/krf/platform/PageManager;->mNativeListenerPtr:J

    .line 63
    iget-wide p3, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageManagerPtr:J

    invoke-static {p1, p2, p3, p4}, Lcom/amazon/krf/platform/PageManager;->nativeSetPageViewRenderListener(JJ)V

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create PageManger without backing PageManager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/krf/platform/PageManager;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->disposePageManager()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/krf/platform/PageManager;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->disposePageManagerProvider()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/krf/platform/PageManager;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->disposePageViewRenderListener()V

    return-void
.end method

.method private acquirePageViewFromNativePage(J[I)Lcom/amazon/krf/platform/KRFPageView;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    const-string p1, "KRF"

    const-string p2, "PageManager acquirePage called with invalid state"

    .line 275
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-eqz p1, :cond_6

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    .line 288
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PageManager Called with bad pagePtr: StatusCode was 5, NULL pagePtr is returned from pageWithPageModel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PageManager Called with bad pagePtr: StatusCode was "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Unexpected"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 286
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PageManager Called with bad pagePtr: StatusCode was 4, NULL pageModel returned from findPageModel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PageManager Called with bad pagePtr: StatusCode was 3, NULL pageManager is returned from getPageManagerFromPtr"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PageManager Called with bad pagePtr: StatusCode was 2, NULL nativePageManagerPtr passed to nativeGetPageWithPageModel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PageManager Called with bad pagePtr: StatusCode was 1, NULL pageModel passed to nativeGetPageWithPageModel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PageManager Called with bad pagePtr: StatusCode was 0, Unexpected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 294
    :cond_7
    invoke-static {p1, p2}, Lcom/amazon/krf/platform/PageManager;->nativeGetPageViewFromNativePage(J)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p3

    if-nez p3, :cond_8

    .line 298
    new-instance p3, Lcom/amazon/krf/platform/KRFPageView;

    iget-object v0, p0, Lcom/amazon/krf/platform/PageManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p3, v0, p1, p2}, Lcom/amazon/krf/platform/KRFPageView;-><init>(Landroid/content/Context;J)V

    .line 299
    invoke-static {p1, p2}, Lcom/amazon/krf/platform/PageManager;->nativeNotifyViewDidLoadOnPage(J)V

    .line 305
    :cond_8
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 306
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/amazon/krf/platform/PageManager;->nativeGetDefaultBackgroundColor(J)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-object p3
.end method

.method private convertToPointerArray(Ljava/util/ArrayList;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;)[J"
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 312
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 313
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/KRFPageView;

    invoke-virtual {v2}, Lcom/amazon/krf/platform/KRFPageView;->getPagePointer()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageManagerOptions;)Lcom/amazon/krf/platform/PageManager;
    .locals 8

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 44
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/amazon/krf/platform/PageManager;->nativeCreatePageManagerProvider()J

    move-result-wide v3

    .line 46
    invoke-static {p1, p2, p3, v3, v4}, Lcom/amazon/krf/platform/PageManager;->nativeCreatePageManager(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageManagerOptions;J)J

    move-result-wide v1

    const-wide/16 p0, 0x0

    cmp-long v0, v1, p0

    if-eqz v0, :cond_0

    .line 47
    new-instance p0, Lcom/amazon/krf/platform/PageManager;

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/krf/platform/PageManager;-><init>(JJLjava/lang/ref/WeakReference;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageManagerOptions;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context, book, settings, or options cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private disposePageManager()V
    .locals 6

    .line 362
    iget-wide v0, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageManagerPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageUpdateListenerPtr:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 363
    :cond_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageManagerPtr:J

    iget-wide v4, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageUpdateListenerPtr:J

    invoke-static {v0, v1, v4, v5}, Lcom/amazon/krf/platform/PageManager;->nativeDisposePageManager(JJ)V

    .line 364
    iput-wide v2, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageManagerPtr:J

    .line 365
    iput-wide v2, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageUpdateListenerPtr:J

    :cond_1
    return-void
.end method

.method private disposePageManagerProvider()V
    .locals 5

    .line 370
    iget-wide v0, p0, Lcom/amazon/krf/platform/PageManager;->mNativeProviderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 371
    invoke-static {v0, v1}, Lcom/amazon/krf/platform/PageManager;->nativeDisposePageManagerProvider(J)V

    .line 372
    iput-wide v2, p0, Lcom/amazon/krf/platform/PageManager;->mNativeProviderPtr:J

    :cond_0
    return-void
.end method

.method private disposePageViewRenderListener()V
    .locals 5

    .line 377
    iget-wide v0, p0, Lcom/amazon/krf/platform/PageManager;->mNativeListenerPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 378
    invoke-static {v0, v1}, Lcom/amazon/krf/platform/PageManager;->nativeDisposePageViewRenderListener(J)V

    .line 379
    iput-wide v2, p0, Lcom/amazon/krf/platform/PageManager;->mNativeListenerPtr:J

    :cond_0
    return-void
.end method

.method private declared-synchronized getPageManagerPointer()J
    .locals 5

    monitor-enter p0

    .line 266
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageManagerPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 270
    iget-wide v0, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageManagerPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    const-string v0, "KRF"

    const-string v1, "PageManager called with invalid state"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
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

.method private static native nativeCreatePageManager(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageManagerOptions;J)J
.end method

.method private static native nativeCreatePageManagerProvider()J
.end method

.method private static native nativeCreatePageViewRenderListener(Lcom/amazon/krf/platform/PageManager;)J
.end method

.method private static native nativeDisposePageManager(JJ)V
.end method

.method private static native nativeDisposePageManagerProvider(J)V
.end method

.method private static native nativeDisposePageViewRenderListener(J)V
.end method

.method private static native nativeGetDefaultBackgroundColor(J)I
.end method

.method private static native nativeGetIndexedOffsetPairAdjacentToPageModel(Lcom/amazon/krf/platform/PageModel;J)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PageModel;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetNumberofPagesInRange(Lcom/amazon/krf/platform/PositionRange;J)I
.end method

.method private static native nativeGetPageContainingPosition(Lcom/amazon/krf/platform/Position;J)J
.end method

.method private static native nativeGetPageModelAtOffset(Lcom/amazon/krf/platform/PageModel;IJ)Lcom/amazon/krf/platform/PageModel;
.end method

.method private static native nativeGetPageModelAtPosition(Lcom/amazon/krf/platform/Position;ZJ)Lcom/amazon/krf/platform/PageModel;
.end method

.method private static native nativeGetPageViewFromNativePage(J)Lcom/amazon/krf/platform/KRFPageView;
.end method

.method private static native nativeGetPageWithPageModel(Lcom/amazon/krf/platform/PageModel;ZJ[I)J
.end method

.method private static native nativeIsPageIndexingComplete(J)Z
.end method

.method private static native nativeNotifyViewDidLoadOnPage(J)V
.end method

.method private static native nativeOnDisplayedPagesChanged([JJ)V
.end method

.method private static native nativeReloadPagesWithOptions(Lcom/amazon/krf/platform/PageManagerOptions;J)V
.end method

.method private static native nativeSetKRFPageUpdateListener(Lcom/amazon/krf/platform/KRFPageUpdateListener;JJ)J
.end method

.method private static native nativeSetPageViewRenderListener(JJ)V
.end method

.method private static native nativeStartIndexing(Lcom/amazon/krf/platform/Position;J)V
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 247
    :try_start_0
    new-instance v0, Lcom/amazon/krf/platform/PageManager$2;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/PageManager$2;-><init>(Lcom/amazon/krf/platform/PageManager;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KRF"

    const-string v2, "Exception while trying to run PageManager.dispose from main thread"

    .line 257
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "KRF"

    const-string v1, "PageManager.dispose was missed called manually, attempting to clean up from finalizer"

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Lcom/amazon/krf/platform/PageManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/PageManager$1;-><init>(Lcom/amazon/krf/platform/PageManager;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getIndexedOffsetPairAdjacentToPageModel(Lcom/amazon/krf/platform/PageModel;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PageModel;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/platform/PageManager;->nativeGetIndexedOffsetPairAdjacentToPageModel(Lcom/amazon/krf/platform/PageModel;J)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_0
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getNumberOfPagesInRange(Lcom/amazon/krf/platform/PositionRange;)I
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/platform/PageManager;->nativeGetNumberofPagesInRange(Lcom/amazon/krf/platform/PositionRange;J)I

    move-result p1

    return p1
.end method

.method public getPageModel(Lcom/amazon/krf/platform/PageModel;I)Lcom/amazon/krf/platform/PageModel;
    .locals 2

    .line 145
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/amazon/krf/platform/PageManager;->nativeGetPageModelAtOffset(Lcom/amazon/krf/platform/PageModel;IJ)Lcom/amazon/krf/platform/PageModel;

    move-result-object p1

    return-object p1
.end method

.method public getPageModel(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/PageModel;
    .locals 1

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/amazon/krf/platform/PageManager;->getPageModel(Lcom/amazon/krf/platform/Position;Z)Lcom/amazon/krf/platform/PageModel;

    move-result-object p1

    return-object p1
.end method

.method public getPageModel(Lcom/amazon/krf/platform/Position;Z)Lcom/amazon/krf/platform/PageModel;
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/amazon/krf/platform/PageManager;->nativeGetPageModelAtPosition(Lcom/amazon/krf/platform/Position;ZJ)Lcom/amazon/krf/platform/PageModel;

    move-result-object p1

    return-object p1
.end method

.method public getPageView(Lcom/amazon/krf/platform/PageModel;Z)Lcom/amazon/krf/platform/KRFPageView;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 109
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2, v0}, Lcom/amazon/krf/platform/PageManager;->nativeGetPageWithPageModel(Lcom/amazon/krf/platform/PageModel;ZJ[I)J

    move-result-wide p1

    .line 110
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/krf/platform/PageManager;->acquirePageViewFromNativePage(J[I)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    return-object p1
.end method

.method public getPageViewContainingPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/KRFPageView;
    .locals 3

    .line 182
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/platform/PageManager;->nativeGetPageContainingPosition(Lcom/amazon/krf/platform/Position;J)J

    move-result-wide v0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v2, 0x0

    aput v2, p1, v2

    .line 183
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/krf/platform/PageManager;->acquirePageViewFromNativePage(J[I)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    return-object p1
.end method

.method public isPageIndexingComplete()Z
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/krf/platform/PageManager;->nativeIsPageIndexingComplete(J)Z

    move-result v0

    return v0
.end method

.method public onDisplayedPagesChanged(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/KRFPageView;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/PageManager;->convertToPointerArray(Ljava/util/ArrayList;)[J

    move-result-object p1

    .line 205
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/platform/PageManager;->nativeOnDisplayedPagesChanged([JJ)V

    :cond_0
    return-void
.end method

.method public reloadPagesWithOptions(Lcom/amazon/krf/platform/PageManagerOptions;)V
    .locals 2

    .line 193
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/platform/PageManager;->nativeReloadPagesWithOptions(Lcom/amazon/krf/platform/PageManagerOptions;J)V

    return-void
.end method

.method public setKRFPageUpdateListener(Lcom/amazon/krf/platform/KRFPageUpdateListener;)V
    .locals 4

    .line 224
    iput-object p1, p0, Lcom/amazon/krf/platform/PageManager;->mPageUpdateListener:Lcom/amazon/krf/platform/KRFPageUpdateListener;

    .line 226
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageUpdateListenerPtr:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/krf/platform/PageManager;->nativeSetKRFPageUpdateListener(Lcom/amazon/krf/platform/KRFPageUpdateListener;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/krf/platform/PageManager;->mNativePageUpdateListenerPtr:J

    return-void
.end method

.method public setKRFPageViewListener(Lcom/amazon/krf/platform/KRFPageViewListener;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/amazon/krf/platform/PageManager;->mListener:Lcom/amazon/krf/platform/KRFPageViewListener;

    return-void
.end method

.method public startIndexing(Lcom/amazon/krf/platform/Position;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/amazon/krf/platform/PageManager;->getPageManagerPointer()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/platform/PageManager;->nativeStartIndexing(Lcom/amazon/krf/platform/Position;J)V

    return-void
.end method
