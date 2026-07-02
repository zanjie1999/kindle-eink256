.class Lcom/amazon/android/widget/ReversiblePagingCaretView;
.super Landroid/view/View;
.source "ReversiblePagingCaretView.java"


# static fields
.field private static final BOUNDS_INSET_FACTOR:F = 0.38f


# instance fields
.field private centerPoint:Landroid/graphics/Point;

.field private maxBounds:I

.field private minBounds:I

.field private path:Landroid/graphics/Path;

.field private progress:F

.field private strikeBounds:Landroid/graphics/Rect;

.field private strikePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->progress:F

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikeBounds:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->centerPoint:Landroid/graphics/Point;

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->path:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->minBounds:I

    .line 39
    iput v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->maxBounds:I

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->progress:F

    .line 33
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikeBounds:Landroid/graphics/Rect;

    .line 34
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->centerPoint:Landroid/graphics/Point;

    .line 36
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->path:Landroid/graphics/Path;

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->minBounds:I

    .line 39
    iput p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->maxBounds:I

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->progress:F

    .line 33
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikeBounds:Landroid/graphics/Rect;

    .line 34
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->centerPoint:Landroid/graphics/Point;

    .line 36
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->path:Landroid/graphics/Path;

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->minBounds:I

    .line 39
    iput p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->maxBounds:I

    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->progress:F

    .line 33
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikeBounds:Landroid/graphics/Rect;

    .line 34
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->centerPoint:Landroid/graphics/Point;

    .line 36
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->path:Landroid/graphics/Path;

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->minBounds:I

    .line 39
    iput p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->maxBounds:I

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    sget v1, Lcom/amazon/kindle/wl/R$color;->paging_button_caret_color:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikePaint:Landroid/graphics/Paint;

    sget v1, Lcom/amazon/kindle/wl/R$dimen;->paging_widget_page_caret_stroke_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    invoke-direct {p0}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->updateContentDescription()V

    return-void
.end method

.method private interpolate(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method private updateContentDescription()V
    .locals 3

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    if-ne v0, v1, :cond_2

    .line 146
    iget v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->progress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    sget v0, Lcom/amazon/kindle/wl/R$string;->back_button_content_description:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/amazon/kindle/wl/R$string;->next_button_content_description:I

    goto :goto_0

    .line 149
    :cond_2
    iget v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->progress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    sget v0, Lcom/amazon/kindle/wl/R$string;->next_button_content_description:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/amazon/kindle/wl/R$string;->back_button_content_description:I

    .line 153
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    .line 154
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updatePath()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikeBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->progress:F

    invoke-direct {p0, v1, v0, v2}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->interpolate(FFF)F

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->centerPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 164
    iget-object v2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 166
    iget-object v2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->path:Landroid/graphics/Path;

    add-float/2addr v0, v1

    iget-object v3, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikeBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 167
    iget-object v2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->centerPoint:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v1, v3, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    iget-object v1, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikeBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 206
    const-class v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 180
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 183
    iget-object p1, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq p5, p1, :cond_1

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikeBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    iget-object p1, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikeBounds:Landroid/graphics/Rect;

    int-to-float p2, p4

    const p3, 0x3ec28f5c    # 0.38f

    mul-float p2, p2, p3

    float-to-int p2, p2

    int-to-float v0, p5

    mul-float v0, v0, p3

    float-to-int p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 186
    iget-object p1, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->centerPoint:Landroid/graphics/Point;

    div-int/lit8 p4, p4, 0x2

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Point;->set(II)V

    .line 187
    invoke-direct {p0}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->updatePath()V

    :cond_1
    return-void
.end method

.method public setCaretColor(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->strikePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 10

    .line 120
    iget v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->progress:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    float-to-double v3, p1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_1

    .line 121
    iget v7, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->progress:F

    float-to-double v7, v7

    cmpl-double v9, v7, v5

    if-gez v9, :cond_3

    :cond_1
    cmpl-double v7, v3, v5

    if-ltz v7, :cond_2

    iget v3, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->progress:F

    float-to-double v3, v3

    cmpg-double v7, v3, v5

    if-gez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 124
    :cond_4
    iput p1, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->progress:F

    .line 125
    invoke-direct {p0}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->updatePath()V

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v1, :cond_5

    .line 129
    invoke-direct {p0}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->updateContentDescription()V

    :cond_5
    return-void
.end method

.method setScrollBounds(II)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->minBounds:I

    .line 94
    iput p2, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->maxBounds:I

    return-void
.end method

.method setXScrollOffset(I)V
    .locals 2

    .line 103
    iget v0, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->maxBounds:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/amazon/android/widget/ReversiblePagingCaretView;->minBounds:I

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 106
    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->setProgress(F)V

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v1

    int-to-float p1, p1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 108
    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->setProgress(F)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/ReversiblePagingCaretView;->setProgress(F)V

    :goto_1
    return-void
.end method
