.class public Lcom/amazon/kcp/library/ui/DotsProgressBar;
.super Landroid/view/View;
.source "DotsProgressBar.java"


# static fields
.field private static final FILE_SIZE_UPBOUND:I = 0x1e8480

.field private static final MAX_DOTS_NUMBER:I = 0x23

.field private static final MIN_DOTS_NUMBER:I = 0x3


# instance fields
.field private barHeight:I

.field private dotsActive:I

.field private dotsColor:I

.field private dotsNumber:I

.field private dotsSpacing:I

.field private emptyDotsDiameter:I

.field private filledDotsDiameter:I

.field private progressDots:Landroid/graphics/Paint;

.field private readingProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsNumber:I

    .line 24
    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsActive:I

    .line 30
    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->readingProgress:I

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/ui/DotsProgressBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsNumber:I

    .line 24
    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsActive:I

    .line 30
    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->readingProgress:I

    .line 40
    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/library/ui/DotsProgressBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsNumber:I

    .line 24
    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsActive:I

    .line 30
    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->readingProgress:I

    .line 45
    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/library/ui/DotsProgressBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/librarymodule/R$styleable;->DotsProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    sget p2, Lcom/amazon/kindle/librarymodule/R$styleable;->DotsProgressBar_filledDotsDiameter:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->filledDotsDiameter:I

    .line 53
    sget p2, Lcom/amazon/kindle/librarymodule/R$styleable;->DotsProgressBar_emptyDotsDiameter:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->emptyDotsDiameter:I

    .line 54
    sget p2, Lcom/amazon/kindle/librarymodule/R$styleable;->DotsProgressBar_horizontalSpacing:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsSpacing:I

    .line 55
    sget p2, Lcom/amazon/kindle/librarymodule/R$styleable;->DotsProgressBar_dotsColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsColor:I

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/librarymodule/R$dimen;->progressbar_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->barHeight:I

    .line 58
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->progressDots:Landroid/graphics/Paint;

    .line 59
    iget v0, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDotsNumber()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsNumber:I

    return v0
.end method

.method public getReadingProgress()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->readingProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget v0, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsNumber:I

    if-eqz v0, :cond_2

    .line 70
    iget v0, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsActive:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->filledDotsDiameter:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->emptyDotsDiameter:I

    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 74
    :goto_1
    iget v5, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsActive:I

    if-gt v4, v5, :cond_1

    .line 75
    iget v5, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->filledDotsDiameter:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    iget-object v6, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->progressDots:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    iget v5, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsSpacing:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v5, v3

    .line 79
    :goto_2
    iget v3, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsNumber:I

    if-gt v5, v3, :cond_2

    .line 80
    iget v3, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->emptyDotsDiameter:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->progressDots:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    iget v3, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsSpacing:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 89
    iget p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsSpacing:I

    iget p2, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsNumber:I

    mul-int p1, p1, p2

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p2

    if-ge p1, p2, :cond_0

    move p1, p2

    .line 93
    :cond_0
    iget p2, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->barHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 95
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setReadingProgress(I)V
    .locals 6

    .line 126
    iget v0, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->readingProgress:I

    if-ne v0, p1, :cond_0

    return-void

    .line 130
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->readingProgress:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 132
    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsActive:I

    goto :goto_0

    :cond_1
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 134
    iget v2, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsNumber:I

    mul-int v2, v2, p1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    add-double/2addr v2, v0

    double-to-int p1, v2

    iput p1, p0, Lcom/amazon/kcp/library/ui/DotsProgressBar;->dotsActive:I

    .line 136
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
