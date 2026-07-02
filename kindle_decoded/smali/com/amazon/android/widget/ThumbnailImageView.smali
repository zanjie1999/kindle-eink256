.class public Lcom/amazon/android/widget/ThumbnailImageView;
.super Landroid/widget/ImageView;
.source "ThumbnailImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;
    }
.end annotation


# instance fields
.field private index:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBorderWidth:F

.field private mPageBorder:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/amazon/android/widget/ThumbnailImageView;->index:I

    .line 24
    sget-object p1, Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;->NONE:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mPageBorder:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    .line 30
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/newsstand/core/R$dimen;->selected_thumbnail_item_border_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mBorderWidth:F

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/newsstand/core/R$color;->selected_thumbnail_item_border_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/amazon/android/widget/ThumbnailImageView;->index:I

    return v0
.end method

.method public getThumbnailImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mPageBorder:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    sget-object v1, Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;->NONE:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    if-eq v0, v1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 75
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mBorderWidth:F

    iget-object v7, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    .line 78
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mBorderWidth:F

    sub-float v10, v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v11, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v12, v0

    iget-object v13, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 80
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mPageBorder:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    sget-object v1, Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;->BOTH:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 82
    iget v5, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mBorderWidth:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mBorderWidth:F

    sub-float v3, v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 86
    :cond_0
    sget-object v1, Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;->LEFT:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    if-ne v0, v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 87
    iget v5, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mBorderWidth:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mBorderWidth:F

    sub-float v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/amazon/android/widget/ThumbnailImageView;->index:I

    return-void
.end method

.method public setPageBorder(Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mPageBorder:Lcom/amazon/android/widget/ThumbnailImageView$PageBorder;

    .line 66
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setThumbnailImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
