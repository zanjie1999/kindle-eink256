.class Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;
.super Ljava/lang/Object;
.source "ScrollViewEventHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;->setFilter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 140
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_2

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->resetState()V

    goto :goto_2

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isScrollingNeeded()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isDownCaptured()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 154
    :cond_3
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    :goto_0
    return v0

    .line 158
    :cond_5
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isScrollingNeeded()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-static {p1, p2}, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;->access$000(Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-static {p1, p2}, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;->access$100(Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 164
    :cond_6
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 165
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-virtual {p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->resetState()V

    .line 166
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-static {p2}, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;->access$200(Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;)V

    return p1

    .line 159
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 160
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;->access$200(Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;)V

    .line 161
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->resetState()V

    return v0

    .line 144
    :cond_8
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->resetState()V

    .line 145
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    .line 174
    :goto_2
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollViewEventHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
