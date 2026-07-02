.class public Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;
.super Lcom/amazon/kcp/library/ui/SelectionFriendlyLinearLayout;
.source "BottomBarButton.kt"


# instance fields
.field private buttonLabel:Landroid/widget/TextView;

.field private final maxWidth:I

.field private shouldHideLabel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/ui/SelectionFriendlyLinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$dimen;->bottom_bar_button_max_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->maxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/ui/SelectionFriendlyLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$dimen;->bottom_bar_button_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->maxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/ui/SelectionFriendlyLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$dimen;->bottom_bar_button_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->maxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/ui/SelectionFriendlyLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$dimen;->bottom_bar_button_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->maxWidth:I

    return-void
.end method


# virtual methods
.method public final getLabelVisibility()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->buttonLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "buttonLabel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getShouldHideLabel()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->shouldHideLabel:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 31
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 32
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->label:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.label)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->buttonLabel:Landroid/widget/TextView;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->buttonLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v4, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->maxWidth:I

    if-le v3, v4, :cond_0

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v4, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 53
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, -0x80000000

    .line 54
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 55
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 56
    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 59
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->shouldHideLabel:Z

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_2
    const-string p1, "buttonLabel"

    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setShouldHideLabel(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->shouldHideLabel:Z

    return-void
.end method

.method public final showOrHideLabel(Z)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/bottombar/BottomBarButton;->buttonLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const-string p1, "buttonLabel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
