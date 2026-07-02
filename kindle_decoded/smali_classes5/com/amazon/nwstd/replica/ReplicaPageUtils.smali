.class public Lcom/amazon/nwstd/replica/ReplicaPageUtils;
.super Ljava/lang/Object;
.source "ReplicaPageUtils.java"


# direct methods
.method public static computeReplicaPageMargins(IIIFLandroid/content/res/Resources;)Landroid/graphics/RectF;
    .locals 6

    if-ge p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->status_bar_height:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 24
    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->replica_view_top_margin:I

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    int-to-float p0, p0

    div-float/2addr p0, p3

    float-to-int p0, p0

    sub-int p2, p1, v1

    sub-int/2addr p2, p4

    if-ge p0, p2, :cond_1

    int-to-float p2, v1

    int-to-float p3, p4

    add-float/2addr p2, p3

    int-to-float p1, p1

    add-int/2addr v1, p4

    add-int/2addr v1, p0

    int-to-float p0, v1

    sub-float/2addr p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_1
    move p0, p2

    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v3, 0x2

    if-ne p2, v3, :cond_6

    int-to-float p2, p0

    int-to-float v4, p1

    div-float/2addr p2, v4

    div-float/2addr p2, v0

    cmpg-float p2, p3, p2

    if-gez p2, :cond_3

    mul-float v4, v4, p3

    float-to-int p1, v4

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    .line 45
    div-int/2addr p0, v3

    int-to-float p0, p0

    move p1, p0

    const/4 v4, 0x0

    move v2, p1

    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    cmpl-float p2, p3, v2

    if-eqz p2, :cond_4

    .line 52
    div-int/2addr p0, v3

    int-to-float p0, p0

    div-float/2addr p0, p3

    float-to-int p0, p0

    goto :goto_2

    :cond_4
    move p0, p1

    :goto_2
    sub-int p2, p1, v1

    sub-int/2addr p2, p4

    if-ge p0, p2, :cond_5

    int-to-float p1, v1

    int-to-float p2, p4

    add-float/2addr p1, p2

    add-int/2addr v1, p4

    add-int/2addr v1, p0

    int-to-float p0, v1

    sub-float/2addr v4, p0

    move p0, p1

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    sub-int/2addr p1, p0

    int-to-float p0, p1

    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_3
    move v5, p1

    move p1, v4

    goto :goto_6

    :cond_6
    int-to-float p2, p0

    int-to-float v4, p1

    div-float/2addr p2, v4

    mul-float v5, v4, p3

    float-to-int v5, v5

    sub-int v5, p0, v5

    .line 64
    div-int/2addr v5, v3

    int-to-float v5, v5

    div-float/2addr p2, v0

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_9

    cmpl-float p2, p3, v2

    if-eqz p2, :cond_7

    .line 70
    div-int/2addr p0, v3

    int-to-float p0, p0

    div-float/2addr p0, p3

    float-to-int p0, p0

    goto :goto_4

    :cond_7
    move p0, p1

    :goto_4
    sub-int p2, p1, v1

    sub-int/2addr p2, p4

    if-ge p0, p2, :cond_8

    int-to-float p1, v1

    int-to-float p2, p4

    add-float v2, p1, p2

    add-int/2addr v1, p4

    add-int/2addr v1, p0

    int-to-float p0, v1

    sub-float p0, v4, p0

    move p1, p0

    move p0, v2

    move v2, v5

    goto :goto_6

    :cond_8
    sub-int/2addr p1, p0

    int-to-float p0, p1

    move v2, v5

    goto :goto_5

    :cond_9
    move v2, v5

    const/4 p0, 0x0

    :goto_5
    const/4 p1, 0x0

    .line 82
    :goto_6
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v2, p0, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2
.end method
