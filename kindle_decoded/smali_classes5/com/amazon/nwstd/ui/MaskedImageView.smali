.class public Lcom/amazon/nwstd/ui/MaskedImageView;
.super Landroid/widget/ImageView;
.source "MaskedImageView.java"


# instance fields
.field private mIsEnabled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/ui/MaskedImageView;->mPaint:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/ui/MaskedImageView;->mRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/amazon/nwstd/ui/MaskedImageView;->mIsEnabled:Z

    .line 30
    iget-object p1, p0, Lcom/amazon/nwstd/ui/MaskedImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/newsstand/core/R$color;->black_gradient_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/MaskedImageView;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/amazon/nwstd/ui/MaskedImageView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 49
    iget-object v0, p0, Lcom/amazon/nwstd/ui/MaskedImageView;->mRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 50
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 51
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 52
    iget-object v0, p0, Lcom/amazon/nwstd/ui/MaskedImageView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/nwstd/ui/MaskedImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 37
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/MaskedImageView;->mIsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 38
    iput-boolean p1, p0, Lcom/amazon/nwstd/ui/MaskedImageView;->mIsEnabled:Z

    .line 40
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method
