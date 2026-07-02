.class public Lcom/amazon/kcp/reader/ReaderGestureDetector;
.super Ljava/lang/Object;
.source "ReaderGestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ReaderGestureDetector$PageDrawnListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_ANGLE_FOR_PAGE_TURN:F = 30.0f

.field private static final MAX_FLING_TO_PAGE_VELOCITY:F = 2800.0f

.field private static final MAX_TURN_OFFSET_PERCENT:F = 0.5f

.field private static final MIN_DISTANCE_FOR_PARTIAL_PAGE_TURN:F = 6.0f

.field private static final MIN_SELECTION_MOVEMENT_DP:F = 3.0f

.field private static final OBJECT_SELECTION_XY_MOTION_TOLERANCE:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static final VIEWPORT_EDGE_EPSILON:F = 0.05f


# instance fields
.field private areSelectionButtonsBeingDismissed:Z

.field private brightnessChanged:Z

.field protected doubleTapInitiated:Z

.field protected draggingSelection:Z

.field private fontSizeChanged:Z

.field protected final gestureDetector:Landroid/view/GestureDetector;

.field protected hasSelectedObject:Z

.field private inMultiTouch:Z

.field private lastKnownSelectionPoint:Landroid/graphics/Point;

.field private m_UpActionAfterMotionTime:J

.field private m_firstDownPosition:Landroid/graphics/PointF;

.field private m_highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

.field private m_lastPanPosition:Landroid/graphics/PointF;

.field private m_lastZoomDistance:F

.field private m_longPressAfterMotionDelay:J

.field private m_middleOfTouchesPosition:Landroid/graphics/PointF;

.field private final m_pointerActiveAreaPrecisionDips:I

.field private m_startingScrollPosition:Landroid/graphics/PointF;

.field private m_zoomPanMode:I

.field private final minFlingToNextPageVelocity:F

.field private final minFlingToPreviousPageVelocity:F

.field private final minPageFlingHorizDelta:F

.field private final minSelectionMovementPx:I

.field private final objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field protected readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private final readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

.field private renderingFontSizeChange:Z

.field private final selectionEditor:Lcom/amazon/android/docviewer/selection/ISelectionEditor;

.field private final supportsBookmarks:Z

.field private final supportsPinchToChangeFontSize:Z

.field private final tapWiggleThreshold:I

.field private touchY0:F

.field private touchY1:F

.field protected waitingForDoubleTap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-class v0, Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ReaderNavigator;ZZ)V
    .locals 3

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    .line 97
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    .line 98
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    .line 99
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->areSelectionButtonsBeingDismissed:Z

    .line 100
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->waitingForDoubleTap:Z

    .line 101
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->doubleTapInitiated:Z

    .line 102
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->brightnessChanged:Z

    .line 103
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->fontSizeChanged:Z

    .line 105
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->renderingFontSizeChange:Z

    .line 115
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->lastKnownSelectionPoint:Landroid/graphics/Point;

    .line 119
    iput v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    .line 122
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_middleOfTouchesPosition:Landroid/graphics/PointF;

    .line 123
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastPanPosition:Landroid/graphics/PointF;

    .line 124
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_startingScrollPosition:Landroid/graphics/PointF;

    .line 125
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_firstDownPosition:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 126
    iput v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastZoomDistance:F

    .line 174
    new-instance v0, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;-><init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    .line 248
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v2, 0x1

    .line 249
    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 252
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 254
    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 255
    invoke-interface {p2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionEditor()Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectionEditor:Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    .line 256
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 258
    iput-object p3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    .line 260
    iput-boolean p4, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsBookmarks:Z

    .line 261
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$integer;->gesture_long_press_after_motion_delay_ms:I

    .line 262
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_longPressAfterMotionDelay:J

    .line 263
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$integer;->gesture_pointer_active_area_precision_dips:I

    .line 264
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_pointerActiveAreaPrecisionDips:I

    .line 266
    iput-boolean p5, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsPinchToChangeFontSize:Z

    .line 268
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$dimen;->fling_to_page_horiz_delta:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->minPageFlingHorizDelta:F

    .line 269
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/krl/R$dimen;->fling_to_page_velocity:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->minFlingToPreviousPageVelocity:F

    mul-float p2, p2, v1

    .line 270
    iput p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->minFlingToNextPageVelocity:F

    .line 272
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40400000    # 3.0f

    invoke-static {p2, p3}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->minSelectionMovementPx:I

    .line 274
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->tap_wiggle_threshold:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->tapWiggleThreshold:I

    .line 276
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/reader/ReaderGestureDetector$PageDrawnListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/amazon/kcp/reader/ReaderGestureDetector$PageDrawnListener;-><init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;Lcom/amazon/kcp/reader/ReaderGestureDetector$1;)V

    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ReaderGestureDetector;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isFastHighlightingEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ReaderGestureDetector;)Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amazon/kcp/reader/ReaderGestureDetector;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->renderingFontSizeChange:Z

    return p1
