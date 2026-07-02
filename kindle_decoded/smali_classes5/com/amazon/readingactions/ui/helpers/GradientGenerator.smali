.class public Lcom/amazon/readingactions/ui/helpers/GradientGenerator;
.super Ljava/lang/Object;
.source "GradientGenerator.java"


# static fields
.field private static final MIN_CONTRAST_RATIO:D = 4.5

.field private static final OPACITY_DECREMENT:F = 0.05f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateOpacity(IIIF)F
    .locals 7

    .line 34
    :goto_0
    invoke-virtual {p0, p1, p4}, Lcom/amazon/readingactions/ui/helpers/GradientGenerator;->getTranslucentColor(IF)I

    move-result v0

    .line 35
    invoke-static {v0, p3}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    .line 36
    invoke-static {p2, v0}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v0

    const v2, 0x3d4ccccd    # 0.05f

    sub-float v2, p4, v2

    const-wide/high16 v3, 0x4012000000000000L    # 4.5

    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    if-lez v6, :cond_1

    cmpg-double v6, v0, v3

    if-ltz v6, :cond_0

    goto :goto_1

    :cond_0
    move p4, v2

    goto :goto_0

    :cond_1
    :goto_1
    cmpl-double p1, v0, v3

    if-ltz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    :goto_2
    return p4
.end method

.method public getGradientDrawable(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 16
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object p2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p1, p2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-object p1
.end method

.method public getTranslucentColor(IF)I
    .locals 2

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method
