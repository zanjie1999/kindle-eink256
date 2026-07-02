.class Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;
.super Ljava/lang/Object;
.source "AbsListViewEventHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->setFilter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {v0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$000(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/widget/AbsListView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 234
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 235
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {v2}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$000(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/widget/AbsListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 236
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {v3}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$000(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/widget/AbsListView;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$200(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Landroid/view/View;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$102(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Z)Z

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_2

    .line 329
    :cond_2
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->resetState()V

    goto/16 :goto_2

    .line 247
    :cond_3
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    iget-object v0, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_4

    return v3

    .line 256
    :cond_4
    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$100(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 257
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, v2

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_5

    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 258
    :cond_5
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$000(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/widget/AbsListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 259
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$300(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 260
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$300(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 269
    :cond_6
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isLongPress()Z

    move-result p1

    if-nez p1, :cond_7

    .line 271
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_7
    return v3

    .line 276
    :cond_8
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    iget-object v1, v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_d

    .line 284
    invoke-static {v0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$500(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 286
    invoke-static {}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Handling ACTION_UP on AbsListView asa no-op since mMotionY could not be accessed."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 290
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    .line 291
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p2, v2, :cond_c

    if-gez p1, :cond_a

    .line 293
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    sget-object p2, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-virtual {p1, p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFling(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V

    goto :goto_0

    :cond_a
    if-lez p1, :cond_b

    .line 295
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    sget-object p2, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Backward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-virtual {p1, p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFling(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V

    .line 297
    :cond_b
    :goto_0
    sget-boolean p1, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz p1, :cond_c

    .line 298
    invoke-static {}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$600()Ljava/lang/String;

    :cond_c
    return v3

    .line 308
    :cond_d
    invoke-static {v0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$800(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Landroid/view/View;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$702(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Z)Z

    .line 310
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$700(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$100(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_1

    .line 324
    :cond_e
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 325
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-virtual {p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->resetState()V

    return p1

    .line 311
    :cond_f
    :goto_1
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isScrollingNeeded()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 312
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$300(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-nez p1, :cond_10

    .line 313
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$000(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/widget/AbsListView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$900(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Landroid/widget/AbsListView;)V

    .line 314
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$1000(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)V

    .line 315
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$300(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 316
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$000(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/widget/AbsListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 317
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$000(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/widget/AbsListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 319
    :cond_10
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$1100(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)V

    .line 321
    :cond_11
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->resetState()V

    return v3

    .line 239
    :cond_12
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->resetState()V

    .line 240
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    .line 242
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$302(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Landroid/view/View;)Landroid/view/View;

    .line 243
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {p1, p2}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$400(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;Landroid/view/MotionEvent;)V

    .line 333
    :goto_2
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$1;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    iget-object p1, p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
