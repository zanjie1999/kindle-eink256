.class public Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;
.super Lcom/amazon/kcp/reader/ReaderGestureDetector;
.source "GraphicalHighlightGestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MAX_GAP_DURATION:I = 0x1f4

.field private static final POST_DELAY:I = 0xc8

.field private static final SINGLE_TAP_MAX_DURATION:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private context:Landroid/content/Context;

.field private currentWordElement:Lcom/amazon/android/docviewer/IPageElement;

.field private final graphicalHighlightReaderLayout:Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;

.field private graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

.field private final graphicalSelectionStartDistance:I

.field private final gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

.field private handler:Landroid/os/Handler;

.field private hoverFingersDown:I

.field private lastHoverEnterTime:J

.field private lastHoverExitTime:J

.field private secondToLastHoverEnterTime:J

.field private selectedWordElement:Lcom/amazon/android/docviewer/IPageElement;

.field private speaker:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ReaderNavigator;ZZ)V
    .locals 0

    .line 112
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/reader/ReaderGestureDetector;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ReaderNavigator;ZZ)V

    const/4 p3, 0x0

    .line 63
    iput-object p3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->currentWordElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 64
    iput-object p3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->selectedWordElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 65
    iput-object p3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->handler:Landroid/os/Handler;

    const-wide/32 p3, -0xf4240

    .line 68
    iput-wide p3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->secondToLastHoverEnterTime:J

    const-wide/16 p3, 0x0

    .line 69
    iput-wide p3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->lastHoverExitTime:J

    const-wide/32 p3, 0xf4240

    .line 70
    iput-wide p3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->lastHoverEnterTime:J

    const/4 p3, 0x0

    .line 71
    iput p3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->hoverFingersDown:I

    .line 117
    check-cast p1, Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;

    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlightReaderLayout:Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;

    .line 118
    move-object p3, p2

    check-cast p3, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    iput-object p3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    .line 120
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->context:Landroid/content/Context;

    .line 122
    new-instance p1, Lcom/amazon/kcp/reader/GraphicalHighlightController;

    iget-object p3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->context:Landroid/content/Context;

    invoke-direct {p1, p0, p2, p3}, Lcom/amazon/kcp/reader/GraphicalHighlightController;-><init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

    .line 127
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 128
    sget p2, Lcom/amazon/kindle/krl/R$dimen;->graphical_highlight_selection_start_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalSelectionStartDistance:I

    .line 129
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->context:Landroid/content/Context;

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 130
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->speaker:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    .line 131
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->hoverFingersDown:I

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->lastHoverExitTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->lastHoverEnterTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->secondToLastHoverEnterTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)Lcom/amazon/android/docviewer/IPageElement;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->currentWordElement:Lcom/amazon/android/docviewer/IPageElement;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)Lcom/amazon/android/docviewer/IPageElement;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->selectedWordElement:Lcom/amazon/android/docviewer/IPageElement;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;Lcom/amazon/android/docviewer/IPageElement;)Lcom/amazon/android/docviewer/IPageElement;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->selectedWordElement:Lcom/amazon/android/docviewer/IPageElement;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlightReaderLayout:Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->speaker:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    return-object p0
.end method

