.class public final Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;
.super Landroid/widget/FrameLayout;
.source "CSBreadcrumbContentLayout.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private pageLabel:Landroid/widget/TextView;

.field private waypointBackgroundResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final updateTextSize()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;->pageLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x1

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float/2addr v2, v1

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 22
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 23
    sget v0, Lcom/amazon/kindle/krl/R$id;->page_label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;->pageLabel:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 25
    sget v1, Lcom/amazon/kindle/krl/R$attr;->csBreadcrumbContentFrameMRPR:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/amazon/kindle/krl/R$attr;->csBreadcrumbContentFrameWaypoint:I

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttributes(attrs)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;->waypointBackgroundResId:I

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;->updateTextSize()V

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pageLabel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbContentLayout;->pageLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
