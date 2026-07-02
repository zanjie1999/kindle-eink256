.class public Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;
.super Landroid/widget/FrameLayout;
.source "ChromeFragmentContainerLayout.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final insetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p2, Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout$1;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout$1;-><init>(Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;)V

    iput-object p2, p0, Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;->insetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    .line 38
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;->activity:Landroid/app/Activity;

    .line 39
    iget-object p1, p0, Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;->insetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;)Landroid/app/Activity;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/nln/ChromeFragmentContainerLayout;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    .line 44
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 45
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
