.class Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$1;
.super Ljava/lang/Object;
.source "SelectionGestureHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$1;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$1;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    invoke-static {v0}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->access$100(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$1;->this$0:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->performFlipPage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->access$002(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;Z)Z

    return-void
.end method
