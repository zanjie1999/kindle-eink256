.class public Lcom/amazon/kcp/reader/ui/DotPageIndicator;
.super Landroid/view/View;
.source "DotPageIndicator.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/IPageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;
    }
.end annotation


# instance fields
.field final BORDER_WIDTH:I

.field private activeDrawableResourceId:I

.field private inactiveDrawableResourceId:I

.field private mHeightPx:I

.field private mItemBorderPaint:Landroid/graphics/Paint;

.field private mNormalItemPaint:Landroid/graphics/Paint;

.field private mNumberItems:I

.field private mSelectedItem:I

.field private mSelectedItemPaint:Landroid/graphics/Paint;

.field private mSpacingPx:I

.field private shape:Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 44
    iput p3, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->activeDrawableResourceId:I

    .line 47
    iput p3, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->inactiveDrawableResourceId:I

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->initializeViewProperties(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    const p2, -0x777778

    .line 84
    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->createItemPaint(IZ)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mNormalItemPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    .line 85
    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->createItemPaint(IZ)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mSelectedItemPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    .line 86
    invoke-direct {p0, p3, p1}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->createItemPaint(IZ)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mItemBorderPaint:Landroid/graphics/Paint;

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->info_card_page_indicator_border:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->BORDER_WIDTH:I

    return-void
.end method

.method private createItemPaint(IZ)Landroid/graphics/Paint;
    .locals 2

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 118
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p2, :cond_0

    .line 123
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget p1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->BORDER_WIDTH:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-object v0
.end method

.method private initializeViewProperties(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 92
    sget-object v0, Lcom/amazon/kindle/krl/R$styleable;->DotPageIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 95
    :try_start_0
    sget p2, Lcom/amazon/kindle/krl/R$styleable;->DotPageIndicator_indicatorSpacing:I

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->infocard_page_selector_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 95
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mSpacingPx:I

    .line 98
    sget p2, Lcom/amazon/kindle/krl/R$styleable;->DotPageIndicator_indicatorType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->fromId(I)Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->shape:Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    .line 100
    sget-object v0, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->RESOURCE:Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    sget p2, Lcom/amazon/kindle/krl/R$styleable;->DotPageIndicator_resourceActive:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->activeDrawableResourceId:I

    .line 102
    sget p2, Lcom/amazon/kindle/krl/R$styleable;->DotPageIndicator_resourceInactive:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->inactiveDrawableResourceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    throw p2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 182
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 184
    iget v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mNumberItems:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    sget-object v1, Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;->RESOURCE:Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->shape:Lcom/amazon/kcp/reader/ui/DotPageIndicator$INDICATOR_TYPE;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->activeDrawableResourceId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->inactiveDrawableResourceId:I

    if-eq v1, v3, :cond_2

    .line 191
    :goto_0
    iget v1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mNumberItems:I

    if-ge v2, v1, :cond_4

    .line 192
    iget v1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->BORDER_WIDTH:I

    iget v3, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mHeightPx:I

    iget v4, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mSpacingPx:I

    add-int/2addr v3, v4

    mul-int v3, v3, v2

    add-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v1, v1

    .line 194
    iget v4, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mSelectedItem:I

    if-ne v4, v2, :cond_1

    iget v4, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->activeDrawableResourceId:I

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->inactiveDrawableResourceId:I

    :goto_1
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    float-to-int v5, v3

    float-to-int v6, v1

    .line 196
    iget v7, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mHeightPx:I

    int-to-float v8, v7

    add-float/2addr v3, v8

    float-to-int v3, v3

    int-to-float v7, v7

    add-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_2
    :goto_2
    iget v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mNumberItems:I

    if-ge v2, v0, :cond_4

    .line 201
    iget v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->BORDER_WIDTH:I

    iget v1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mHeightPx:I

    iget v3, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mSpacingPx:I

    add-int/2addr v1, v3

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    .line 203
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mHeightPx:I

    int-to-float v5, v4

    add-float/2addr v5, v1

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-direct {v3, v1, v0, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 204
    iget v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mSelectedItem:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mSelectedItemPaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mNormalItemPaint:Landroid/graphics/Paint;

    :goto_3
    const/high16 v1, 0x40400000    # 3.0f

    .line 206
    invoke-virtual {p1, v3, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mItemBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 167
    iget p1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mNumberItems:I

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 168
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mHeightPx:I

    .line 174
    iget p2, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->BORDER_WIDTH:I

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p1

    .line 175
    iget v2, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mNumberItems:I

    mul-int p1, p1, v2

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mSpacingPx:I

    mul-int v2, v2, v0

    add-int/2addr p1, v2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 176
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V
    .locals 3

    .line 157
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    .line 158
    :goto_0
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/16 v2, 0xff

    if-ne p1, v1, :cond_1

    const/16 p1, 0x49

    goto :goto_1

    :cond_1
    const/16 p1, 0xaa

    :goto_1
    invoke-static {v2, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->createItemPaint(IZ)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mSelectedItemPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->createItemPaint(IZ)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mItemBorderPaint:Landroid/graphics/Paint;

    .line 161
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->createItemPaint(IZ)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mNormalItemPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setItemCount(I)V
    .locals 1

    .line 137
    iget v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mNumberItems:I

    if-eq v0, p1, :cond_0

    .line 138
    iput p1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mNumberItems:I

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 1

    .line 150
    iget v0, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mSelectedItem:I

    if-eq v0, p1, :cond_0

    .line 151
    iput p1, p0, Lcom/amazon/kcp/reader/ui/DotPageIndicator;->mSelectedItem:I

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
