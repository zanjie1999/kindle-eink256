.class Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;
.super Ljava/lang/Object;
.source "WebViewEventHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/WebViewEventHandler;->setFilter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/WebViewEventHandler;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 322
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->initVelocityTrackerIfNotExists()V

    .line 324
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 325
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->access$200(Lcom/amazon/e3oseventhandler/WebViewEventHandler;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 330
    invoke-static {}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebView not initialized - but touch occurred. Returning to AOSP."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 333
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_1

    .line 341
    :cond_2
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->access$200(Lcom/amazon/e3oseventhandler/WebViewEventHandler;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->onCancelPendingInputEvents()V

    return v1

    .line 344
    :cond_3
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-virtual {p1, p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isPointInHorizontalScrollbar(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-virtual {p1, p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isPointInVerticalScrollbar(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 348
    :cond_4
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-static {p1, p2}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->access$300(Lcom/amazon/e3oseventhandler/WebViewEventHandler;Landroid/view/MotionEvent;)Z

    move-result p1

    .line 349
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-virtual {p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->recycleVelocityTracker()V

    .line 350
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-virtual {p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->resetState()V

    return p1

    :cond_5
    :goto_0
    return v1

    .line 336
    :cond_6
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->resetState()V

    .line 337
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->initOrResetVelocityTracker()V

    .line 338
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/WebViewEventHandler;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    iput-object p2, p1, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    :goto_1
    return v0
.end method