.method private constrainToPageRectX(I)I
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->getObjectSelectionViewBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->constrainToPageRectX(ILandroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method private constrainToPageRectY(I)I
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->getObjectSelectionViewBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->constrainToPageRectY(ILandroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method private getElementIfInRangeOfEventPoint(Lcom/amazon/android/docviewer/IPageElement;Landroid/view/MotionEvent;)Lcom/amazon/android/docviewer/IPageElement;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 183
    :cond_1
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v1

    .line 184
    instance-of v2, v1, Lcom/amazon/android/docviewer/grid/IGridPage;

    if-nez v2, :cond_2

    .line 185
    sget-object p2, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->TAG:Ljava/lang/String;

    const-string v0, "Somehow we got into graphical highlight code on a page that doesn\'t support graphical highlights, returning the closest element so that we\'ll use the regular gesture detector code path."

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 188
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 190
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->constrainToPageRectX(I)I

    move-result v2

    .line 191
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->constrainToPageRectY(I)I

    move-result p2

    .line 193
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v3

    .line 194
    check-cast v1, Lcom/amazon/android/docviewer/grid/IGridPage;

    const/4 v4, 0x0

    .line 195
    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 196
    invoke-interface {v1}, Lcom/amazon/android/docviewer/grid/IGridPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {p0, v6}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->rectOf(Lcom/amazon/system/drawing/Rectangle;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/amazon/android/docviewer/grid/IGridPage;->getDeviceRectFromLayoutRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 197
    iget v6, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalSelectionStartDistance:I

    neg-int v7, v6

    neg-int v6, v6

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 198
    invoke-virtual {v5, v2, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object p1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/grid/IGridPage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private graphicalHighlightOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isInMultiTouch()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 358
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    return v0

    .line 362
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private hoverEnterEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 5

    .line 408
    iget-wide v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->lastHoverEnterTime:J

    iput-wide v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->secondToLastHoverEnterTime:J

    .line 409
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->lastHoverEnterTime:J

    .line 410
    iget v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->hoverFingersDown:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->hoverFingersDown:I

    .line 411
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 414
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, v0, p1, v2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 415
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 416
    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    .line 417
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;-><init>(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;Lcom/amazon/android/docviewer/pdf/PdfPageElement;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->currentWordElement:Lcom/amazon/android/docviewer/IPageElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 420
    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->currentWordElement:Lcom/amazon/android/docviewer/IPageElement;

    :goto_0
    return v1
.end method

.method private hoverExitEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 442
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->lastHoverExitTime:J

    const/4 p1, 0x0

    .line 443
    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->currentWordElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 444
    iget p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->hoverFingersDown:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->hoverFingersDown:I

    const/4 p1, 0x0

    return p1
.end method

.method private hoverMoveEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 6

    .line 426
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 430
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 431
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 432
    move-object v1, p1

    check-cast v1, Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    .line 433
    iget-object v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;

    invoke-direct {v3, p0, v1}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;-><init>(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;Lcom/amazon/android/docviewer/pdf/PdfPageElement;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->currentWordElement:Lcom/amazon/android/docviewer/IPageElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 436
    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->currentWordElement:Lcom/amazon/android/docviewer/IPageElement;

    :goto_0
    return v0
.end method

.method private inPageRectangle(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 375
    invoke-direct {p0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 377
    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v0

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

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNonGraphicalHighlightLongPress(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->zoomPanMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 208
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->inPageRectangle(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->zoomPanMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private rectOf(Lcom/amazon/system/drawing/Rectangle;)Landroid/graphics/Rect;
    .locals 4

    .line 389
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v3, v1

    iget p1, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr p1, v2

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method protected eventIsInLongPressWindow(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 136
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDocViewerReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->isActive()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 147
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->constrainToPageRectX(I)I

    move-result v0

    .line 148
    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->constrainToPageRectY(I)I

    move-result v3

    .line 149
    invoke-virtual {p0, v0, v3, v2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->getElementIfInRangeOfEventPoint(Lcom/amazon/android/docviewer/IPageElement;Landroid/view/MotionEvent;)Lcom/amazon/android/docviewer/IPageElement;

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_1
    if-nez v2, :cond_2

    .line 153
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 393
    new-instance v0, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 401
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->hoverExitEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1

    .line 397
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->hoverEnterEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1

    .line 399
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->hoverMoveEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    .line 214
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDocViewerReady()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isValidLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->isNonGraphicalHighlightLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->onLongPress(Landroid/view/MotionEvent;)V

    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->clearSelections()V

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 227
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->constrainToPageRectX(I)I

    move-result v0

    .line 228
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->constrainToPageRectY(I)I

    move-result v1

    const/4 v2, 0x0

    .line 232
    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->getElementIfInRangeOfEventPoint(Lcom/amazon/android/docviewer/IPageElement;Landroid/view/MotionEvent;)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v3

    .line 234
    iget-object v4, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

    invoke-virtual {v4, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->graphicalHighlightEventIsIn(Landroid/view/MotionEvent;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    .line 237
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->onLongPress(Landroid/view/MotionEvent;)V

    .line 238
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, v3, Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    if-eqz p1, :cond_2

    .line 239
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/krl/R$string;->speak_selection:I

    new-array v1, v5, [Ljava/lang/Object;

    check-cast v3, Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->getText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->speaker:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlightReaderLayout:Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_2
    return-void

    .line 246
    :cond_3
    iget-object v3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlightReaderLayout:Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    .line 247
    iget-object v3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

    invoke-virtual {v3, p1, v4}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->handleLongPress(Landroid/view/MotionEvent;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    .line 248
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->setLastKnownSelectionPoint(II)V

    .line 250
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->cancelZoomModeWaiting()V

    .line 252
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 253
    iget-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/krl/R$string;->speak_selection:I

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/amazon/kindle/krl/R$string;->notes_graphical_highlight:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->speaker:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlightReaderLayout:Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onSelectionStateChange()V
    .locals 4

    .line 259
    sget-object v0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$1;->$SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionState:[I

    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 266
    sget-object v0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid selection state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-eq v0, v2, :cond_1

    .line 269
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->onSelectionStateChange()V

    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlightReaderLayout:Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getMagnifyingGlassWithoutInflating()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    .line 275
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->setVisibility(I)V

    .line 278
    :cond_2
    sget-object v0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$1;->$SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionState:[I

    iget-object v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    .line 284
    sget-object v0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid selection date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->gridObjectSelectionModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " while dragging selection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :cond_3
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->draggingSelection:Z

    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 336
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isDocViewerReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 340
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->isInvalidTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlightOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 343
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->supportsSelection()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 312
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->constrainToPageRectX(I)I

    move-result v0

    .line 313
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->constrainToPageRectY(I)I

    move-result v2

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    .line 321
    invoke-virtual {p0, p1, v3}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->moreThanMinMovement(Landroid/view/MotionEvent;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 322
    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->graphicalHighlighter:Lcom/amazon/kcp/reader/GraphicalHighlightController;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/reader/GraphicalHighlightController;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 327
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->setLastKnownSelectionPoint(II)V

    move v0, p1

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v0
.end method
