.class Lcom/amazon/e3oseventhandler/HorizontalScrollView$1;
.super Ljava/lang/Object;
.source "HorizontalScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/HorizontalScrollView;->setFilter(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/HorizontalScrollView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 72
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$000(Lcom/amazon/e3oseventhandler/HorizontalScrollView;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->onCancelPendingInputEvents()V

    .line 86
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$200(Lcom/amazon/e3oseventhandler/HorizontalScrollView;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$300(Lcom/amazon/e3oseventhandler/HorizontalScrollView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-static {p1, v0}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$102(Lcom/amazon/e3oseventhandler/HorizontalScrollView;Z)Z

    goto :goto_0

    .line 80
    :cond_4
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-static {p1, v0}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$102(Lcom/amazon/e3oseventhandler/HorizontalScrollView;Z)Z

    .line 81
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-static {p1, v0}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$202(Lcom/amazon/e3oseventhandler/HorizontalScrollView;Z)Z

    .line 82
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    iput-object p2, p1, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->mLastOnDownEvent:Landroid/view/MotionEvent;

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$300(Lcom/amazon/e3oseventhandler/HorizontalScrollView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
