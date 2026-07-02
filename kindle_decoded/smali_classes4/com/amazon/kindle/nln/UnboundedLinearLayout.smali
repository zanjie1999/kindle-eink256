.class public Lcom/amazon/kindle/nln/UnboundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "UnboundedLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public forceRemeasureAndLayoutUsingRect(Landroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x0

    .line 28
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 29
    invoke-virtual {p0, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 30
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 18
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 19
    invoke-super {p0, p1, p1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
