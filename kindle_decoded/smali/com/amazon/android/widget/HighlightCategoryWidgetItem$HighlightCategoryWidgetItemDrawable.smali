.class Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HighlightCategoryWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/HighlightCategoryWidgetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HighlightCategoryWidgetItemDrawable"
.end annotation


# instance fields
.field private alpha:I

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private colors:[I

.field private intrinsicWidth:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V
    .locals 4

    .line 70
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 65
    iput v0, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->alpha:I

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 67
    iput-object v1, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->colors:[I

    .line 71
    array-length v1, p2

    new-array v1, v1, [I

    .line 72
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 73
    aget-object v2, p2, v0

    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorHexForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/Context;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iput-object v1, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->colors:[I

    .line 77
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object p2, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->highlight_category_button_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->intrinsicWidth:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 86
    iget-object v0, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    iget-object v0, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_1
    int-to-float v2, v2

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_2
    int-to-float v1, v1

    const/4 v5, 0x0

    .line 95
    :goto_3
    iget-object v6, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->colors:[I

    array-length v7, v6

    if-ge v5, v7, :cond_4

    .line 96
    aget v6, v6, v5

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_4
    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 104
    iget-object v7, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v7

    .line 105
    iget-object v8, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->paint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 106
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/16 v9, 0x1f

    invoke-virtual {p1, v8, v6, v9}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v6

    move-object v11, v7

    move v7, v6

    move-object v6, v11

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    .line 111
    :goto_6
    iget-object v8, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->colors:[I

    array-length v9, v8

    if-ge v4, v9, :cond_6

    .line 112
    iget-object v9, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->paint:Landroid/graphics/Paint;

    aget v8, v8, v4

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    sub-float v8, v1, v2

    sub-float/2addr v8, v2

    int-to-float v9, v4

    .line 114
    iget-object v10, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->colors:[I

    array-length v10, v10

    sub-int/2addr v10, v3

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float v8, v8, v9

    add-float/2addr v8, v2

    .line 115
    iget-object v9, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    if-eqz v5, :cond_7

    .line 118
    iget-object v0, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 119
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    return-void
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->intrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 125
    iget v0, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->alpha:I

    if-eq v0, p1, :cond_0

    .line 126
    iput p1, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->alpha:I

    .line 127
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 134
    iput-object p1, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 135
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
