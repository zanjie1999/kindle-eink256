.class public Lcom/amazon/kcp/reader/ui/MagnifyingGlass;
.super Landroid/widget/FrameLayout;
.source "MagnifyingGlass.java"


# instance fields
.field private magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

.field private offsets:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/MagnifyingGlass;)Z
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->isActivityInMultiWindow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/MagnifyingGlass;)Landroid/graphics/Point;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->offsets:Landroid/graphics/Point;

    return-object p0
.end method

.method private isActivityInMultiWindow()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    return-object v0
.end method

.method public getOffsets()Landroid/graphics/Point;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->offsets:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 49
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->isActivityInMultiWindow()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 52
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->offsets:Landroid/graphics/Point;

    .line 54
    new-instance v0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass$1;-><init>(Lcom/amazon/kcp/reader/ui/MagnifyingGlass;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    sget v0, Lcom/amazon/kindle/krl/R$id;->magnifying_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/MagnifyingView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->magnifyingView:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setVisibility(I)V

    return-void
.end method
