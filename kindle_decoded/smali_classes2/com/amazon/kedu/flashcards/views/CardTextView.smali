.class public Lcom/amazon/kedu/flashcards/views/CardTextView;
.super Lcom/amazon/kedu/flashcards/views/ReaderContentTextView;
.source "CardTextView.java"


# instance fields
.field private maxTextSize:Ljava/lang/Float;

.field private minTextSize:Ljava/lang/Float;

.field private spacingAdd:F

.field private spacingMult:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/amazon/kedu/flashcards/views/CardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kedu/flashcards/views/CardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/views/CardTextView;->setAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/ReaderContentTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->maxTextSize:Ljava/lang/Float;

    .line 17
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->minTextSize:Ljava/lang/Float;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->spacingMult:F

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->spacingAdd:F

    .line 35
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/views/CardTextView;->setAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/R$styleable;->CardTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    :try_start_0
    sget v0, Lcom/amazon/kedu/flashcards/R$styleable;->CardTextView_minTextSize:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/CardTextView;->setMinTextSize(F)V

    .line 44
    sget v0, Lcom/amazon/kedu/flashcards/R$styleable;->CardTextView_maxTextSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/CardTextView;->setMaxTextSize(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    throw v0
.end method


# virtual methods
.method public getMaxTextSize()F
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->maxTextSize:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->minTextSize:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getSpacingAdd()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->spacingAdd:F

    return v0
.end method

.method public getSpacingMult()F
    .locals 1

    .line 67
    iget v0, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->spacingMult:F

    return v0
.end method

.method public resizeText(Ljava/lang/Float;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    iget p1, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->spacingAdd:F

    iget v0, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->spacingMult:F

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kedu/flashcards/views/CardTextView;->setLineSpacing(FF)V

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 56
    iput p2, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->spacingMult:F

    .line 57
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->spacingAdd:F

    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 83
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->maxTextSize:Ljava/lang/Float;

    :cond_0
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 100
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/CardTextView;->minTextSize:Ljava/lang/Float;

    :cond_0
    return-void
.end method
