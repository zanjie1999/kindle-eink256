.class public Lcom/amazon/startactions/ui/helpers/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public static getScaleFitCenter(Landroid/graphics/drawable/Drawable;II)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    return v0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    if-gt v1, p1, :cond_1

    if-gt p0, p2, :cond_1

    return v0

    :cond_1
    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p2, p0

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
