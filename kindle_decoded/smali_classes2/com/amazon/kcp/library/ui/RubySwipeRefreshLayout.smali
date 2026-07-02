.class public Lcom/amazon/kcp/library/ui/RubySwipeRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "RubySwipeRefreshLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/RubySwipeRefreshLayout;->setColors()V

    return-void
.end method

.method private canChildScrollUp(Landroid/view/ViewGroup;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 72
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    .line 77
    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return v4

    .line 79
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 80
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/amazon/kcp/library/ui/RubySwipeRefreshLayout;->canChildScrollUp(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private setColors()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 32
    sget v1, Lcom/amazon/kindle/librarymodule/R$attr;->pull_to_refresh_circle_image_arrow_color:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/amazon/kindle/librarymodule/R$attr;->pull_to_refresh_circle_image_background_color:I

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 36
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-array v0, v3, [I

    aput v1, v0, v2

    .line 39
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 40
    invoke-virtual {p0, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 1

    .line 60
    invoke-direct {p0, p0}, Lcom/amazon/kcp/library/ui/RubySwipeRefreshLayout;->canChildScrollUp(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method
