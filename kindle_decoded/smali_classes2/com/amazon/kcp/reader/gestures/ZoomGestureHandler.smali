.class public Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "ZoomGestureHandler.java"


# instance fields
.field private gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onDoubleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->isZoomed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/android/docviewer/KindleDocView;->zoom(FFF)V

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->finishZoom()V

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocView;->resetZoom(FF)V

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ZoomGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->finishZoom()V

    .line 29
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    const/4 p1, 0x1

    return p1
.end method
