.class Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BreadcrumbView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollForwarder"
.end annotation


# instance fields
.field private scrollCatcher:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$1;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;->scrollCatcher:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;->scrollCatcher:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 130
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;->scrollCatcher:Landroidx/recyclerview/widget/RecyclerView;

    neg-float p2, p3

    float-to-int p2, p2

    neg-float p3, p4

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;->scrollCatcher:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    float-to-int p2, p3

    float-to-int p3, p4

    .line 111
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method setScrollCatcher(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;->scrollCatcher:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
