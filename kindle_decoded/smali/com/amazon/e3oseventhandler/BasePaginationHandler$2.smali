.class Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BasePaginationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/BasePaginationHandler;->setWidgetView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/BasePaginationHandler;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 352
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-virtual {p1, p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isPointInVerticalScrollbar(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-virtual {p1, p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isPointInHorizontalScrollbar(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    iput p3, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastGesture:I

    return p3

    .line 353
    :cond_1
    :goto_0
    sget-boolean p1, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 354
    invoke-static {}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->access$200()Ljava/lang/String;

    :cond_2
    return p3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 347
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    const/4 v0, 0x2

    iput v0, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastGesture:I

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    if-nez p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    :cond_0
    if-eqz p1, :cond_9

    if-nez p2, :cond_1

    goto :goto_2

    .line 319
    :cond_1
    iget-object p3, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-virtual {p3, p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isPointInVerticalScrollbar(Landroid/view/MotionEvent;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-virtual {p3, p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isPointInHorizontalScrollbar(Landroid/view/MotionEvent;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 325
    :cond_2
    iget-object p3, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-virtual {p3}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isFling()Z

    move-result p3

    if-eqz p3, :cond_3

    return p4

    .line 329
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p3, v0

    .line 330
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-virtual {v0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 331
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float p3, p2, p1

    .line 333
    :cond_4
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41a00000    # 20.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    .line 334
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    iput p4, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastGesture:I

    const/4 p2, 0x0

    cmpg-float p2, p3, p2

    if-gez p2, :cond_5

    .line 336
    sget-object p2, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-virtual {p1, p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFling(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V

    goto :goto_0

    .line 338
    :cond_5
    sget-object p2, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Backward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-virtual {p1, p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFling(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V

    .line 340
    :goto_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->onCancelPendingInputEvents()V

    :cond_6
    return p4

    .line 320
    :cond_7
    :goto_1
    sget-boolean p1, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz p1, :cond_8

    .line 321
    invoke-static {}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->access$200()Ljava/lang/String;

    :cond_8
    return p4

    :cond_9
    :goto_2
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
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isPointInHorizontalScrollbar(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-static {v0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->access$000(Lcom/amazon/e3oseventhandler/BasePaginationHandler;Landroid/view/MotionEvent;)V

    return v1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isPointInVerticalScrollbar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-static {v0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->access$100(Lcom/amazon/e3oseventhandler/BasePaginationHandler;Landroid/view/MotionEvent;)V

    return v1

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;->this$0:Lcom/amazon/e3oseventhandler/BasePaginationHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->onTouchSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
