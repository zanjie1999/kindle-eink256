.class public final Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;
.super Lcom/amazon/kindle/seekbar/LayeredSeekBar;
.source "ReaderVerticalSeekBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$OnFastNavigationSeekBarChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderVerticalSeekBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderVerticalSeekBar.kt\ncom/amazon/kcp/reader/ui/ReaderVerticalSeekBar\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,503:1\n1#2:504\n*E\n"
.end annotation


# instance fields
.field private final LAYER_CONTRAST_INDEX:F

.field private final LAYER_PROGRESS_INDEX:F

.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private alphaLayers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDisplayMasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private minVisibleLayerIndex:F

.field private progressAnimator:Landroid/animation/ValueAnimator;

.field private readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private visualProgress:I

.field private waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const-class p2, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Utils.getTag(ReaderVerticalSeekBar::class.java)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->TAG:Ljava/lang/String;

    const/high16 p2, 0x41000000    # 8.0f

    .line 57
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->LAYER_CONTRAST_INDEX:F

    const/high16 p2, 0x41a00000    # 20.0f

    .line 58
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->LAYER_PROGRESS_INDEX:F

    .line 77
    sget-object p2, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->MIN_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-virtual {p2}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->getValue()F

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->minVisibleLayerIndex:F

    .line 78
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->alphaLayers:Ljava/util/TreeMap;

    .line 84
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->cachedDisplayMasks:Ljava/util/List;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->cs_location_seekbar_snapping_threshold:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->snappingThresh:F

    return-void
.end method

