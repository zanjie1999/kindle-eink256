.class public Lcom/amazon/kcp/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public static adjustRightPadding(Landroid/view/View;I)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, p1

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static adjustStartPadding(Landroid/view/View;I)V
    .locals 4

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, p1

    .line 42
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static setHorizontalSafePadding(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/DeviceUtils;->getSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 27
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
