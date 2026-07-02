.class public Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "BubbleGestureHandler.java"


# instance fields
.field private bubbleDismissedOnPointerUp:Z

.field private bubbleManager:Lcom/amazon/kindle/krx/reader/IBubbleManager;

.field private bubbleWasShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleWasShowing:Z

    .line 15
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleDismissedOnPointerUp:Z

    .line 19
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getBubbleManager()Lcom/amazon/kindle/krx/reader/IBubbleManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleManager:Lcom/amazon/kindle/krx/reader/IBubbleManager;

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method public onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleManager:Lcom/amazon/kindle/krx/reader/IBubbleManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBubbleManager;->isBubbleAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleManager:Lcom/amazon/kindle/krx/reader/IBubbleManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBubbleManager;->isBubbleShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleManager:Lcom/amazon/kindle/krx/reader/IBubbleManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBubbleManager;->dismissShownBubble()V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleWasShowing:Z

    .line 41
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleDismissedOnPointerUp:Z

    return p1

    :cond_0
    return v0
.end method

.method public onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleManager:Lcom/amazon/kindle/krx/reader/IBubbleManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBubbleManager;->isBubbleAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleWasShowing:Z

    if-eqz p1, :cond_0

    .line 28
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleWasShowing:Z

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleDismissedOnPointerUp:Z

    return p1

    :cond_0
    return v0
.end method

.method public onSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 51
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleDismissedOnPointerUp:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 52
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;->bubbleDismissedOnPointerUp:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
