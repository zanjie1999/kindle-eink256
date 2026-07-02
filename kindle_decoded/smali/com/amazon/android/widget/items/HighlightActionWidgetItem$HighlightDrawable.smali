.class Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HighlightActionWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/items/HighlightActionWidgetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HighlightDrawable"
.end annotation


# instance fields
.field private boundsInset:I

.field private circle:Landroid/graphics/Path;

.field private fillPaint:Landroid/graphics/Paint;

.field private isDeleteButton:Z

.field private linePaint:Landroid/graphics/Paint;

.field private strikeBounds:Landroid/graphics/Rect;

.field private strikeWidth:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 3

    .line 141
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->isDeleteButton:Z

    .line 136
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->circle:Landroid/graphics/Path;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->strikeBounds:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->linePaint:Landroid/graphics/Paint;

    .line 145
    sget v2, Lcom/amazon/kindle/krl/R$attr;->highlight_button_stroke_color:I

    invoke-static {v2, p2}, Lcom/amazon/android/util/UIUtils;->getThemedColor(ILandroid/content/Context;)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object p2, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    iget-object p2, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    iget-object p2, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->linePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    sget p2, Lcom/amazon/kindle/krl/R$dimen;->highlight_button_stroke_width:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->strikeWidth:I

    .line 152
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 153
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object p1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    iget-object p1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->fillPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    sget p1, Lcom/amazon/kindle/krl/R$dimen;->highlight_button_bounds_inset:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->boundsInset:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->circle:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 163
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->circle:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 165
    iget-boolean v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->isDeleteButton:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->strikeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 168
    iget-object v2, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->strikeBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/4 v4, 0x1

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v6

    aput v7, v1, v4

    const/4 v4, 0x2

    iget v7, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v7

    aput v8, v1, v4

    const/4 v4, 0x3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v2

    aput v8, v1, v4

    const/4 v4, 0x4

    int-to-float v7, v7

    aput v7, v1, v4

    const/4 v4, 0x5

    int-to-float v6, v6

    aput v6, v1, v4

    const/4 v4, 0x6

    int-to-float v3, v3

    aput v3, v1, v4

    const/4 v3, 0x7

    int-to-float v2, v2

    aput v2, v1, v3

    .line 170
    iget-object v2, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v0, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 171
    iget-object p1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->linePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    iget-object p1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->linePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
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

.method public setBounds(IIII)V
    .locals 5

    sub-int v0, p3, p1

    sub-int v1, p4, p2

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 184
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    sub-int/2addr v1, v0

    .line 188
    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    sub-int/2addr p4, v1

    .line 192
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->strikeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 194
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->circle:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 195
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->circle:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->strikeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->strikeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->strikeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 197
    iget-object v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->strikeBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->boundsInset:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method setDeleteButton(Z)V
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->isDeleteButton:Z

    if-eq v0, p1, :cond_0

    .line 225
    iput-boolean p1, p0, Lcom/amazon/android/widget/items/HighlightActionWidgetItem$HighlightDrawable;->isDeleteButton:Z

    .line 226
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
