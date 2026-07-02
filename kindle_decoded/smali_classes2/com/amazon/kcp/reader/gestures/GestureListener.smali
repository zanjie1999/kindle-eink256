.class public Lcom/amazon/kcp/reader/gestures/GestureListener;
.super Ljava/lang/Object;
.source "GestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/View$OnHoverListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

.field protected gestureDetector:Landroid/view/GestureDetector;

.field private lastKnownSelectionPoint:Landroid/graphics/PointF;

.field private minSelectionMovementPx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/reader/gestures/GestureListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/gestures/GestureListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/reader/gestures/GestureController;III)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance p4, Landroid/graphics/PointF;

    const/high16 p5, -0x40800000    # -1.0f

    invoke-direct {p4, p5, p5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p4, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->lastKnownSelectionPoint:Landroid/graphics/PointF;

    .line 44
    iput-object p2, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    .line 46
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureDetector:Landroid/view/GestureDetector;

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 48
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 50
    iput p3, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->minSelectionMovementPx:I

    .line 52
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureListener;->reset()V

    return-void
.end method

.method private isDocumentClosed()Z
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureController;->getHandlerFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 97
    sget-object v1, Lcom/amazon/kcp/reader/gestures/GestureListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid event action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " during the touch event"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_0
    new-instance v1, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    .line 88
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/reader/gestures/GestureController;->firstPointerUpEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/reader/gestures/GestureController;->firstPointerUpEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v0

    .line 93
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureListener;->reset()V

    :goto_1
    return v0
.end method

.method private reset()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->lastKnownSelectionPoint:Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method


# virtual methods
.method protected isValidLongPress(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-lez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected moreThanMinMovementForMove(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 343
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureListener;->moreThanMinMovementForMove(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method protected moreThanMinMovementForMove(Landroid/view/MotionEvent;I)Z
    .locals 2

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 359
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->lastKnownSelectionPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->minSelectionMovementPx:I

    mul-int v1, v1, p2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->lastKnownSelectionPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 360
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->minSelectionMovementPx:I

    mul-int p2, p2, v0

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

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
    .locals 3

    .line 133
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureListener;->isDocumentClosed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    new-instance v2, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v2, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/gestures/GestureController;->doubleTapEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->lastKnownSelectionPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 246
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->lastKnownSelectionPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    new-instance v1, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/gestures/GestureController;->firstPointerDownEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 260
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureListener;->isDocumentClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 270
    new-instance v1, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_3

    .line 275
    new-instance v0, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    .line 278
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    invoke-virtual {p1, v1, v0, p3, p4}, Lcom/amazon/kcp/reader/gestures/GestureController;->swipeEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z

    move-result p1

    return p1

    .line 265
    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tried to fling with a null event: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    const-string p1, "downEvent"

    goto :goto_2

    :cond_5
    const-string p1, "moveEvent"

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 374
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/gestures/GestureListener;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureListener;->isDocumentClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 115
    :cond_0
    new-instance v0, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureController;->hoverExitEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureController;->hoverEnterEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureController;->hoverMoveEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 299
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/GestureListener;->isValidLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureListener;->isDocumentClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    new-instance v1, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/gestures/GestureController;->longPressEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 309
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureListener;->isDocumentClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 315
    new-instance v1, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 320
    new-instance v0, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    .line 323
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    invoke-virtual {p1, v1, v0, p3, p4}, Lcom/amazon/kcp/reader/gestures/GestureController;->scrollEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 160
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureListener;->isDocumentClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    new-instance v1, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/gestures/GestureController;->singleTapEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 173
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureListener;->isDocumentClosed()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 178
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    return v1

    .line 184
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    .line 229
    sget-object p1, Lcom/amazon/kcp/reader/gestures/GestureListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid event action "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " during the touch where-in the activity might be still running"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 224
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    new-instance v0, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureController;->secondPointerUpEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 218
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    new-instance v0, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureController;->secondPointerDownEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    goto :goto_0

    .line 202
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 203
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/gestures/GestureListener;->moreThanMinMovementForMove(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 204
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    new-instance v0, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureController;->moveEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    .line 206
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->lastKnownSelectionPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 207
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->lastKnownSelectionPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 211
    :cond_5
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureListener;->gestureController:Lcom/amazon/kcp/reader/gestures/GestureController;

    new-instance v0, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureController;->moveEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    goto :goto_0

    .line 193
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/GestureListener;->reset()V

    :cond_7
    :goto_0
    if-nez v1, :cond_8

    .line 239
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/gestures/GestureListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_8
    return v1
.end method
