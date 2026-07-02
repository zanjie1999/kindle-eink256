.class public Lcom/amazon/kcp/reader/gestures/GestureService;
.super Ljava/lang/Object;
.source "GestureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;
    }
.end annotation


# static fields
.field private static final MAX_TAP_DISTANCE:F = 0.5f

.field private static final MAX_TAP_DURATION:I = 0x12c

.field private static SCREEN_DPI:I = 0x96

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private hasSelectedObject:Z

.field private highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

.field private layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private virtualViewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    const-class v0, Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/gestures/GestureService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->hasSelectedObject:Z

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 374
    new-instance v0, Lcom/amazon/kcp/reader/gestures/GestureService$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/gestures/GestureService$1;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    .line 124
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    sput p1, Lcom/amazon/kcp/reader/gestures/GestureService;->SCREEN_DPI:I

    .line 127
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 129
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->virtualViewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    .line 130
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->reset()V

    .line 132
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public static checkUnconfirmedSingleTapFromUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 5

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    invoke-static {v0, p0, v1, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->computeInchDistance(FFFF)D

    move-result-wide p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static computeInchDistance(FFFF)D
    .locals 2

    sub-float/2addr p0, p2

    .line 105
    invoke-static {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->square(F)F

    move-result p0

    float-to-double v0, p0

    sub-float/2addr p1, p3

    invoke-static {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->square(F)F

    move-result p0

    float-to-double p0, p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    sget p1, Lcom/amazon/kcp/reader/gestures/GestureService;->SCREEN_DPI:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    return-wide p0
.end method

.method private getObjectSelector()Lcom/amazon/android/docviewer/IObjectSelector;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private selectObject(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 487
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 489
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 493
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v3

    if-nez v3, :cond_1

    return v1

    .line 497
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 500
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v5, v4, v5

    .line 501
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v6, p1, v6

    .line 503
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v7

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    .line 504
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v8

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v9

    .line 506
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lt v4, v3, :cond_3

    add-int/2addr v7, v3

    if-gt v4, v7, :cond_3

    if-lt p1, v8, :cond_3

    add-int/2addr v2, v8

    if-le p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    return v1

    .line 519
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getScaledMargin()I

    move-result p1

    .line 522
    invoke-interface {v0, v5, v6, p1}, Lcom/amazon/android/docviewer/IObjectSelector;->selectAt(III)Z

    move-result p1

    return p1

    :cond_5
    return v1
.end method

.method private static square(F)F
    .locals 0

    mul-float p0, p0, p0

    return p0
.end method


# virtual methods
.method public canPerformSelectorAction(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    .line 324
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->supportsSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->hasSelectedObject:Z

    if-nez v1, :cond_2

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->supportsActiveAreas()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->selectObject(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->supportsActiveAreas()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Lcom/amazon/android/docviewer/IObjectSelector;->hasActionAnywhere(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public checkSelectorAction(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->supportsSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->hasSelectedObject:Z

    if-nez v1, :cond_2

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->supportsActiveAreas()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->selectObject(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->supportsActiveAreas()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0, p2}, Lcom/amazon/android/docviewer/IObjectSelector;->hasActionAnywhere(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 416
    :cond_2
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IObjectSelector;->selectNone()V

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public executeSelectorAction(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->isFastHighlightingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IObjectSelector;->setHighlightSelectionListener(Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;)V

    .line 357
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/gestures/GestureService;->canPerformSelectorAction(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 358
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->hasSelectedObject:Z

    .line 359
    invoke-interface {v0, p2}, Lcom/amazon/android/docviewer/IObjectSelector;->performAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)I

    move-result p1

    .line 362
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IObjectSelector;->selectNone()V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 366
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    return-object v0
.end method

.method public getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getContentViewAccessibilityMixin()Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 594
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getContentViewAccessibilityMixin()Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;

    move-result-object v0

    return-object v0
.end method

.method public getDocView()Lcom/amazon/android/docviewer/KindleDocView;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getElementAtPoint(IIZZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    return-object p1
.end method

.method public getElementAtPoint(IIZZ)Lcom/amazon/android/docviewer/IPageElement;
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x3

    if-eqz p3, :cond_1

    .line 305
    invoke-interface {v0, p1, p2, v1, p4}, Lcom/amazon/android/docviewer/IDocumentPage;->getElementAtPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    goto :goto_0

    .line 307
    :cond_1
    invoke-interface {v0, p1, p2, v1, p4}, Lcom/amazon/android/docviewer/IDocumentPage;->getElementClosestToPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 311
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "selected word was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p3, p1

    check-cast p3, Lcom/amazon/android/docviewer/IWordPageElement;

    .line 313
    invoke-interface {p3}, Lcom/amazon/android/docviewer/IWordPageElement;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 314
    :cond_2
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result p2

    const/4 p3, 0x2

    :cond_3
    :goto_1
    return-object p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object v0
.end method

.method public getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageTurnOffset()I
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getPageTurnOffset()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getRawPageTurnOffset()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScaledMargin()I
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->gesture_pointer_active_area_precision_dips:I

    .line 553
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 557
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->getScaleX()F

    move-result v1

    int-to-float v2, v0

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 559
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;
    .locals 1

    .line 257
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    return-object v0
.end method

.method public isComicBook()Z
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEventInMargin(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 6

    .line 182
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 186
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 191
    :cond_1
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 192
    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    .line 193
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 194
    iget-object v5, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v0

    .line 196
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v0

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v0

    int-to-float v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v0

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    int-to-float v0, v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isFastHighlightingEnabled()Z
    .locals 3

    .line 575
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 580
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$bool;->fast_highlighting_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 581
    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isMphlEnabled()Z
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->mphl_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsZoom()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public publishEvent(Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;)V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public registerForAccessibility(Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;)Z
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->virtualViewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->registerVirtualViewProvider(Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;)V

    const/4 p1, 0x1

    return p1
.end method

.method public removeSelection()V
    .locals 1

    .line 448
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IObjectSelector;->selectNone()V

    :cond_0
    return-void
.end method

.method public setLayout(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Z
    .locals 1

    .line 142
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 145
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    float-to-int p1, v0

    sput p1, Lcom/amazon/kcp/reader/gestures/GestureService;->SCREEN_DPI:I

    .line 146
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 148
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->virtualViewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    .line 149
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->reset()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public supportsActiveAreas()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->ActiveArea:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v0

    return v0
.end method

.method public supportsSelection()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureService;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->hasReaderActivityFeature(Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;)Z

    move-result v0

    return v0
.end method
