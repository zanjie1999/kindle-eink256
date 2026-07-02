.class public Lcom/amazon/ea/ui/PlaceholderCoverDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlaceholderCoverDrawable.java"


# static fields
.field private static final AUTHOR_MAX_LINES:I = 0x1


# instance fields
.field private final author:Ljava/lang/String;

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private final context:Landroid/content/Context;

.field private final textPaint:Landroid/text/TextPaint;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->title:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->author:Ljava/lang/String;

    .line 58
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->textPaint:Landroid/text/TextPaint;

    const/high16 p2, -0x1000000

    .line 59
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private createLayoutWithMaxHeight(Ljava/lang/String;II)Landroid/text/StaticLayout;
    .locals 9

    .line 157
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 158
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    if-gt p1, p3, :cond_0

    return-object v8

    .line 161
    :cond_0
    invoke-virtual {v8, p3}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result p1

    invoke-direct {p0, v8, p1}, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->truncateLayout(Landroid/text/StaticLayout;I)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method private createLayoutWithMaxLines(Ljava/lang/String;II)Landroid/text/StaticLayout;
    .locals 9

    .line 141
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 142
    invoke-direct {p0, v8, p3}, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->truncateLayout(Landroid/text/StaticLayout;I)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method private truncateLayout(Landroid/text/StaticLayout;I)Landroid/text/StaticLayout;
    .locals 9

    .line 176
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt v0, p2, :cond_0

    return-object p1

    :cond_0
    if-gtz p2, :cond_1

    return-object p1

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_ellipsis:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 p2, p2, -0x1

    int-to-float v1, v1

    .line 186
    invoke-virtual {p1, p2, v1}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 189
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {v1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    new-instance p2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 192
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getSpacingMultiplier()F

    move-result v6

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getSpacingAdd()F

    move-result v7

    const/4 v8, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 64
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    sget v2, Lcom/amazon/kindle/ea/R$dimen;->endactions_placeholder_cover_title_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 69
    sget v3, Lcom/amazon/kindle/ea/R$dimen;->endactions_placeholder_cover_author_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 70
    sget v4, Lcom/amazon/kindle/ea/R$dimen;->endactions_placeholder_cover_top_padding:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 71
    sget v5, Lcom/amazon/kindle/ea/R$dimen;->endactions_placeholder_cover_bottom_padding:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 72
    sget v6, Lcom/amazon/kindle/ea/R$dimen;->endactions_placeholder_cover_horizontal_padding:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    mul-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v4

    sub-int/2addr v7, v5

    .line 80
    iget-object v8, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/ea/R$drawable;->anyactions_book_cover:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 81
    iget-object v9, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 82
    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 83
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    iget-object v8, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->textPaint:Landroid/text/TextPaint;

    int-to-float v3, v3

    invoke-virtual {v8, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 87
    iget-object v3, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->author:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-direct {p0, v3, v6, v8}, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->createLayoutWithMaxLines(Ljava/lang/String;II)Landroid/text/StaticLayout;

    move-result-object v3

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v1

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v8

    sub-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    iget-object v0, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->textPaint:Landroid/text/TextPaint;

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 95
    iget-object v0, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->title:Ljava/lang/String;

    .line 96
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int/2addr v7, v2

    sub-int/2addr v7, v5

    .line 95
    invoke-direct {p0, v0, v6, v7}, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->createLayoutWithMaxHeight(Ljava/lang/String;II)Landroid/text/StaticLayout;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v4

    .line 98
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_book_grid_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_book_grid_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
