.class public Lcom/amazon/kcp/reader/gestures/GestureController;
.super Ljava/lang/Object;
.source "GestureController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/reader/gestures/GestureController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/gestures/GestureController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    return-void
.end method


# virtual methods
.method public doubleTapEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 119
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onDoubleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public firstPointerDownEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 35
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public firstPointerUpEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 77
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public getHandlerFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    return-object v0
.end method

.method public hoverEnterEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 197
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onHoverEnter(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public hoverExitEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 229
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onHoverExit(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public hoverMoveEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 213
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onHoverMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public longPressEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 181
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onLongPress(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public moveEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 63
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public scrollEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 159
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onScroll(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    :cond_1
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public secondPointerDownEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 49
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onSecondPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public secondPointerUpEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 91
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onSecondPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public singleTapEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 105
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public swipeEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/GestureController;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 135
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onSwipe(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    :cond_1
    if-eqz p2, :cond_2

    .line 140
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
