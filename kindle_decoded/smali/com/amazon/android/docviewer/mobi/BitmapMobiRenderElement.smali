.class public Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;
.super Ljava/lang/Object;
.source "BitmapMobiRenderElement.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;


# static fields
.field private static final BITMAP_POOL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "BitmapMobiRenderElement"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile m_bitmap:Landroid/graphics/Bitmap;

.field private m_bitmapRect:Landroid/graphics/Rect;

.field private volatile m_isRendering:Z

.field private m_lastUsedPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->BITMAP_POOL:Ljava/util/List;

    .line 31
    const-class v0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    .line 73
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmapRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_isRendering:Z

    return-void
.end method

.method protected static createBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 229
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 230
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$bool;->supports_alpha_rendering:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 231
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    return-object p0
.end method

.method private logPerformanceMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V
    .locals 1

    .line 204
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 206
    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 209
    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    sget-object p1, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->TAG:Ljava/lang/String;

    const-string p2, "Method logPerformanceMetric Returned Null when retrieving Asin."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static releaseBitmapCache(I)V
    .locals 2

    .line 59
    :goto_0
    sget-object v0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->BITMAP_POOL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p0, :cond_0

    .line 60
    sget-object v0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->BITMAP_POOL:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private returnBitmapToPool()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 187
    sget-object v0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->BITMAP_POOL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 190
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->BITMAP_POOL:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method


# virtual methods
.method public createPageBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 0

    .line 220
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->createBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->returnBitmapToPool()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readyToDraw()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_isRendering:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recycle()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->returnBitmapToPool()V

    return-void
.end method

.method public render(IIILcom/amazon/android/docviewer/mobi/IPageProvider;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;)Z"
        }
    .end annotation

    const/4 p3, 0x1

    .line 87
    iput-boolean p3, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_isRendering:Z

    .line 89
    sget-object v0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->BITMAP_POOL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 92
    sget-object v0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->BITMAP_POOL:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 95
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_lastUsedPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    instance-of v3, v3, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;

    if-nez v3, :cond_1

    .line 96
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    :cond_1
    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_3

    .line 100
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    const-string v0, "BitmapMobiRenderElement"

    if-eqz v1, :cond_4

    .line 106
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 108
    :cond_4
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->createBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_5
    invoke-interface {p4}, Lcom/amazon/android/docviewer/mobi/IPageProvider;->getPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/mobi/MobiPage;

    if-eqz v3, :cond_d

    .line 122
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->krfPageAvailible()Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_4

    .line 126
    :cond_6
    invoke-static {v1}, Lcom/amazon/kindle/krf/KRFLibrary;->createGraphicsContext(Ljava/lang/Object;)Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;

    move-result-object v4

    .line 129
    :try_start_1
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getKRFPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 131
    sget-object v5, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_RENDER_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-direct {p0, v5, p3}, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->logPerformanceMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 132
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getKRFPage()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v4

    move v9, p1

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->render(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIII)Z

    move-result p1

    invoke-static {v1}, Lcom/zyyme/eink256/Eink256Patch;->processInPlace(Landroid/graphics/Bitmap;)V

    .line 135
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$bool;->retouch_image_after_jni_wrote_data:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 136
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p2

    .line 137
    invoke-virtual {v1, v2, v2, p2}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 139
    :cond_7
    sget-object p2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_RENDER_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-direct {p0, p2, v2}, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->logPerformanceMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_9

    .line 143
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    const-string p3, "PageFailedToRender"

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {p2, v0, p3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 145
    sget-object p2, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->TAG:Ljava/lang/String;

    const-string p3, "Page failed to render"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 147
    :cond_9
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    if-eq p2, v1, :cond_a

    .line 148
    sget-object p2, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->BITMAP_POOL:Ljava/util/List;

    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_a
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    .line 151
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmapRect:Landroid/graphics/Rect;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    if-ne p2, p3, :cond_b

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    if-eq p2, p3, :cond_c

    .line 152
    :cond_b
    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p2, v2, v2, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_bitmapRect:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :cond_c
    :goto_3
    invoke-virtual {v4}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->delete()V

    .line 158
    iput-object p4, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_lastUsedPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    .line 159
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_isRendering:Z

    return p1

    :catchall_0
    move-exception p1

    .line 157
    invoke-virtual {v4}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->delete()V

    .line 158
    iput-object p4, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_lastUsedPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    .line 159
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_isRendering:Z

    .line 160
    throw p1

    .line 123
    :cond_d
    :goto_4
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_isRendering:Z

    return v2

    :catch_0
    move-exception p1

    .line 111
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    sget-object p3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string p4, "CreateBitmapOutOfMemoryError"

    invoke-virtual {p2, v0, p4, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 112
    sget-object p2, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", free memory: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_e

    .line 114
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    :cond_e
    iput-boolean v2, p0, Lcom/amazon/android/docviewer/mobi/BitmapMobiRenderElement;->m_isRendering:Z

    return v2
.end method
