.class Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/HorizontalScrollView;->createScrollViewTouchHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

.field final synthetic val$horizontalScrollView:Landroid/widget/HorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/HorizontalScrollView;Landroid/widget/HorizontalScrollView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    iput-object p2, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->val$horizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private flingLeft()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->val$horizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-static {v2}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$400(Lcom/amazon/e3oseventhandler/HorizontalScrollView;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    return-void
.end method

.method private flingRight()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->val$horizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2$1;

    invoke-direct {v1, p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2$1;-><init>(Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$202(Lcom/amazon/e3oseventhandler/HorizontalScrollView;Z)Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$102(Lcom/amazon/e3oseventhandler/HorizontalScrollView;Z)Z

    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$202(Lcom/amazon/e3oseventhandler/HorizontalScrollView;Z)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    if-nez p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->mLastOnDownEvent:Landroid/view/MotionEvent;

    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    iget-object p3, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-static {p3}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$100(Lcom/amazon/e3oseventhandler/HorizontalScrollView;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_3

    .line 146
    iget-object p3, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-static {p3, p4}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$102(Lcom/amazon/e3oseventhandler/HorizontalScrollView;Z)Z

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->flingRight()V

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 154
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->flingLeft()V

    :cond_3
    :goto_0
    return p4

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
