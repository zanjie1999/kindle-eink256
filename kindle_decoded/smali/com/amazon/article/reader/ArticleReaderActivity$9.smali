.class Lcom/amazon/article/reader/ArticleReaderActivity$9;
.super Ljava/lang/Object;
.source "ArticleReaderActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/article/reader/ArticleReaderActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/article/reader/ArticleReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 467
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto/16 :goto_1

    .line 469
    :cond_0
    iget-object p2, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iget-boolean v2, p2, Lcom/amazon/article/reader/ArticleReaderActivity;->inVoiceOverEnabled:Z

    if-nez v2, :cond_6

    .line 471
    invoke-static {p2}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    iget-object v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v2}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    sub-int/2addr p2, v2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 472
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 474
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$200(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iget-object v2, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {v2}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    if-gt p1, v2, :cond_2

    .line 475
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$200(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p2}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto/16 :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 478
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$200(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iget-object p2, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p2}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-lt p1, p2, :cond_6

    .line 479
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput-boolean v1, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->isTapEvent:Z

    .line 480
    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    goto :goto_1

    .line 483
    :cond_3
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$200(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iget-object p2, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p2}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-lt p1, p2, :cond_6

    .line 484
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput-boolean v1, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->isTapEvent:Z

    .line 485
    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 491
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$200(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iget-object p2, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p2}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-lt p1, p2, :cond_6

    .line 492
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput-boolean v1, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->isTapEvent:Z

    .line 493
    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    goto :goto_1

    .line 496
    :cond_5
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$9;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput-boolean v1, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->isTapEvent:Z

    .line 497
    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$400(Lcom/amazon/article/reader/ArticleReaderActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_6
    :goto_1
    return v0
.end method
