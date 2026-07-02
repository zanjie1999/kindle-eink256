.class public Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;
.super Landroid/widget/FrameLayout;
.source "BreadcrumbView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;
    }
.end annotation


# instance fields
.field private contentContainer:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private scrollForwarder:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$1;)V

    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->scrollForwarder:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;

    .line 32
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->scrollForwarder:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public disposePageView()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->contentContainer:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->disposePageView()V

    return-void
.end method

.method public getContentLayout()Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->contentContainer:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    return-object v0
.end method

.method public getPageThumbnail()Landroid/view/View;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->contentContainer:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->getPageThumbnail()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 46
    sget v0, Lcom/amazon/kindle/krl/R$id;->breadcrumb_content_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->contentContainer:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBadgeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->contentContainer:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->setBadgeIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIsMrpr(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->contentContainer:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->setIsMrpr(Z)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->contentContainer:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setScrollCatcher(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->scrollForwarder:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView$ScrollForwarder;->setScrollCatcher(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public setThumbnail(Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;->contentContainer:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->setThumbnail(Landroid/view/View;)V

    return-void
.end method
