.class public Lcom/amazon/bookwizard/ui/view/CoverImageView;
.super Lcom/amazon/bookwizard/ui/view/StretchyImageView;
.source "CoverImageView.java"


# instance fields
.field private imageSize:Landroid/graphics/Point;

.field private layout:Landroid/text/StaticLayout;

.field private paint:Landroid/text/TextPaint;

.field placeholderHeight:I

.field placeholderWidth:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/StretchyImageView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->imageSize:Landroid/graphics/Point;

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/CoverImageView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/amazon/bookwizard/ui/view/StretchyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->imageSize:Landroid/graphics/Point;

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/CoverImageView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/bookwizard/ui/view/StretchyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->imageSize:Landroid/graphics/Point;

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/CoverImageView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    .line 90
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->paint:Landroid/text/TextPaint;

    .line 91
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$dimen;->bookwizard_cover_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderHeight:I

    .line 92
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$dimen;->bookwizard_cover_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderWidth:I

    .line 94
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->paint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/bookwizard/R$dimen;->bookwizard_cover_font_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public getImageSize()Landroid/graphics/Point;
    .locals 7

    .line 181
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 186
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v1, v0

    .line 187
    iget v3, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderHeight:I

    int-to-float v4, v3

    iget v5, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderWidth:I

    int-to-float v6, v5

    div-float/2addr v4, v6

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 188
    iget-object v2, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->imageSize:Landroid/graphics/Point;

    div-float/2addr v0, v1

    int-to-float v1, v3

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->imageSize:Landroid/graphics/Point;

    int-to-float v1, v5

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 183
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->imageSize:Landroid/graphics/Point;

    iget v1, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderWidth:I

    iget v2, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->imageSize:Landroid/graphics/Point;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 161
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->layout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    .line 167
    iget v2, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderHeight:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 169
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 145
    invoke-super {p0, p1, p2}, Lcom/amazon/bookwizard/ui/view/StretchyImageView;->onMeasure(II)V

    .line 149
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 150
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 151
    iput p1, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderWidth:I

    .line 152
    iput p2, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderHeight:I

    .line 153
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->layout:Landroid/text/StaticLayout;

    const/4 p1, 0x0

    .line 136
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->layout:Landroid/text/StaticLayout;

    const/4 p1, 0x0

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 9

    .line 105
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->text:Ljava/lang/String;

    .line 106
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 109
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->paint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->layout:Landroid/text/StaticLayout;

    const p1, -0xbbbbbc

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
