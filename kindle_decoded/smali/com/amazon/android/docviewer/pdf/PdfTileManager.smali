.class Lcom/amazon/android/docviewer/pdf/PdfTileManager;
.super Ljava/lang/Object;
.source "PdfTileManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/pdf/PdfTileManager$ProgressSpinnerCallback;,
        Lcom/amazon/android/docviewer/pdf/PdfTileManager$PdfTileManagerCallback;
    }
.end annotation


# static fields
.field private static CANVAS_COLOR:I = 0x0

.field private static CANVAS_OUT_OF_MEMORY_COLOR:I = 0x0

.field private static DEBUG_COLOR:I = 0x0

.field private static final DEFAULT_NATIVE_TILE_ZOOM_LEVEL_CUTOFF:F = 1.25f

.field private static final DEFAULT_WAIT_TIME_FOR_FIRST_RENDER:I = 0x64

.field private static final EPSILON:F = 1.0E-8f

.field private static final FEATURE_OPTIMIZE_BITMAP_SCALING:Z = true

.field private static final FEATURE_SHOW_LOADING_SPINNER:Z = false

.field private static final FEATURE_SHOW_LOADING_TEXT:Z = true

.field public static final FEATURE_USE_TOPLEVEL_PLACEHOLDER_TILES:Z = true

.field private static final FEATURE_ZOOM_WITH_NATIVE_TILES:Z = false

.field private static final MAXIMUM_NATIVE_TILE_ZOOM_LEVEL:I = 0x4

.field private static final MAXIMUM_TILE_SIZE_LIMIT:I = 0x500

.field private static final MAXIMUM_TILE_UPSCALING_FACTOR:F = 0.1f

.field private static final MAX_RENDER_WAIT_TIME_DURING_ANIMATION:I = 0x19

.field private static final MAX_ZOOM_SCALE:F = 1.0f

.field private static final MIN_ZOOM_SCALE:F = 0.2f

.field private static final NATIVE_TILE_ZOOM_LEVEL_1_CUTOFF_IN_LANDSCAPE_MODE:F = 1.08f

.field private static final NATIVE_TILE_ZOOM_LEVEL_1_CUTOFF_IN_PORTRAIT_MODE:F = 1.01f

.field private static PAGE_OUTLINE_DEBUG_COLOR:I = 0x0

.field private static final PDFTILEMANAGER_CTOR_TIMER:Ljava/lang/String; = "PdfTileManagerCtor"

.field private static final PROGRESS_SPINNER_SIZE:I = 0x18

.field private static final RECTF_COORDINATE_COMPARISON_TOLERANCE:F = 1.0E-5f

.field private static final SCALING_EPSILON:F = 1.0f

.field private static final TAG:Ljava/lang/String;

.field private static final m_debug:Z = false


# instance fields
.field private final m_cache_ClipRect:Landroid/graphics/Rect;

.field private final m_cache_DrawTileMatrix:Landroid/graphics/Matrix;

.field private final m_cache_DrawTileOffset:Landroid/graphics/Point;

.field private final m_cache_ScaledTileRect:Landroid/graphics/RectF;

.field private final m_cache_TilePainter:Landroid/graphics/Paint;

.field private final m_cache_TileRect:Landroid/graphics/RectF;

.field private final m_callback:Lcom/amazon/android/docviewer/pdf/PdfTileManager$PdfTileManagerCallback;

.field private final m_canvasPaint:Landroid/graphics/Paint;

.field private m_doneFirstDraw:Z

.field private m_doneFirstRender:Z

.field private final m_firstRenderCountDown:Ljava/util/concurrent/CountDownLatch;

.field private m_firstRenderWaitTime:I

.field private m_ignoreTileUpdatesUntilIdle:Z

.field private final m_initialViewport:Landroid/graphics/RectF;

.field private m_isAcceptingNewRequests:Z

.field private m_isFlinging:Z

.field private m_isPanning:Z

.field private m_isZooming:Z

.field private final m_loadingText:Ljava/lang/String;

.field private final m_loadingTextPaint:Landroid/graphics/Paint;

.field private m_notifyAllTilesRenderAfterNextDraw:Z

.field private final m_pageIndex:I

.field private final m_pageOutlinePaint:Landroid/graphics/Paint;

.field private final m_parentTileView:Lcom/amazon/android/docviewer/pdf/PdfTileView;

.field private final m_parentTileViewHandler:Landroid/os/Handler;

.field private final m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

.field private final m_pdfRenderer:Lcom/amazon/android/docviewer/pdf/IPdfRenderer;

.field private final m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

.field private final m_progressBar:Landroid/widget/ProgressBar;

.field private final m_spinnerWidget:Landroid/graphics/drawable/Drawable;

.field private final m_tileHeight:I

.field private final m_tileMissingPaint:Landroid/graphics/Paint;

.field private final m_tileOutlinePaint:Landroid/graphics/Paint;

.field private final m_tileWidth:I

.field private final m_tileXScaling:F

.field private final m_tileYScaling:F

.field private m_tileZoomLevel:I

.field private final m_topLevelDivisor:I

