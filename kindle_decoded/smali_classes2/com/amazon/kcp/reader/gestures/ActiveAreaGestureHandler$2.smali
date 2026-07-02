.class Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler$2;
.super Lcom/amazon/kcp/reader/accessibility/VirtualView;
.source "ActiveAreaGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->updateAnnotationVirtualViews(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;Landroid/graphics/Rect;Ljava/lang/String;Z)V
    .locals 0

    .line 319
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kcp/reader/accessibility/VirtualView;-><init>(Landroid/graphics/Rect;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public handleHoverEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    .line 322
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    const/4 p1, 0x0

    return p1
.end method
