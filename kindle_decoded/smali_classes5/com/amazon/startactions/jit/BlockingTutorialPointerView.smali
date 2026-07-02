.class public Lcom/amazon/startactions/jit/BlockingTutorialPointerView;
.super Landroid/view/View;
.source "BlockingTutorialPointerView.java"


# instance fields
.field private gravity:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {p2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 33
    iput p2, p0, Lcom/amazon/startactions/jit/BlockingTutorialPointerView;->gravity:I

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialPointerView;->paint:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialPointerView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Horizontal gravity isn\'t supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 49
    iget v1, p0, Lcom/amazon/startactions/jit/BlockingTutorialPointerView;->gravity:I

    and-int/lit8 v2, v1, 0x70

    const/4 v3, 0x0

    const/16 v4, 0x30

    if-ne v2, v4, :cond_0

    .line 50
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 60
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/startactions/jit/BlockingTutorialPointerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialPointerView;->gravity:I

    return-void
.end method
