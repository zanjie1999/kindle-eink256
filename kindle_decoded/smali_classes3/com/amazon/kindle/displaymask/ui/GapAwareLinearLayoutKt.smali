.class public final Lcom/amazon/kindle/displaymask/ui/GapAwareLinearLayoutKt;
.super Ljava/lang/Object;
.source "GapAwareLinearLayout.kt"


# direct methods
.method public static final intersects(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 3

    const-string v0, "$this$intersects"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p0

    return p0
.end method

.method public static final relayoutAroundGap(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 2

    const-string v0, "$this$relayoutAroundGap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 103
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p1, :cond_1

    .line 104
    iget p1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    .line 105
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 102
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
