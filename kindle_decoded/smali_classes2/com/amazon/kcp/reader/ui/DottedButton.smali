.class public Lcom/amazon/kcp/reader/ui/DottedButton;
.super Landroid/widget/FrameLayout;
.source "DottedButton.java"


# instance fields
.field private button:Landroid/view/View;

.field private dot:Landroid/widget/ImageView;

.field private dotTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->dotted_button_dot_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dotTopMargin:I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 49
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    .line 53
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x51

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 60
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    .line 61
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->select_dot_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 69
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    sget p2, Lcom/amazon/kindle/krl/R$drawable;->select_dot_selected:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    sget p2, Lcom/amazon/kindle/krl/R$drawable;->select_dot_focus:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 94
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 96
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 100
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget p3, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dotTopMargin:I

    add-int/2addr p2, p3

    .line 102
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 84
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 85
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    .line 86
    iget p2, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dotTopMargin:I

    add-int/2addr p1, p2

    .line 88
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->button:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DottedButton;->dot:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
