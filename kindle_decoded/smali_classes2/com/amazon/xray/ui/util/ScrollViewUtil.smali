.class public Lcom/amazon/xray/ui/util/ScrollViewUtil;
.super Ljava/lang/Object;
.source "ScrollViewUtil.java"


# direct methods
.method public static scrollToVisible(Landroid/widget/HorizontalScrollView;Landroid/view/View;)V
    .locals 4

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 33
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    const/4 v3, 0x0

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v1

    .line 39
    invoke-virtual {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    if-ge v2, v0, :cond_2

    sub-int/2addr v2, v0

    .line 41
    invoke-virtual {p0, v2, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static scrollToVisible(Landroid/widget/ScrollView;Landroid/view/View;)V
    .locals 8

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 59
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 60
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    .line 61
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    const/4 v7, 0x0

    if-ge v4, v0, :cond_1

    sub-int/2addr v4, v0

    goto :goto_0

    :cond_1
    if-le v5, v1, :cond_2

    sub-int v4, v5, v1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-ge v6, v2, :cond_3

    sub-int v7, v6, v2

    goto :goto_1

    :cond_3
    if-le p1, v3, :cond_4

    sub-int v7, p1, v3

    :cond_4
    :goto_1
    if-nez v7, :cond_5

    if-eqz v4, :cond_6

    .line 83
    :cond_5
    invoke-virtual {p0, v7, v4}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_6
    :goto_2
    return-void
.end method