.field private final m_topLevelZoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 133
    sput v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->CANVAS_COLOR:I

    const/high16 v1, -0x10000

    .line 134
    sput v1, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->DEBUG_COLOR:I

    const v1, -0xff0001

    .line 135
    sput v1, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->PAGE_OUTLINE_DEBUG_COLOR:I

    .line 136
    sput v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->CANVAS_OUT_OF_MEMORY_COLOR:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/pdf/PdfTileView;IIIJLcom/amazon/android/docviewer/pdf/PdfTileManager$PdfTileManagerCallback;Lcom/amazon/android/docviewer/pdf/PdfPage;Lcom/amazon/android/docviewer/pdf/IPdfRenderer;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v11, p9

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x1

    .line 160
    iput v12, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelZoom:I

    .line 164
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_TilePainter:Landroid/graphics/Paint;

    .line 165
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileOffset:Landroid/graphics/Point;

    .line 166
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileMatrix:Landroid/graphics/Matrix;

    .line 167
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_TileRect:Landroid/graphics/RectF;

    .line 168
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_ScaledTileRect:Landroid/graphics/RectF;

    .line 169
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_ClipRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    .line 193
    iput-boolean v13, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstRender:Z

    .line 194
    iput-boolean v13, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstDraw:Z

    .line 195
    iput-boolean v12, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isAcceptingNewRequests:Z

    .line 196
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderCountDown:Ljava/util/concurrent/CountDownLatch;

    const/16 v4, 0x64

    .line 197
    iput v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderWaitTime:I

    .line 264
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    const-string v5, "PdfTileManagerCtor"

    .line 265
    invoke-virtual {v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    move-object/from16 v4, p2

    .line 267
    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_parentTileView:Lcom/amazon/android/docviewer/pdf/PdfTileView;

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_parentTileViewHandler:Landroid/os/Handler;

    .line 270
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_canvasPaint:Landroid/graphics/Paint;

    .line 271
    sget v5, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->CANVAS_COLOR:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_canvasPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 274
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileMissingPaint:Landroid/graphics/Paint;

    .line 275
    sget v5, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->CANVAS_OUT_OF_MEMORY_COLOR:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileMissingPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileOutlinePaint:Landroid/graphics/Paint;

    .line 279
    sget v5, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->DEBUG_COLOR:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    iget-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileOutlinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pageOutlinePaint:Landroid/graphics/Paint;

    .line 283
    sget v5, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->PAGE_OUTLINE_DEBUG_COLOR:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pageOutlinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 286
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_loadingTextPaint:Landroid/graphics/Paint;

    const v5, -0x333334

    .line 287
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    iget-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_loadingTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 289
    iget-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_loadingTextPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 290
    iget-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_loadingTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    sget v4, Lcom/amazon/kindle/krl/R$string;->pdf_tile_loading:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_loadingText:Ljava/lang/String;

    .line 294
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_progressBar:Landroid/widget/ProgressBar;

    .line 295
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_spinnerWidget:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x18

    .line 296
    invoke-virtual {v1, v13, v13, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 297
    iget-object v1, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_spinnerWidget:Landroid/graphics/drawable/Drawable;

    new-instance v4, Lcom/amazon/android/docviewer/pdf/PdfTileManager$ProgressSpinnerCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/amazon/android/docviewer/pdf/PdfTileManager$ProgressSpinnerCallback;-><init>(Lcom/amazon/android/docviewer/pdf/PdfTileManager;Lcom/amazon/android/docviewer/pdf/PdfTileManager$1;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 299
    invoke-virtual/range {p9 .. p9}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageWidth()I

    move-result v1

    .line 300
    invoke-virtual/range {p9 .. p9}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageHeight()I

    move-result v4

    const-string v5, "; forcing to 1"

    if-gtz v1, :cond_0

    .line 302
    sget-object v6, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pageWidth == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    if-gtz v4, :cond_1

    .line 306
    sget-object v6, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pageHeight == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    move v14, v4

    .line 310
    :goto_0
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int v5, v14, v4

    .line 311
    div-int/2addr v5, v1

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x500

    .line 316
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 322
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v1

    mul-float v8, v8, v9

    int-to-float v9, v2

    div-float/2addr v8, v9

    int-to-float v9, v14

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v9, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 326
    invoke-virtual/range {p9 .. p9}, Lcom/amazon/android/docviewer/pdf/PdfPage;->isScreenOrientationPortrait()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 327
    invoke-direct {p0, v11, v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->recomputeViewportForPortrait(Lcom/amazon/android/docviewer/pdf/PdfPage;II)Landroid/graphics/RectF;

    move-result-object v7

    .line 331
    invoke-virtual/range {p9 .. p9}, Lcom/amazon/android/docviewer/pdf/PdfPage;->isFullScreenOnHeight()Z

    move-result v4

    const-wide/16 v12, 0x1

    if-eqz v4, :cond_2

    int-to-double v4, v3

    int-to-double v10, v1

    mul-double v4, v4, v10

    int-to-double v10, v14

    div-double/2addr v4, v10

    .line 332
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    move v5, v3

    goto :goto_1

    :cond_2
    int-to-double v4, v2

    int-to-double v10, v14

    mul-double v4, v4, v10

    int-to-double v10, v1

    div-double/2addr v4, v10

    .line 334
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    move v4, v2

    .line 339
    :cond_3
    :goto_1
    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    cmpl-float v10, v8, v9

    if-lez v10, :cond_4

    sub-float/2addr v9, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v9, v8

    const/4 v8, 0x0

    .line 340
    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 342
    :cond_4
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v8, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_initialViewport:Landroid/graphics/RectF;

    move-object/from16 v11, p9

    .line 343
    invoke-virtual {v11, v7}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setViewport(Landroid/graphics/RectF;)V

    .line 344
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v11, v7}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setDrawingArea(Landroid/graphics/Rect;)V

    if-le v5, v6, :cond_6

    .line 350
    div-int v7, v5, v6

    .line 351
    rem-int v8, v5, v6

    int-to-float v8, v8

    const v9, 0x3dcccccd    # 0.1f

    int-to-float v10, v6

    mul-float v10, v10, v9

    cmpl-float v8, v8, v10

    if-lez v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_5
    move/from16 v8, p5

    goto :goto_2

    :cond_6
    move/from16 v8, p5

    const/4 v7, 0x1

    .line 357
    :goto_2
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 359
    iput v12, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    move-object/from16 v7, p8

    .line 360
    iput-object v7, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_callback:Lcom/amazon/android/docviewer/pdf/PdfTileManager$PdfTileManagerCallback;

    .line 361
    div-int/2addr v4, v12

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    .line 362
    div-int/2addr v5, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    .line 363
    iget-object v7, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_TileRect:Landroid/graphics/RectF;

    iget v8, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    int-to-float v8, v8

    int-to-float v6, v6

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v9, v8, v6}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float v4, v4

    .line 366
    iget v6, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    iput v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileXScaling:F

    int-to-float v4, v5

    .line 367
    iget v5, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileYScaling:F

    .line 369
    new-instance v13, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    iget v8, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    iget v9, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    const/4 v10, 0x1

    move-object v4, v13

    move-object/from16 v5, p9

    move-wide/from16 v6, p6

    invoke-direct/range {v4 .. v10}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;-><init>(Lcom/amazon/android/docviewer/pdf/PdfPage;JIII)V

    iput-object v13, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    .line 373
    iput-object v11, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 374
    invoke-virtual/range {p9 .. p9}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v4

    iput v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pageIndex:I

    move-object/from16 v4, p10

    .line 375
    iput-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfRenderer:Lcom/amazon/android/docviewer/pdf/IPdfRenderer;

    .line 377
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getNativeTileZoomLevel()I

    move-result v4

    iput v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    const/4 v4, 0x0

    .line 378
    iput-boolean v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isZooming:Z

    .line 379
    iput-boolean v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isPanning:Z

    .line 380
    iput-boolean v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isFlinging:Z

    const/4 v4, 0x1

    .line 382
    iput-boolean v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_ignoreTileUpdatesUntilIdle:Z

    .line 383
    iput-boolean v4, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_notifyAllTilesRenderAfterNextDraw:Z

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created PdfTileManager for page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pageIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": tileWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tileHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " zoom="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " divisor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " scaling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileXScaling:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileYScaling:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " page="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " view="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " viewportHeight="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 389
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/pdf/PdfTileManager;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_parentTileViewHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/pdf/PdfTileManager;)Lcom/amazon/android/docviewer/pdf/PdfTileView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_parentTileView:Lcom/amazon/android/docviewer/pdf/PdfTileView;

    return-object p0
.end method

.method private declared-synchronized allRenderRequestsSent()V
    .locals 2

    monitor-enter p0

    .line 1405
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_notifyAllTilesRenderAfterNextDraw:Z

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfRenderer:Lcom/amazon/android/docviewer/pdf/IPdfRenderer;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pageIndex:I

    invoke-interface {v0, p0, v1}, Lcom/amazon/android/docviewer/pdf/IPdfRenderer;->notifyWhenAllTileRequestsComplete(Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;I)V

    const/4 v0, 0x0

    .line 1408
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_notifyAllTilesRenderAfterNextDraw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1410
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private awaitTiles(Z)Z
    .locals 5

    .line 809
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->isAllTilesReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 810
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderWaitTime:I

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x19

    if-lt v1, p1, :cond_1

    .line 817
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderWaitTime:I

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 824
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderCountDown:Ljava/util/concurrent/CountDownLatch;

    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderWaitTime:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 828
    :catch_0
    :try_start_1
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->TAG:Ljava/lang/String;

    const-string v2, "Interrupted while waiting for first render to complete..."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    :goto_0
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderWaitTime:I

    goto :goto_2

    :goto_1
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderWaitTime:I

    .line 832
    throw v0

    :cond_2
    :goto_2
    return v0
.end method

.method private cancelAllPendingRenders()V
    .locals 2

    .line 1109
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->clearAllPendingTiles()V

    .line 1110
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfRenderer:Lcom/amazon/android/docviewer/pdf/IPdfRenderer;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pageIndex:I

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/pdf/IPdfRenderer;->cancelPendingRenders(I)V

    return-void
.end method

.method private cancelPendingRenders(I)V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->clearPendingTiles(I)V

    .line 1105
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfRenderer:Lcom/amazon/android/docviewer/pdf/IPdfRenderer;

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pageIndex:I

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/pdf/IPdfRenderer;->cancelPendingRenders(I)V

    return-void
.end method

.method private drawLoadProgress(Landroid/graphics/Canvas;)V
    .locals 5

    .line 765
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstDraw:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_parentTileView:Lcom/amazon/android/docviewer/pdf/PdfTileView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->shouldShowPageLoadProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 766
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_spinnerWidget:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/Animatable;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 771
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v2, 0x41400000    # 12.0f

    sub-float/2addr v3, v2

    .line 785
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_loadingText:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_loadingTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 790
    :cond_2
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstDraw:Z

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 791
    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_3
    return-void
.end method

.method private drawTile(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/pdf/PdfTile;IIIFZ)V
    .locals 6

    int-to-float v0, p5

    div-float/2addr p6, v0

    .line 1307
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1309
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1312
    :cond_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1314
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileOffset:Landroid/graphics/Point;

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    mul-int v3, v3, p4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1315
    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    mul-int v3, v3, p3

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 1317
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    mul-float v2, v2, v0

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    .line 1319
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float v3, v3, v0

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float v0, v0

    mul-float v3, v3, v0

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    int-to-float v0, v0

    mul-float v3, v3, v0

    .line 1321
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileOffset:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    iget v2, v4, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1327
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileXScaling:F

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileYScaling:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1332
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p6, p6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1335
    iget-object p6, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_ScaledTileRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_TileRect:Landroid/graphics/RectF;

    invoke-virtual {p6, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1336
    iget-object p6, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_ScaledTileRect:Landroid/graphics/RectF;

    const/4 v0, 0x1

    if-eqz v1, :cond_8

    .line 1338
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfTile;->needsRender()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1341
    invoke-virtual {p6}, Landroid/graphics/RectF;->width()F

    move-result p5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p5, v2

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float p5, p5, v3

    if-gtz p5, :cond_2

    .line 1342
    invoke-virtual {p6}, Landroid/graphics/RectF;->height()F

    move-result p5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p6

    int-to-float p6, p6

    sub-float/2addr p5, p6

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    cmpl-float p5, p5, v3

    if-lez p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p5, 0x1

    .line 1345
    :goto_1
    monitor-enter p2

    if-eqz p1, :cond_5

    .line 1346
    :try_start_0
    iget-boolean p6, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstRender:Z

    if-eqz p6, :cond_5

    if-eqz p5, :cond_4

    .line 1348
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_TilePainter:Landroid/graphics/Paint;

    iget-boolean p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isZooming:Z

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1349
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileMatrix:Landroid/graphics/Matrix;

    iget-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_TilePainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 1352
    :cond_4
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileMatrix:Landroid/graphics/Matrix;

    const/4 p4, 0x0

    invoke-virtual {p1, v1, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_7

    if-eqz p7, :cond_6

    goto :goto_3

    .line 1357
    :cond_6
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    .line 1358
    :goto_3
    invoke-direct {p0, p3, p4, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getTileRectangle(III)Landroid/graphics/RectF;

    move-result-object p3

    .line 1359
    iget-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_canvasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1366
    :cond_7
    :goto_4
    monitor-exit p2

    goto :goto_7

    :goto_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_8
    if-eqz p7, :cond_9

    goto :goto_6

    .line 1369
    :cond_9
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    .line 1370
    :goto_6
    invoke-direct {p0, p3, p4, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getTileRectangle(III)Landroid/graphics/RectF;

    move-result-object p3

    if-eqz p1, :cond_b

    .line 1373
    iget-boolean p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstRender:Z

    if-eqz p4, :cond_a

    if-eqz p7, :cond_b

    .line 1374
    :cond_a
    iget-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_canvasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1377
    :cond_b
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfTile;->needsRender()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->hiResTileRequestSuppressed()Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz p7, :cond_d

    .line 1378
    :cond_c
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_DrawTileOffset:Landroid/graphics/Point;

    iget p3, p1, Landroid/graphics/Point;->x:I

    neg-int p3, p3

    iget p1, p1, Landroid/graphics/Point;->y:I

    neg-int p1, p1

    invoke-direct {p0, p2, p5, p3, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->requestRenderTile(Lcom/amazon/android/docviewer/pdf/PdfTile;III)V

    :cond_d
    :goto_7
    return-void
.end method

.method private final getNativeTileZoomLevel()I
    .locals 3

    .line 1254
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getViewportZoomLevel()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3fa00000    # 1.25f

    goto :goto_0

    .line 1260
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v1

    .line 1261
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v2, v1, :cond_1

    const v1, 0x3f8a3d71    # 1.08f

    goto :goto_0

    :cond_1
    const v1, 0x3f8147ae    # 1.01f

    :goto_0
    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 1270
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1271
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 1272
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    mul-int/lit8 v1, v1, 0x2

    :cond_2
    const/4 v0, 0x4

    .line 1276
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private final getTileRectangle(III)Landroid/graphics/RectF;
    .locals 4

    .line 1114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1115
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1116
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1118
    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    mul-int p2, p2, v3

    iput p2, v2, Landroid/graphics/Point;->x:I

    .line 1119
    iget p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    mul-int p1, p1, p2

    iput p1, v2, Landroid/graphics/Point;->y:I

    .line 1121
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    int-to-float p2, p3

    mul-float p1, p1, p2

    iget p3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float p3, p3

    mul-float p1, p1, p3

    iget p3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    int-to-float p3, p3

    mul-float p1, p1, p3

    .line 1123
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    mul-float p3, p3, p2

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float v3, v3

    mul-float p3, p3, v3

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    int-to-float v3, v3

    mul-float p3, p3, v3

    .line 1125
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iget p1, v2, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    invoke-virtual {v1, v3, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1127
    iget p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileXScaling:F

    iget p3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileYScaling:F

    invoke-virtual {v1, p1, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1128
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getViewportZoomLevel()F

    move-result p1

    div-float/2addr p1, p2

    .line 1129
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1131
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    int-to-float p2, p2

    iget p3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    int-to-float p3, p3

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method private final getViewportZoomLevel()F
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getViewportZoomLevel(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method private final getViewportZoomLevel(Landroid/graphics/RectF;)F
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileXScaling:F

    div-float/2addr v0, p1

    iget p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method private final getVisibleTiles(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 1137
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getVisibleTiles(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private final getVisibleTiles(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 4

    .line 1154
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1158
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p2

    and-int/lit8 p2, p2, 0x1

    .line 1159
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    and-int/2addr p2, v0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1164
    :cond_0
    new-instance p2, Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->mapScreenToWorldPoint(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1165
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->mapScreenToWorldPoint(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1166
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p2, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 1168
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1172
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 1174
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1176
    iget p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    .line 1180
    iget v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1182
    iget v1, v0, Landroid/graphics/RectF;->right:F

    mul-float v1, v1, p2

    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 1184
    iget v1, v0, Landroid/graphics/RectF;->top:F

    mul-float v1, v1, p2

    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1185
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v0, v0, p2

    iget p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1189
    iget p2, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 1190
    iget p2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1191
    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 1192
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1194
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int p2, p2, v0

    .line 1195
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    add-int/lit8 v0, v0, 0x3

    mul-int v0, v0, v0

    if-le p2, v0, :cond_2

    .line 1198
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "More tiles visible than possible, visible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", maximum: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private final getZoomedOutTiles(Z)Landroid/graphics/Rect;
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1210
    new-instance p1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1211
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 1213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1217
    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x1

    int-to-float v3, v2

    mul-float v1, v1, v3

    iget v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float v4, v4

    mul-float v1, v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1219
    iget v1, p1, Landroid/graphics/RectF;->right:F

    mul-float v1, v1, v3

    iget v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float v4, v4

    mul-float v1, v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1221
    iget v1, p1, Landroid/graphics/RectF;->top:F

    mul-float v1, v1, v3

    iget v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float v4, v4

    mul-float v1, v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1222
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float p1, p1, v3

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1226
    iget p1, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 1227
    iget p1, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 1228
    iget p1, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 1229
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private hiResTileRequestSuppressed()Z
    .locals 1

    .line 1473
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isZooming:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isPanning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isFlinging:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isAllTilesReady()Z
    .locals 5

    .line 805
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needToDrawLowRes(Landroid/graphics/Rect;)Z
    .locals 8

    .line 747
    iget v0, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_3

    .line 748
    iget v1, p1, Landroid/graphics/Rect;->left:I

    move v7, v1

    :goto_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v7, v1, :cond_2

    const/4 v4, 0x0

    .line 751
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    const/4 v3, 0x1

    move v5, v0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->getTile(IZIII)Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 754
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->needsRender()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private preRenderTile(III)V
    .locals 12

    .line 1084
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->getTile(IZIII)Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1088
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getViewportZoomLevel()F

    move-result v10

    .line 1089
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preRenderTile P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":Z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":R"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " viewportZoomLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    move v7, p2

    move v8, p3

    move v9, p1

    .line 1091
    invoke-direct/range {v4 .. v11}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->drawTile(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/pdf/PdfTile;IIIFZ)V

    :cond_0
    return-void
.end method

.method private recomputeViewportForPortrait(Lcom/amazon/android/docviewer/pdf/PdfPage;II)Landroid/graphics/RectF;
    .locals 9

    .line 410
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageHeight()I

    move-result v0

    .line 411
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageWidth()I

    move-result v1

    int-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    int-to-double v4, p2

    int-to-double v6, p3

    div-double/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpg-double v8, v2, v4

    if-gez v8, :cond_1

    int-to-float p2, p2

    int-to-float v0, v0

    mul-float p2, p2, v0

    int-to-float p3, p3

    div-float/2addr p2, p3

    int-to-float p3, v1

    div-float/2addr p2, p3

    sub-float p3, p2, v6

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    const v0, 0x322bcc77    # 1.0E-8f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 421
    new-instance v0, Landroid/graphics/RectF;

    neg-float v1, p3

    sub-float/2addr p2, p3

    invoke-direct {v0, v1, v7, p2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 423
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7, v7, p2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    const/4 p2, 0x1

    .line 425
    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setFullScreenOnHeight(Z)V

    goto :goto_1

    .line 427
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    int-to-float p3, p3

    int-to-float v1, v1

    mul-float p3, p3, v1

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, v0

    div-float/2addr p3, p2

    invoke-direct {v2, v7, v7, v6, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p2, 0x0

    .line 428
    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setFullScreenOnHeight(Z)V

    move-object v0, v2

    :goto_1
    return-object v0
.end method

.method private rectEquals(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1459
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->rectSideEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    .line 1460
    invoke-direct {p0, v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->rectSideEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    .line 1461
    invoke-direct {p0, v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->rectSideEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 1462
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->rectSideEquals(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private rectSideEquals(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 1469
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3727c5ac    # 1.0E-5f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private requestRenderTile(Lcom/amazon/android/docviewer/pdf/PdfTile;III)V
    .locals 8

    .line 957
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isAcceptingNewRequests:Z

    if-nez v0, :cond_0

    return-void

    .line 967
    :cond_0
    monitor-enter p1

    .line 968
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->needsRender()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->pendingRender()Z

    move-result v0

    if-nez v0, :cond_1

    .line 969
    new-instance v0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    mul-int v7, p2, v1

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;-><init>(Lcom/amazon/android/docviewer/pdf/PdfPage;Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;Lcom/amazon/android/docviewer/pdf/PdfTile;III)V

    .line 974
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfRenderer:Lcom/amazon/android/docviewer/pdf/IPdfRenderer;

    invoke-interface {p2, v0}, Lcom/amazon/android/docviewer/pdf/IPdfRenderer;->requestTile(Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;)V

    .line 976
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private updateVisibleArea()V
    .locals 3

    .line 1413
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getNativeTileZoomLevel()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getVisibleTiles(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->setVisibleArea(ILandroid/graphics/Rect;)V

    return-void
.end method

.method private updateZoomLevel()V
    .locals 3

    .line 1417
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getNativeTileZoomLevel()I

    move-result v0

    .line 1419
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    if-eq v1, v0, :cond_0

    .line 1421
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    .line 1430
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfRenderer:Lcom/amazon/android/docviewer/pdf/IPdfRenderer;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    invoke-interface {v0, v2, v1}, Lcom/amazon/android/docviewer/pdf/IPdfRenderer;->recycle(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;I)V

    :cond_0
    const/4 v0, 0x1

    .line 1433
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_ignoreTileUpdatesUntilIdle:Z

    .line 1434
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_notifyAllTilesRenderAfterNextDraw:Z

    return-void
.end method


# virtual methods
.method public allTilesRendered()V
    .locals 2

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allTilesRendered() callback invoked from rendering thread: pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method applyMatrix(Landroid/graphics/Matrix;)V
    .locals 6

    .line 456
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 457
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    .line 458
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 460
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-static {p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScale(Lcom/amazon/android/docviewer/pdf/PdfPage;Landroid/graphics/RectF;)F

    move-result p1

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    .line 482
    iget p1, v1, Landroid/graphics/RectF;->top:F

    .line 483
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_initialViewport:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v3, p1

    .line 484
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_initialViewport:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v5, p1, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 490
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/4 v3, 0x0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_2

    .line 491
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->centralizeHorizontal(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    .line 493
    :cond_2
    iget p1, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v3

    if-gez v4, :cond_3

    neg-float p1, p1

    .line 494
    invoke-virtual {v0, p1, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 495
    :cond_3
    iget p1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v2

    if-lez v4, :cond_4

    sub-float p1, v2, p1

    .line 496
    invoke-virtual {v0, p1, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 500
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_5

    .line 501
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->centralizeVertical(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_1

    .line 503
    :cond_5
    iget p1, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p1, v3

    if-gez v4, :cond_6

    neg-float p1, p1

    .line 504
    invoke-virtual {v0, v3, p1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 505
    :cond_6
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p1, v2

    if-lez v4, :cond_7

    sub-float/2addr v2, p1

    .line 506
    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 510
    :cond_7
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->rectEquals(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 516
    :cond_8
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setViewport(Landroid/graphics/RectF;)V

    .line 517
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getNativeTileZoomLevel()I

    move-result p1

    const/4 v0, 0x1

    .line 538
    iget-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isPanning:Z

    if-ne v0, v1, :cond_9

    .line 539
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    const/4 v1, 0x0

    .line 540
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getVisibleTiles(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 539
    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->setVisibleArea(ILandroid/graphics/Rect;)V

    :cond_9
    return-void
.end method

.method public applyViewport(Landroid/graphics/RectF;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setViewport(Landroid/graphics/RectF;)V

    .line 443
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->updateVisibleArea()V

    .line 444
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->updateZoomLevel()V

    return-void
.end method

.method centralizeHorizontal(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    .line 553
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    neg-float v2, v0

    .line 554
    iput v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 555
    iput v0, p1, Landroid/graphics/RectF;->right:F

    return-object p1
.end method

.method centralizeVertical(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    .line 545
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    neg-float v2, v0

    .line 546
    iput v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    .line 547
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-object p1
.end method

.method close()V
    .locals 2

    .line 850
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->cancelPendingRenders(I)V

    .line 851
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfRenderer:Lcom/amazon/android/docviewer/pdf/IPdfRenderer;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/pdf/IPdfRenderer;->close(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;)V

    return-void
.end method

.method draw(Landroid/graphics/Canvas;Z)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 638
    iget-object v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_ClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_cache_ClipRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v8, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getVisibleTiles(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    if-nez v10, :cond_1

    return-void

    .line 645
    :cond_1
    iget-object v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_parentTileView:Lcom/amazon/android/docviewer/pdf/PdfTileView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->isAnimating()Z

    move-result v0

    if-eqz p2, :cond_2

    .line 656
    invoke-direct {v8, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->awaitTiles(Z)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->isAllTilesReady()Z

    move-result v0

    .line 659
    :goto_1
    iput-boolean v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstRender:Z

    .line 660
    iget v11, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    .line 661
    invoke-direct/range {p0 .. p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getViewportZoomLevel()F

    move-result v12

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    .line 664
    invoke-direct/range {p0 .. p1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->drawLoadProgress(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    const/4 v13, 0x1

    .line 669
    invoke-direct {v8, v13}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getZoomedOutTiles(Z)Landroid/graphics/Rect;

    move-result-object v14

    .line 672
    iget-boolean v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isZooming:Z

    if-nez v0, :cond_4

    invoke-direct {v8, v10}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->needToDrawLowRes(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 673
    :cond_4
    iget v0, v14, Landroid/graphics/Rect;->top:I

    move v15, v0

    :goto_2
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    if-gt v15, v0, :cond_7

    .line 674
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move v7, v0

    :goto_3
    iget v0, v14, Landroid/graphics/Rect;->right:I

    if-gt v7, v0, :cond_6

    const/4 v4, 0x0

    .line 677
    iget-object v1, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move v5, v15

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->getTile(IZIII)Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v15

    move v4, v7

    move v6, v12

    move v13, v7

    move/from16 v7, v16

    .line 681
    invoke-direct/range {v0 .. v7}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->drawTile(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/pdf/PdfTile;IIIFZ)V

    goto :goto_4

    :cond_5
    move v13, v7

    const/4 v0, 0x1

    .line 683
    invoke-direct {v8, v15, v13, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getTileRectangle(III)Landroid/graphics/RectF;

    move-result-object v1

    .line 684
    iget-object v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileMissingPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v7, v13, 0x1

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x1

    goto :goto_2

    .line 692
    :cond_7
    iget-boolean v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isZooming:Z

    if-nez v0, :cond_a

    .line 693
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move v13, v0

    :goto_5
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    if-gt v13, v0, :cond_a

    .line 694
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move v14, v0

    :goto_6
    iget v0, v10, Landroid/graphics/Rect;->right:I

    if-gt v14, v0, :cond_9

    const/4 v4, 0x0

    .line 701
    iget-object v1, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    const/4 v3, 0x1

    move v2, v11

    move v5, v13

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->getTile(IZIII)Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v13

    move v4, v14

    move v5, v11

    move v6, v12

    .line 705
    invoke-direct/range {v0 .. v7}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->drawTile(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/pdf/PdfTile;IIIFZ)V

    goto :goto_7

    .line 707
    :cond_8
    iget v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    invoke-direct {v8, v13, v14, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getTileRectangle(III)Landroid/graphics/RectF;

    move-result-object v0

    .line 708
    iget-object v1, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileMissingPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_a
    if-eqz v9, :cond_b

    .line 715
    iget-boolean v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstRender:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 716
    iput-boolean v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstDraw:Z

    .line 720
    :cond_b
    iget-boolean v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstDraw:Z

    if-nez v0, :cond_c

    .line 721
    invoke-direct/range {p0 .. p1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->drawLoadProgress(Landroid/graphics/Canvas;)V

    .line 725
    :cond_c
    iget-boolean v0, v8, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_notifyAllTilesRenderAfterNextDraw:Z

    if-eqz v0, :cond_d

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->allRenderRequestsSent()V

    :cond_d
    return-void
.end method

.method finishFling()V
    .locals 1

    const/4 v0, 0x0

    .line 870
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isFlinging:Z

    return-void
.end method

.method finishPan()V
    .locals 1

    const/4 v0, 0x0

    .line 879
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isPanning:Z

    return-void
.end method

.method finishZoom()V
    .locals 1

    .line 860
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->updateZoomLevel()V

    const/4 v0, 0x0

    .line 861
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isZooming:Z

    return-void
.end method

.method public getPageDimensionsAtNativeZoom()Landroid/graphics/Rect;
    .locals 4

    .line 1025
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    mul-int v2, v0, v1

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    mul-int v2, v2, v3

    mul-int v0, v0, v1

    .line 1026
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    mul-int v0, v0, v1

    .line 1027
    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public final getTilePixelFromPagePoint(II)I
    .locals 8

    .line 1038
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_topLevelDivisor:I

    mul-int v2, v0, v1

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    mul-int v2, v2, v3

    mul-int v0, v0, v1

    .line 1039
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    mul-int v0, v0, v1

    add-int/lit8 v2, v2, -0x1

    .line 1040
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v0, v0, -0x1

    .line 1041
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1043
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileWidth:I

    div-int v7, p1, v0

    .line 1044
    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileHeight:I

    div-int v6, p2, v2

    mul-int v0, v0, v7

    sub-int/2addr p1, v0

    mul-int v2, v2, v6

    sub-int/2addr p2, v2

    .line 1048
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_tileZoomLevel:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->getTile(IZIII)Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1051
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 1057
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1058
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1056
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1
.end method

.method public isDoneFirstDraw()Z
    .locals 1

    .line 1002
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstDraw:Z

    return v0
.end method

.method public isDoneFirstRender()Z
    .locals 1

    .line 998
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_doneFirstRender:Z

    return v0
.end method

.method public isFlinging()Z
    .locals 1

    .line 1014
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isFlinging:Z

    return v0
.end method

.method public isPanning()Z
    .locals 1

    .line 1006
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isPanning:Z

    return v0
.end method

.method public isZooming()Z
    .locals 1

    .line 1010
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isZooming:Z

    return v0
.end method

.method mapScreenToWorldOffset(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 3

    .line 613
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 615
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 616
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 617
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 618
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float p1, p1, v1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method mapScreenToWorldPoint(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 3

    .line 600
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 602
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 603
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 604
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 605
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 606
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 607
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float p1, p1, v1

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public onPostAllTilesRendered()V
    .locals 4

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPostAllTilesRendered() callback invoked from UI thread: pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_ignoreTileUpdatesUntilIdle:Z

    .line 593
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_callback:Lcom/amazon/android/docviewer/pdf/PdfTileManager$PdfTileManagerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager$PdfTileManagerCallback;->execute(Landroid/graphics/RectF;)V

    .line 594
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_parentTileView:Lcom/amazon/android/docviewer/pdf/PdfTileView;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfDoc()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->finishFirstPageVisibleTiming()Z

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 595
    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pageIndex:I

    .line 596
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "Page index=%d: allTilesRendered, wasFirstRender=%b"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfCounter"

    .line 595
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method requestRenderTiles()V
    .locals 4

    const/4 v0, 0x0

    .line 986
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getZoomedOutTiles(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 988
    iget v1, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_1

    .line 989
    iget v2, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    const/4 v3, 0x1

    .line 990
    invoke-direct {p0, v3, v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->preRenderTile(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    :cond_1
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->allRenderRequestsSent()V

    return-void
.end method

.method setAcceptingNewRequests(Z)V
    .locals 1

    .line 845
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isAcceptingNewRequests:Z

    .line 846
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfTileCollection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->setNewBitmapAllocationsEnabled(Z)V

    return-void
.end method

.method setDrawingArea(Landroid/graphics/Rect;Z)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_2

    .line 897
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 900
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 901
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 902
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float p2, p2, v1

    .line 903
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 904
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 905
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v1, v1, v2

    .line 906
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v2

    neg-float p2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    neg-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v2, p2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 907
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const/4 v1, 0x0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    .line 908
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object p2

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 910
    :cond_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    .line 911
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 913
    :cond_1
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setDrawingArea(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 918
    :cond_2
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 921
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->isScreenOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 922
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->recomputeViewportForPortrait(Lcom/amazon/android/docviewer/pdf/PdfPage;II)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setViewport(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 924
    :cond_3
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    .line 936
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 937
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    .line 938
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 939
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    .line 941
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v2

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 943
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v0

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_5

    .line 944
    :cond_4
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 945
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 949
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setDrawingArea(Landroid/graphics/Rect;)V

    .line 950
    invoke-virtual {p0, p2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->applyMatrix(Landroid/graphics/Matrix;)V

    .line 951
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->updateVisibleArea()V

    .line 952
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->updateZoomLevel()V

    :cond_6
    :goto_1
    return-void
.end method

.method public setWaitTimeForFirstRender(I)V
    .locals 0

    .line 796
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_firstRenderWaitTime:I

    return-void
.end method

.method startFling()V
    .locals 1

    .line 865
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->cancelAllPendingRenders()V

    const/4 v0, 0x1

    .line 866
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isFlinging:Z

    return-void
.end method

.method startPan()V
    .locals 1

    .line 874
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->cancelAllPendingRenders()V

    const/4 v0, 0x1

    .line 875
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isPanning:Z

    return-void
.end method

.method startZoom()V
    .locals 1

    .line 855
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->cancelAllPendingRenders()V

    const/4 v0, 0x1

    .line 856
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_isZooming:Z

    return-void
.end method

.method public tileRendered(Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;)V
    .locals 3

    .line 570
    iget-object v0, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    monitor-enter v0

    .line 571
    :try_start_0
    iget-object v1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfTile;->setPendingRender(Z)V

    .line 572
    iget-object v1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfTile;->setNeedsRender(Z)V

    .line 575
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_ignoreTileUpdatesUntilIdle:Z

    if-nez v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->m_callback:Lcom/amazon/android/docviewer/pdf/PdfTileManager$PdfTileManagerCallback;

    iget-object p1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getRenderingArea()Landroid/graphics/RectF;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager$PdfTileManagerCallback;->execute(Landroid/graphics/RectF;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 575
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