.method private final attemptClaimDrag()V
    .locals 2

    .line 413
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private final checkAndHandleSnap(Landroid/view/MotionEvent;)V
    .locals 3

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->findSnap(F)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    .line 359
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setProgressWithAnimation(IZ)V

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find snap at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->minVisibleLayerIndex:F

    sget-object v0, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->MIN_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-virtual {v0}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->getValue()F

    move-result v0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_3

    .line 366
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 367
    :cond_1
    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_PIN_PRESS:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->POST_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    .line 366
    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    goto :goto_1

    .line 370
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final eventInDisplayMasks(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->cachedDisplayMasks:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 333
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private final findSnap(F)I
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 379
    :cond_0
    new-instance v0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;

    iget v1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->snappingThresh:F

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;-><init>(FF)V

    .line 381
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->alphaLayers:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;

    .line 382
    iget-object v2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->addSnappingCandidateProvider(Lcom/amazon/kindle/krx/ui/seekbar/ISnappingCandidateProvider;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;)V

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->getBestPosition()I

    move-result p1

    .line 386
    invoke-virtual {v0}, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->notifyCandidates()V

    return p1
.end method

.method private final getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 2

    .line 472
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 473
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_0

    .line 474
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    const-string v1, "it.colorModeFromAppTheme"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    .line 475
    invoke-static {v0}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    const-string v1, "ColorModeUtil.getColorMode(id)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private final getPageColor()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    const-string v1, "docViewer.colorMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    const-string v1, "ColorModeUtil.getColorMode(docViewer.colorMode.id)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    :goto_0
    return-object v0
.end method

.method private final initLayersForVerticalSeekBar()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amazon/kindle/seekbar/SeekBarUtils;->initLayersForVerticalSeekBar(Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private final isTouchInsideThumb(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 447
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 449
    iget-object v1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    invoke-virtual {p0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v2

    const-string v3, "seekBar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result v1

    .line 450
    iget v2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    sub-float v3, v1, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 451
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 453
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 454
    iget v2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    sub-float v3, v1, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 455
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final onStartTrackingTouch()V
    .locals 0

    .line 417
    invoke-virtual {p0, p0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->notifyListenersOnStartTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.method private final onStopTrackingTouch()V
    .locals 0

    .line 421
    invoke-virtual {p0, p0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->notifyListenersOnStopTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.method private final onThumbClicked()V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->updateMRPRPosition(ILjava/lang/String;Landroid/content/Context;)V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 499
    instance-of v2, v1, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$OnFastNavigationSeekBarChangeListener;

    if-eqz v2, :cond_1

    .line 500
    check-cast v1, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$OnFastNavigationSeekBarChangeListener;

    invoke-interface {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$OnFastNavigationSeekBarChangeListener;->onThumbClick(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final recordScrubberMetric(F)V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->unmap(F)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 351
    :goto_0
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v0, p1, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    invoke-static {v0}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->setEndPositionRange(Lcom/amazon/android/docviewer/IPositionRange;)V

    .line 352
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 353
    :cond_2
    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCRUBBER:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->POST_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    .line 352
    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    return-void
.end method

.method private final startDrag(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x1

    .line 393
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 394
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->onStartTrackingTouch()V

    .line 395
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 396
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->attemptClaimDrag()V

    .line 399
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 400
    :cond_1
    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCRUBBER:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->PRE_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    .line 399
    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    return-void
.end method

.method private final trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->unmap(F)F

    move-result p1

    .line 405
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setProgressWithAnimation(IZ)V

    return-void
.end method


# virtual methods
.method public addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V
    .locals 1

    const-string v0, "layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->alphaLayers:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearLayers()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->alphaLayers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public final doInvalidate()V
    .locals 2

    .line 427
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public final getAlphaLayers()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->alphaLayers:Ljava/util/TreeMap;

    return-object v0
.end method

.method public final getProgressMapper()Lcom/amazon/kindle/krx/ui/seekbar/IMapper;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    const-string v1, "progressToX"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSeekBarCoordinateValues(I)Landroid/graphics/Point;
    .locals 3

    .line 122
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 123
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getTop()I

    move-result v1

    int-to-float v1, v1

    .line 124
    iget-object v2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    if-eqz v2, :cond_0

    int-to-float p1, p1

    .line 125
    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result p1

    add-float/2addr v1, p1

    .line 127
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method public final getVisualProgress()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->visualProgress:I

    return v0
.end method

.method public final initialize(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    const-string v0, "readerLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 94
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    .line 95
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 96
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->initLayersForVerticalSeekBar()V

    .line 97
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 102
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->cachedDisplayMasks:Ljava/util/List;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    .line 110
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 111
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 112
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->progressAnimator:Landroid/animation/ValueAnimator;

    .line 113
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    const-string v0, "canvas"

    move-object/from16 v11, p1

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget v0, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->minProgress:I

    if-ltz v0, :cond_5

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 224
    iget v2, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressHeight:F

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v12, v2

    .line 225
    iget v2, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressHeight:F

    add-float v13, v12, v2

    .line 226
    iget v2, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 227
    iget v2, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    mul-float v3, v3, v2

    add-float v14, v0, v3

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->getPageColor()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v15

    .line 230
    iget-object v2, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 232
    iget-object v3, v1, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->alphaLayers:Ljava/util/TreeMap;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;

    .line 233
    iget v5, v1, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->minVisibleLayerIndex:F

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    .line 235
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    iget v2, v1, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->LAYER_CONTRAST_INDEX:F

    cmpg-float v2, v4, v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->LAYER_PROGRESS_INDEX:F

    cmpg-float v2, v4, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v2, v15

    :cond_3
    :goto_2
    move-object/from16 v17, v2

    .line 238
    iget-object v5, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result v10

    move-object v2, v3

    move-object/from16 v3, p1

    move-object/from16 v4, v17

    move v6, v12

    move v7, v13

    move v8, v0

    move v9, v14

    .line 238
    invoke-interface/range {v2 .. v10}, Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;->draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, v17

    goto :goto_0

    .line 242
    :cond_4
    monitor-exit p0

    return-void

    .line 219
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Be sure to set minProgress."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3

    monitor-enter p0

    .line 177
    :try_start_0
    iget v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 178
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 180
    invoke-static {v0, p1, v2}, Landroid/widget/SeekBar;->resolveSizeAndState(III)I

    move-result p1

    .line 181
    invoke-static {v1, p2, v2}, Landroid/widget/SeekBar;->resolveSizeAndState(III)I

    move-result p2

    .line 180
    invoke-virtual {p0, p1, p2}, Landroid/widget/SeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 283
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->eventInDisplayMasks(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 285
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->minVisibleLayerIndex:F

    sget-object v3, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->KNOB_LAYER_INDEX:Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;

    invoke-virtual {v3}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->getValue()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    .line 287
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->isTouchInsideThumb(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 292
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->onStartTrackingTouch()V

    .line 293
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->onThumbClicked()V

    .line 296
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 297
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->onStopTrackingTouch()V

    :cond_4
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 303
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 p1, 0x3

    if-eq v0, p1, :cond_6

    goto :goto_1

    .line 322
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->onStopTrackingTouch()V

    .line 323
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    goto :goto_1

    .line 310
    :cond_7
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->checkAndHandleSnap(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 314
    :cond_8
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->checkAndHandleSnap(Landroid/view/MotionEvent;)V

    .line 315
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->onStopTrackingTouch()V

    .line 316
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->recordScrubberMetric(F)V

    goto :goto_1

    .line 306
    :cond_9
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 327
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->doInvalidate()V

    return v2

    :cond_a
    :goto_2
    return v1
.end method

.method public final onWaypointsModelEvent(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;->getPublisher()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->doInvalidate()V

    :cond_0
    return-void
.end method

.method protected resetMapping(II)V
    .locals 10

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;-><init>(FFFFZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    .line 190
    :cond_0
    iget v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 191
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v1

    .line 193
    iget-object v1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;->domain(FF)Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;->range(FF)Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;->mirror(Z)Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    .line 195
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->cachedDisplayMasks:Ljava/util/List;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 197
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isHorizontal(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;

    if-eqz v1, :cond_2

    .line 198
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 199
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 206
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr v3, p2

    int-to-float p2, v3

    .line 207
    check-cast p1, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;

    invoke-static {v2, p2}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;->displayMask(Lkotlin/ranges/ClosedFloatingPointRange;)Lcom/amazon/kindle/seekbar/DisplayMaskAwareLinearMapper;

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->doInvalidate()V

    return-void
.end method

.method public final setAlphaLayers(Ljava/util/TreeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->alphaLayers:Ljava/util/TreeMap;

    return-void
.end method

.method public final setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 154
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 155
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setMinPosition(I)V

    .line 159
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setMax(I)V

    .line 160
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    const-string v0, "doc.bookInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setProgressWithAnimation(IZ)V

    .line 161
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    :cond_0
    return-void
.end method

.method public final setMinVisibleLayerIndex(Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;)V
    .locals 2

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->minVisibleLayerIndex:F

    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->getValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/SeekBarUtils$SeekBarLayerZIndex;->getValue()F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->minVisibleLayerIndex:F

    .line 144
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->doInvalidate()V

    :cond_0
    return-void
.end method

.method public final setProgressWithAnimation(IZ)V
    .locals 2

    .line 245
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setProgress(I)V

    .line 246
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-eqz p2, :cond_3

    .line 249
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 250
    :cond_0
    iget p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->visualProgress:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    .line 251
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    const-wide/16 v0, 0xc8

    .line 252
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 253
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$setProgressWithAnimation$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar$setProgressWithAnimation$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->setVisualProgress(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final setVisualProgress(I)V
    .locals 0

    .line 274
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;->visualProgress:I

    .line 275
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method
