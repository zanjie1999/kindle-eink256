.class Lcom/amazon/e3oseventhandler/ScrollView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/ScrollView;->createScrollViewTouchHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/ScrollView;

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/ScrollView;Landroid/widget/ScrollView;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    iput-object p2, p0, Lcom/amazon/e3oseventhandler/ScrollView$2;->val$scrollView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private flingDown()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ScrollView$2;->val$scrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/amazon/e3oseventhandler/ScrollView$2$1;

    invoke-direct {v1, p0}, Lcom/amazon/e3oseventhandler/ScrollView$2$1;-><init>(Lcom/amazon/e3oseventhandler/ScrollView$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private flingUp()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ScrollView$2;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/ScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-static {v2}, Lcom/amazon/e3oseventhandler/ScrollView;->access$400(Lcom/amazon/e3oseventhandler/ScrollView;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

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

    .line 124
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/e3oseventhandler/ScrollView;->access$202(Lcom/amazon/e3oseventhandler/ScrollView;Z)Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/e3oseventhandler/ScrollView;->access$102(Lcom/amazon/e3oseventhandler/ScrollView;Z)Z

    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/e3oseventhandler/ScrollView;->access$202(Lcom/amazon/e3oseventhandler/ScrollView;Z)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/ScrollView;->mLastOnDownEvent:Landroid/view/MotionEvent;

    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 146
    :cond_1
    iget-object p3, p0, Lcom/amazon/e3oseventhandler/ScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-static {p3}, Lcom/amazon/e3oseventhandler/ScrollView;->access$100(Lcom/amazon/e3oseventhandler/ScrollView;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_3

    .line 147
    iget-object p3, p0, Lcom/amazon/e3oseventhandler/ScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-static {p3, p4}, Lcom/amazon/e3oseventhandler/ScrollView;->access$102(Lcom/amazon/e3oseventhandler/ScrollView;Z)Z

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/ScrollView$2;->flingDown()V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 155
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/ScrollView$2;->flingUp()V

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