.end method

.method private canPerformActionAtPoint(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;II)Z
    .locals 3

    .line 1073
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1075
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 1080
    :cond_0
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p2, v1

    .line 1081
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p3, v1

    .line 1083
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getScaledMargin()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1085
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 1086
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v1

    .line 1085
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/amazon/android/docviewer/IObjectSelector;->canPerformActionAt(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;III)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private executeSelectorAction(Landroid/view/MotionEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    .line 563
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isFastHighlightingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IObjectSelector;->setHighlightSelectionListener(Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;)V

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsSelection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    if-nez v1, :cond_3

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsActiveAreas()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectObject(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 569
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsActiveAreas()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0, p2}, Lcom/amazon/android/docviewer/IObjectSelector;->hasActionAnywhere(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 570
    :cond_3
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    .line 571
    invoke-interface {v0, p2}, Lcom/amazon/android/docviewer/IObjectSelector;->performAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)I

    move-result p1

    .line 574
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IObjectSelector;->selectNone()V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 578
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    :cond_4
    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method private getScaledMargin()I
    .locals 3

    .line 1130
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_pointerActiveAreaPrecisionDips:I

    .line 1131
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsZoom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getScaleX()F

    move-result v0

    .line 1133
    iget v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_pointerActiveAreaPrecisionDips:I

    int-to-float v2, v1

    div-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method private isDoubleTapObjectSelected()Z
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IObjectSelector;->isDoubleTapObjectSelected()Z

    move-result v0

    return v0
.end method

.method private isFastHighlightingEnabled()Z
    .locals 3

    .line 297
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$bool;->fast_highlighting_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 299
    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private magnifyTouchPoint(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1048
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getMagnifyingGlass()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1054
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnifiedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1055
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnification()F

    move-result v4

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 1057
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnification()F

    move-result v5

    div-float/2addr v3, v5

    div-float/2addr v3, v4

    .line 1059
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnifiedView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 1060
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnification()F

    move-result v7

    div-float/2addr v6, v7

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    .line 1062
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnification()F

    move-result v7

    div-float/2addr v6, v7

    div-float/2addr v6, v4

    .line 1064
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {v4, v5, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1066
    new-instance p1, Landroid/graphics/PointF;

    iget v2, v4, Landroid/graphics/PointF;->x:F

    iget v3, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setMagnifiedCenterPositionPoint(Landroid/graphics/PointF;)V

    .line 1067
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setMagnifiedCenterPoint(Landroid/graphics/PointF;)V

    .line 1068
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method private reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V
    .locals 2

    .line 1689
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ReaderGestureDetector$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector$2;-><init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private selectObject(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1092
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1094
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 1099
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    .line 1100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v4

    .line 1102
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v2

    .line 1104
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getScaledMargin()I

    move-result v2

    if-gez v3, :cond_1

    neg-int v5, v3

    if-gt v5, v2, :cond_1

    goto :goto_0

    :cond_1
    if-le v3, v4, :cond_2

    sub-int v1, v3, v4

    if-gt v1, v2, :cond_2

    add-int/lit8 v1, v4, -0x1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1114
    :goto_0
    invoke-interface {v0, v1, p1, v2}, Lcom/amazon/android/docviewer/IObjectSelector;->selectAt(III)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method private selectionShouldSuppressZoomPan(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)Z
    .locals 1

    .line 1030
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private setLongPressWindow(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_UpActionAfterMotionTime:J

    return-void
.end method

.method private setZoomPanModeWaiting(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1627
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_startingScrollPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1628
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastPanPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    .line 1629
    iput p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 5

    const/4 v0, 0x0

    .line 1636
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 1637
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v1, v1

    mul-double v1, v1, v1

    mul-float v0, v0, v0

    float-to-double v3, v0

    add-double/2addr v1, v3

    .line 1638
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private tapOnNavigationMargin(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private tryToTurnPage(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 947
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getPageTurnOffset()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getRawPageTurnOffset()I

    move-result v0

    .line 949
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    if-lez v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageLeft()Z

    goto :goto_1

    :cond_1
    if-gez v0, :cond_2

    .line 953
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageRight()Z

    .line 955
    :cond_2
    :goto_1
    sget-object v0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->SWIPE:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 960
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->resetPage()Z

    :goto_2
    return p1
.end method

.method private turnPageOrHandleOverlays(Landroid/view/MotionEvent;)V
    .locals 4

    .line 972
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->tryToTurnPage(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_firstDownPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 976
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    .line 977
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 979
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_firstDownPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 980
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v2, p1

    .line 981
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 983
    iget v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->tapWiggleThreshold:I

    int-to-float v3, v2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    int-to-float v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 985
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    goto :goto_0

    .line 989
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateMidPoint(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 1645
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 1646
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    .line 1647
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_middleOfTouchesPosition:Landroid/graphics/PointF;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method


# virtual methods
.method protected cancelZoomModeWaiting()V
    .locals 2

    .line 160
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    :cond_0
    return-void
.end method

.method protected clearSelections()V
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IObjectSelector;->selectNone()V

    .line 625
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 626
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_1

    .line 310
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected eventIsInLongPressWindow(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_UpActionAfterMotionTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_longPressAfterMotionDelay:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected executeSingleTapAction(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->waitingForDoubleTap:Z

    .line 513
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v1

    .line 515
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 516
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1, v0, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 517
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->hideAllViewOptionOverlays()Z

    goto/16 :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 518
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->hasSelectionOnScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 519
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1, v0, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    goto/16 :goto_1

    .line 521
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 522
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v1, v2, :cond_2

    .line 523
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 527
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IObjectSelector;->selectNone()V

    .line 528
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    goto :goto_1

    .line 529
    :cond_2
    sget-object v1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->executeSelectorAction(Landroid/view/MotionEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 531
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOrientationLockManager()Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v1, v2, v4}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->isPointInOrientationLock(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 532
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOrientationLockManager()Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->onOrientationLockClick()Z

    goto :goto_1

    .line 536
    :cond_4
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 538
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->areSelectionButtonsBeingDismissed:Z

    if-eqz v1, :cond_5

    .line 541
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->areSelectionButtonsBeingDismissed:Z

    goto :goto_0

    .line 542
    :cond_5
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 544
    :cond_6
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->singleTapOnFooter(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 546
    :cond_7
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->turnPageIfSingleTapOnCorners(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    .line 548
    :cond_8
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result p1

    if-nez p1, :cond_9

    const/4 v0, 0x1

    .line 553
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {p1, v0, v3}, Lcom/amazon/android/util/UIUtils;->setReaderOverlaysVisiblity(Lcom/amazon/kcp/reader/ui/ReaderLayout;ZZ)V

    :goto_1
    return v3
.end method

.method protected getDocView()Lcom/amazon/android/docviewer/KindleDocView;
    .locals 1

    .line 1484
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    return-object v0
.end method

.method protected getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 1488
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    return-object v0
.end method

.method protected getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;
    .locals 1

    const/4 v0, 0x0

    .line 1154
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    return-object p1
.end method

.method protected getElementAtPoint(IIZZ)Lcom/amazon/android/docviewer/IPageElement;
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1174
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x3

    if-eqz p3, :cond_2

    .line 1184
    invoke-interface {v0, p1, p2, v1, p4}, Lcom/amazon/android/docviewer/IDocumentPage;->getElementAtPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    goto :goto_1

    .line 1186
    :cond_2
    invoke-interface {v0, p1, p2, v1, p4}, Lcom/amazon/android/docviewer/IDocumentPage;->getElementClosestToPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    .line 1190
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    .line 1191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "selected word was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p3, p1

    check-cast p3, Lcom/amazon/android/docviewer/IWordPageElement;

    .line 1192
    invoke-interface {p3}, Lcom/amazon/android/docviewer/IWordPageElement;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 1193
    :cond_3
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result p2

    const/4 p3, 0x2

    :cond_4
    :goto_2
    return-object p1
.end method

.method public getObjectSelectionView()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    move-result-object v0

    return-object v0
.end method

.method protected isDocViewerReady()Z
    .locals 1

    .line 1681
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1682
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isInMultiTouch()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    return v0
.end method

.method public isInvalidTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1203
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1207
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDocViewerReady()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 1211
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1212
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsZoom()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->processZoomingPanning(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1213
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method protected isLeftEdgeVisible()Z
    .locals 3

    .line 1460
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getViewport()Landroid/graphics/RectF;

    move-result-object v0

    .line 1462
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsZoom()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1463
    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method protected isRightEdgeVisible()Z
    .locals 4

    .line 1446
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getViewport()Landroid/graphics/RectF;

    move-result-object v0

    .line 1448
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsZoom()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1449
    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v1

    if-gtz v3, :cond_1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public isValidLongPress(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling LONG PRESS event, selection state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 593
    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", dragging state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->eventIsInLongPressWindow(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 608
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsSelection()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public moreThanMinMovement(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 914
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->moreThanMinMovement(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method public moreThanMinMovement(Landroid/view/MotionEvent;I)Z
    .locals 2

    .line 928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 930
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->minSelectionMovementPx:I

    mul-int v1, v1, p2

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p1

    .line 931
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->minSelectionMovementPx:I

    mul-int p2, p2, v0

    if-le p1, p2, :cond_0

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

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 394
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->doubleTapInitiated:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 400
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDocViewerReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 404
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->doubleTapInitiated:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->tapOnNavigationMargin(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 405
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 409
    :cond_1
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->doubleTapInitiated:Z

    .line 410
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->waitingForDoubleTap:Z

    .line 412
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->isZoomed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/amazon/android/docviewer/KindleDocView;->zoom(FFF)V

    .line 414
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->finishZoom()V

    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/amazon/android/docviewer/KindleDocView;->resetZoom(FF)V

    .line 417
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->finishZoom()V

    .line 420
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsActiveAreas()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 424
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    .line 427
    sget-object v3, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-direct {p0, p1, v3}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->executeSelectorAction(Landroid/view/MotionEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    .line 433
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 434
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p1

    sget-object v3, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne p1, v3, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_6

    if-eqz v0, :cond_6

    .line 437
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 438
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    .line 440
    check-cast v0, Lcom/amazon/android/docviewer/IImagePageElement;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IImagePageElement;->getImageId()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 442
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "ImageZoomActivity"

    const-string v5, "ImageZoomLaunchViaDoubleTap"

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 445
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 448
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IObjectSelector;->selectNone()V

    .line 450
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return v1

    :cond_6
    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 321
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDocViewerReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling DOWN event, selection state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 326
    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", dragging state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 335
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->areSelectionButtonsBeingDismissed:Z

    .line 336
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsSelection()Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 338
    :cond_2
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectionEditor:Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    if-nez v3, :cond_3

    return v0

    .line 344
    :cond_3
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v3

    .line 345
    sget-object v4, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v3, v4, :cond_9

    .line 347
    :cond_4
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    move-result-object v3

    if-nez v3, :cond_5

    .line 349
    sget-object p1, Lcom/amazon/kcp/reader/ReaderGestureDetector;->TAG:Ljava/lang/String;

    const-string v1, "objSelectionView is null, touch event cannot be handled in this state"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 354
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 356
    invoke-virtual {p0, v4, v5, v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    if-nez v0, :cond_6

    .line 359
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    goto :goto_0

    .line 360
    :cond_6
    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInStartHandle(II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 361
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectionEditor:Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    invoke-interface {v3, v0}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->startSelectionBeginChange(Lcom/amazon/android/docviewer/IPageElement;)V

    .line 362
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 363
    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 364
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyTouchPoint(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 365
    :cond_7
    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInEndHandle(II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 366
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectionEditor:Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    invoke-interface {v3, v0}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->startSelectionEndChange(Lcom/amazon/android/docviewer/IPageElement;)V

    .line 367
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 368
    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 369
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyTouchPoint(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 371
    :cond_8
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->areSelectionButtonsBeingDismissed:Z

    .line 372
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 376
    :cond_9
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Done handling DOWN event, selection state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 377
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .line 734
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDocViewerReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 742
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->hideAllViewOptionOverlays()Z

    .line 751
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    if-nez v0, :cond_8

    .line 753
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 754
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 759
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v4

    .line 760
    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v5

    .line 762
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/KindleDocView;->getScaleX()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v6, v7, v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x452f0000    # 2800.0f

    .line 768
    iget v8, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->minFlingToPreviousPageVelocity:F

    mul-float v8, v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v8, -0x3ad10000    # -2800.0f

    .line 770
    iget v9, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->minFlingToNextPageVelocity:F

    mul-float v9, v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    int-to-float v8, v0

    .line 773
    iget v9, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->minPageFlingHorizDelta:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_3

    if-lt v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 775
    :goto_0
    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    .line 777
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/KindleDocView;->getPageTurnOffset()I

    move-result v3

    .line 779
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v4, v4, p3

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    .line 780
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_4

    .line 784
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {p1, p3}, Lcom/amazon/kcp/reader/ReaderNavigator;->resetPage(F)Z

    goto :goto_1

    :cond_4
    const-string v4, "PageTurnTouchFling"

    const-string v5, "ReaderGestureDetector"

    if-eqz v0, :cond_5

    cmpl-float v7, p3, v7

    if-lez v7, :cond_5

    if-eqz v3, :cond_5

    .line 787
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageLeft(F)Z

    .line 789
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p2, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 790
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    invoke-virtual {p2, v5, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    sget-object p2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->SWIPE:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    cmpg-float v0, p3, v6

    if-gez v0, :cond_6

    if-eqz v3, :cond_6

    .line 793
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageRight(F)Z

    .line 795
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p2, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 796
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    invoke-virtual {p2, v5, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    sget-object p2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->SWIPE:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    goto :goto_1

    .line 799
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/amazon/android/docviewer/KindleDocView;->canFling(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 800
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/amazon/android/docviewer/KindleDocView;->startFling(FF)V

    goto :goto_1

    .line 806
    :cond_7
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->turnPageOrHandleOverlays(Landroid/view/MotionEvent;)V

    :cond_8
    :goto_1
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    .line 632
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isValidLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDocViewerReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 637
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->doubleTapInitiated:Z

    .line 639
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->clearSelections()V

    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 646
    invoke-virtual {p0, v1, v2, v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 649
    iget v5, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectionEditor:Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    if-eqz v5, :cond_2

    .line 654
    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    .line 655
    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectionEditor:Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    invoke-interface {v5, v3}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->startSelection(Lcom/amazon/android/docviewer/IPageElement;)V

    .line 656
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iput v1, v3, Landroid/graphics/Point;->x:I

    .line 657
    iput v2, v3, Landroid/graphics/Point;->y:I

    .line 658
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyTouchPoint(Landroid/view/MotionEvent;)V

    .line 663
    :cond_2
    iget p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    if-ne p1, v4, :cond_3

    .line 664
    iput v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    :cond_3
    :goto_0
    return-void
.end method

.method public onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 167
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eq p1, v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->onSelectionStateChange()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 671
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDocViewerReady()Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_0

    return p4

    .line 681
    :cond_0
    iget-boolean p3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    const/4 v0, 0x0

    if-nez p3, :cond_8

    iget-boolean p3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    if-eqz p3, :cond_1

    goto/16 :goto_1

    .line 686
    :cond_1
    iget-object p3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 687
    iget-object p3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->hideAllViewOptionOverlays()Z

    .line 694
    :cond_2
    iget-object p3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_startingScrollPosition:Landroid/graphics/PointF;

    iget v1, p3, Landroid/graphics/PointF;->x:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    .line 695
    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, p3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 699
    :cond_3
    iget-boolean p3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    if-eqz p3, :cond_5

    .line 703
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    float-to-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 704
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 703
    invoke-static {v1, v2}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float p3, p3, v1

    if-gtz p3, :cond_4

    .line 705
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 706
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 705
    invoke-static {p2, v2}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    .line 707
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IObjectSelector;->selectNone()V

    .line 709
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    .line 710
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    goto :goto_0

    .line 713
    :cond_5
    iget-object p3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 714
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/KindleDocView;->getScrollLockManager()Lcom/amazon/android/docviewer/ScrollLockManager;

    move-result-object p3

    .line 715
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    if-nez p3, :cond_6

    .line 718
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->handlePageTurnOffset(I)Z

    move-result p1

    return p1

    .line 719
    :cond_6
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/ScrollLockManager;->getVerticalScrollLock()Z

    move-result p3

    if-nez p3, :cond_7

    .line 720
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 721
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p3, p1

    float-to-double p1, p3

    .line 720
    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    cmpg-double p3, p1, v1

    if-gez p3, :cond_7

    .line 722
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40c00000    # 6.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    .line 723
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->handlePageTurnOffset(I)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return p4

    :cond_8
    :goto_1
    return v0
.end method

.method protected onSelectionStateChange()V
    .locals 4

    .line 1000
    sget-object v0, Lcom/amazon/kcp/reader/ReaderGestureDetector$3;->$SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionState:[I

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 1022
    sget-object v0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid selection state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1014
    :cond_0
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    .line 1016
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getMagnifyingGlass()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1018
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->setVisibility(I)V

    goto :goto_0

    .line 1004
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    .line 1007
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getMagnifyingGlassWithoutInflating()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 1009
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDocViewerReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsZoom()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->waitingForDoubleTap:Z

    if-eqz v0, :cond_2

    .line 464
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->tapOnNavigationMargin(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->executeSingleTapAction(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 483
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDocViewerReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    if-nez v0, :cond_3

    .line 488
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsActiveAreas()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsZoom()Z

    move-result v0

    if-nez v0, :cond_3

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 492
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 495
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDoubleTapObjectSelected()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v0, v3, v4}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->canPerformActionAtPoint(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    .line 500
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->waitingForDoubleTap:Z

    return v2

    .line 505
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsZoom()Z

    move-result v0

    if-nez v0, :cond_4

    .line 506
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->executeSingleTapAction(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1223
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isInvalidTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 1227
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    .line 1229
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 1236
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    if-eq v1, v0, :cond_11

    const/high16 v3, 0x41c80000    # 25.0f

    const/4 v4, 0x2

    const-string v5, "ReaderGestureDetector"

    const/4 v6, 0x3

    if-eq v1, v4, :cond_7

    if-eq v1, v6, :cond_5

    const/4 p1, 0x5

    if-eq v1, p1, :cond_4

    const/4 p1, 0x6

    if-eq v1, p1, :cond_1

    goto/16 :goto_5

    .line 1277
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->brightnessChanged:Z

    if-eqz p1, :cond_2

    .line 1278
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "ScreenBrightnessChanged"

    invoke-virtual {p1, v5, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->brightnessChanged:Z

    goto :goto_0

    .line 1280
    :cond_2
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->fontSizeChanged:Z

    if-eqz p1, :cond_3

    .line 1281
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->fontSizeChanged:Z

    .line 1285
    :cond_3
    :goto_0
    iput v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    goto/16 :goto_5

    .line 1251
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY0:F

    .line 1252
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY1:F

    .line 1254
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->spacing(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastZoomDistance:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_14

    .line 1256
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->getPageTurnOffset()I

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 1257
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsZoom()Z

    move-result p1

    if-nez p1, :cond_14

    .line 1259
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->updateMidPoint(Landroid/view/MotionEvent;)V

    .line 1260
    iput v6, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    goto/16 :goto_5

    .line 1290
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->isFlinging()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1291
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->finishFling()V

    .line 1295
    :cond_6
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->resetPage()Z

    .line 1298
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    .line 1307
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v4, :cond_10

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 1308
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1309
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    .line 1310
    sget-object v4, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v1, v4, :cond_8

    sget-object v4, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v1, v4, :cond_8

    sget-object v4, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v1, v4, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    .line 1313
    :goto_1
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    .line 1315
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IDeviceContext;->supportsBrightnessChanges()Z

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_b

    .line 1316
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget v8, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY0:F

    sub-float/2addr v4, v8

    .line 1317
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iget v9, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY1:F

    sub-float/2addr v8, v9

    .line 1321
    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->isSystemUsingAutoBrightness()Z

    move-result v9

    if-nez v9, :cond_b

    iget-boolean v9, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->fontSizeChanged:Z

    if-nez v9, :cond_b

    const/4 v9, 0x0

    cmpg-float v10, v4, v9

    if-gez v10, :cond_9

    cmpg-float v10, v8, v9

    if-ltz v10, :cond_a

    :cond_9
    cmpl-float v10, v4, v9

    if-lez v10, :cond_b

    cmpl-float v9, v8, v9

    if-lez v9, :cond_b

    :cond_a
    add-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    .line 1324
    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getScreenBrightness()F

    move-result v8

    const v9, 0x3dcccccd    # 0.1f

    neg-float v4, v4

    const v10, 0x3f666666    # 0.9f

    .line 1328
    iget-object v11, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 1332
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    div-float/2addr v4, v11

    add-float/2addr v8, v4

    .line 1330
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1328
    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1333
    invoke-virtual {p1, v4}, Lcom/amazon/kcp/application/UserSettingsController;->setScreenBrightness(F)V

    .line 1334
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->brightnessChanged:Z

    const/4 v4, 0x1

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    .line 1338
    :goto_2
    iget v8, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    if-ne v8, v6, :cond_f

    iget-boolean v6, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->brightnessChanged:Z

    if-nez v6, :cond_f

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/KindleDocView;->getPageTurnOffset()I

    move-result v6

    if-nez v6, :cond_f

    iget-boolean v6, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsPinchToChangeFontSize:Z

    if-eqz v6, :cond_f

    if-eqz v1, :cond_f

    .line 1340
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->spacing(Landroid/view/MotionEvent;)F

    move-result v1

    .line 1343
    iget v6, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastZoomDistance:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v3, v6, v3

    if-lez v3, :cond_f

    .line 1344
    iget-boolean v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->renderingFontSizeChange:Z

    if-nez v3, :cond_e

    .line 1345
    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v3

    .line 1346
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v4

    array-length v4, v4

    .line 1347
    iget v6, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastZoomDistance:F

    div-float v6, v1, v6

    .line 1348
    iput v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastZoomDistance:F

    cmpl-float v1, v6, v7

    if-lez v1, :cond_c

    sub-int/2addr v4, v0

    if-ge v3, v4, :cond_c

    add-int/2addr v3, v0

    .line 1352
    invoke-virtual {p1, v3}, Lcom/amazon/kcp/application/UserSettingsController;->setFontSizeIndex(I)V

    .line 1353
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->renderingFontSizeChange:Z

    .line 1354
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v1, "ReaderFontSizeIncreasedWithPinchToZoom"

    invoke-virtual {p1, v5, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    cmpg-float v1, v6, v7

    if-gez v1, :cond_d

    if-lez v3, :cond_d

    sub-int/2addr v3, v0

    .line 1356
    invoke-virtual {p1, v3}, Lcom/amazon/kcp/application/UserSettingsController;->setFontSizeIndex(I)V

    .line 1357
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->renderingFontSizeChange:Z

    .line 1358
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v1, "ReaderFontSizeDecreasedWithPinchToZoom"

    invoke-virtual {p1, v5, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    :cond_d
    :goto_3
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->fontSizeChanged:Z

    :cond_e
    const/4 v4, 0x1

    .line 1367
    :cond_f
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY0:F

    .line 1368
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->touchY1:F

    goto :goto_4

    :cond_10
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_14

    return v0

    .line 1266
    :cond_11
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    if-eqz p1, :cond_14

    .line 1267
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->inMultiTouch:Z

    .line 1268
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->getPageTurnOffset()I

    move-result p1

    if-eqz p1, :cond_12

    .line 1269
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->turnPageOrHandleOverlays(Landroid/view/MotionEvent;)V

    :cond_12
    return v0

    .line 1239
    :cond_13
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_firstDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 1240
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_firstDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 1242
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->isFlinging()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1243
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->finishFling()V

    return v0

    :cond_14
    :goto_5
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 822
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsSelection()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectionEditor:Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    if-eqz v2, :cond_4

    .line 836
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2, v3, v3}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_8

    .line 845
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 852
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 855
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->moreThanMinMovement(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 856
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iput v2, v4, Landroid/graphics/Point;->x:I

    .line 857
    iput v3, v4, Landroid/graphics/Point;->y:I

    .line 859
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectionEditor:Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    invoke-interface {v2, v0}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->updateSelectionBounds(Lcom/amazon/android/docviewer/IPageElement;)V

    .line 860
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->magnifyTouchPoint(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 846
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectionEditor:Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->endSelection(Lcom/amazon/android/docviewer/IPageElement;)V

    .line 847
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 848
    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 864
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_9

    .line 865
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocView;->getPageTurnOffset()I

    move-result v2

    if-eqz v2, :cond_7

    .line 867
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsSelection()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 868
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectObject(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    .line 871
    :cond_5
    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    if-eqz v2, :cond_6

    .line 872
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    goto :goto_3

    .line 880
    :cond_6
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->turnPageOrHandleOverlays(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 883
    :cond_7
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->tapOnNavigationMargin(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 884
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->executeSingleTapAction(Landroid/view/MotionEvent;)Z

    :cond_8
    :goto_2
    const/4 v0, 0x1

    :cond_9
    :goto_3
    return v0
.end method

.method protected processZoomingPanning(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1505
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_10

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v3, v2, :cond_d

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v3, v6, :cond_8

    if-eq v3, v5, :cond_5

    const/4 v1, 0x5

    if-eq v3, v1, :cond_3

    const/4 v1, 0x6

    if-eq v3, v1, :cond_1

    .line 1621
    sget-object v1, Lcom/amazon/kcp/reader/ReaderGestureDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid event action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1560
    :cond_1
    iget p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    if-ne p1, v5, :cond_2

    .line 1561
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->finishZoom()V

    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 1526
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->spacing(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastZoomDistance:F

    .line 1530
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->updateMidPoint(Landroid/view/MotionEvent;)V

    .line 1531
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastPanPosition:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_middleOfTouchesPosition:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1532
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastPanPosition:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocView;->setDocReferencePoint(FF)V

    .line 1535
    iget v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    if-ne v1, v6, :cond_4

    .line 1536
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->finishPan()V

    .line 1539
    :cond_4
    iget v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastZoomDistance:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_13

    .line 1540
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->getPageTurnOffset()I

    move-result v1

    if-nez v1, :cond_13

    .line 1541
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->startZoom()V

    .line 1542
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->updateMidPoint(Landroid/view/MotionEvent;)V

    .line 1543
    iput v5, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    goto/16 :goto_3

    .line 1567
    :cond_5
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    if-ne v0, v6, :cond_6

    .line 1568
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->setLongPressWindow(Landroid/view/MotionEvent;)V

    .line 1569
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/amazon/android/docviewer/KindleDocView;->finishPan(Z)V

    .line 1571
    :cond_6
    iget p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    if-ne p1, v5, :cond_7

    .line 1572
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->finishZoom()V

    .line 1574
    :cond_7
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_startingScrollPosition:Landroid/graphics/PointF;

    invoke-virtual {p1, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 1575
    iput v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    goto/16 :goto_4

    .line 1580
    :cond_8
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectionShouldSuppressZoomPan(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1581
    iget v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    if-ne v3, v2, :cond_9

    .line 1583
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 1584
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->hasSelectedObject:Z

    .line 1585
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    .line 1587
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->startPan()V

    .line 1588
    iput v6, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    .line 1591
    :cond_9
    iget v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    if-ne v1, v6, :cond_a

    .line 1592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastPanPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 1593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastPanPosition:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    .line 1594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v3, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 1595
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/android/docviewer/KindleDocView;->panPage(FF)V

    goto/16 :goto_3

    :cond_a
    if-ne v1, v5, :cond_13

    .line 1597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 1598
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->setZoomPanModeWaiting(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 1599
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1600
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->spacing(Landroid/view/MotionEvent;)F

    move-result v1

    .line 1602
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->updateMidPoint(Landroid/view/MotionEvent;)V

    .line 1604
    iget p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastZoomDistance:F

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v7

    if-lez p1, :cond_c

    .line 1605
    iget p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastZoomDistance:F

    div-float p1, v1, p1

    .line 1606
    iput v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastZoomDistance:F

    .line 1607
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_middleOfTouchesPosition:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p1, v3, v2}, Lcom/amazon/android/docviewer/KindleDocView;->zoom(FFF)V

    .line 1611
    :cond_c
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_lastPanPosition:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_middleOfTouchesPosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 1612
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_middleOfTouchesPosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Lcom/amazon/android/docviewer/KindleDocView;->panPageByReferencePoint(FF)V

    goto :goto_3

    .line 1548
    :cond_d
    iget v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    if-ne v3, v6, :cond_e

    .line 1549
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->setLongPressWindow(Landroid/view/MotionEvent;)V

    .line 1550
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/amazon/android/docviewer/KindleDocView;->finishPan(Z)V

    goto :goto_1

    :cond_e
    if-ne v3, v5, :cond_f

    .line 1552
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->setLongPressWindow(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_f
    :goto_1
    move v2, v0

    .line 1555
    :goto_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_startingScrollPosition:Landroid/graphics/PointF;

    invoke-virtual {p1, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 1556
    iput v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    move v1, v2

    goto :goto_4

    .line 1507
    :cond_10
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->selectionShouldSuppressZoomPan(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1508
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->setZoomPanModeWaiting(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 1510
    :cond_11
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    move-result-object v2

    if-nez v2, :cond_12

    .line 1512
    sget-object p1, Lcom/amazon/kcp/reader/ReaderGestureDetector;->TAG:Ljava/lang/String;

    const-string v0, "objSelectionView is null, touch event cannot be handled in this state"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1515
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 1517
    invoke-virtual {v2, v1, v3}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInStartHandle(II)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1518
    invoke-virtual {v2, v1, v3}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInEndHandle(II)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1519
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->setZoomPanModeWaiting(Landroid/view/MotionEvent;)V

    :cond_13
    :goto_3
    move v1, v0

    :goto_4
    return v1
.end method

.method protected setLastKnownSelectionPoint(II)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 616
    iput p2, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method protected singleTapOnFooter(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1381
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 1383
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1389
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 1396
    :cond_1
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$integer;->footer_tap_target_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 1399
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->toggleFooter()V

    return v1

    :cond_2
    return v2
.end method

.method protected supportsActiveAreas()Z
    .locals 2

    .line 1655
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->ActiveArea:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v0

    return v0
.end method

.method protected supportsSelection()Z
    .locals 2

    .line 1651
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v0

    return v0
.end method

.method protected turnPageIfSingleTapOnCorners(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1407
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 1408
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getNavigationMarginPercent()F

    move-result v1

    mul-float v0, v0, v1

    .line 1410
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isLeftEdgeVisible()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 1411
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->turnPageLeft()V

    .line 1412
    sget-object v0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v2

    .line 1414
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isRightEdgeVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    cmpl-float v0, v1, v3

    if-lez v0, :cond_1

    .line 1415
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->turnPageRight()V

    .line 1416
    sget-object v0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected turnPageLeft()V
    .locals 3

    .line 1432
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1434
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectStartTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageLeft()Z

    return-void
.end method

.method protected turnPageRight()V
    .locals 3

    .line 1424
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageRight()Z

    return-void
.end method

.method public zoomPanMode()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->m_zoomPanMode:I

    return v0
.end method
