.class public Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;
.super Lcom/amazon/kindle/nln/DisablingFrameLayout;
.source "PageFlipFrameLayout.java"


# instance fields
.field private bookTitle:Landroid/widget/TextView;

.field private contentDirection:I

.field private orientation:I

.field private titleContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/nln/DisablingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->orientation:I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->contentDirection:I

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 105
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    iget v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->titleContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->page_flip_title_space:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->bookTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->page_flip_title_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->orientation:I

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->orientation:I

    .line 41
    sget v0, Lcom/amazon/kindle/krl/R$id;->title_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->titleContainer:Landroid/view/View;

    .line 42
    sget v0, Lcom/amazon/kindle/krl/R$id;->book_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->bookTitle:Landroid/widget/TextView;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 60
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 62
    sget p1, Lcom/amazon/kindle/krl/R$id;->page_label_divider:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 63
    sget p2, Lcom/amazon/kindle/krl/R$id;->breadcrumb_1:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 64
    sget p3, Lcom/amazon/kindle/krl/R$id;->breadcrumb_2:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x3

    const/4 p5, 0x2

    new-array p5, p5, [I

    .line 71
    invoke-static {p1, p0, p5}, Lcom/amazon/android/util/UIUtils;->getPositionInParent(Landroid/view/View;Landroid/view/View;[I)Z

    const/4 p1, 0x1

    .line 73
    aget p5, p5, p1

    add-int/2addr p5, p4

    sget p4, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->breadcrumbPageOffset:I

    add-int/2addr p5, p4

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int p4, p5, p4

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 79
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 85
    iget v2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->contentDirection:I

    const/4 v3, 0x0

    if-ne v2, p1, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    move v4, v0

    move v0, p1

    move p1, v4

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    move v3, v1

    const/4 v1, 0x0

    .line 99
    :goto_0
    invoke-virtual {p2, v1, p4, v0, p5}, Landroid/view/View;->layout(IIII)V

    .line 100
    invoke-virtual {p3, v3, p4, p1, p5}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setContentDirection(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->contentDirection:I

    return-void
.end method
