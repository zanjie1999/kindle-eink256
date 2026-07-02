.class public Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "HeaderGestureHandler.java"


# static fields
.field private static final HEADER_COLUMN_COUNT:I = 0x3


# instance fields
.field private gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private headerTapTargetPadding:I

.field private savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 24
    iput p2, p0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;->headerTapTargetPadding:I

    return-void
.end method

.method private eventIsInHeaderRect(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 6

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/utils/RTLUtils;->shouldDisplayTextViewOrBookmarkAsRTL(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    .line 47
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;->headerTapTargetPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;->headerTapTargetPadding:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;->headerTapTargetPadding:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 53
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;->headerTapTargetPadding:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public final onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    .line 62
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;->onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1
.end method

.method public onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 67
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 74
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;->eventIsInHeaderRect(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/HeaderGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->checkUnconfirmedSingleTapFromUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
