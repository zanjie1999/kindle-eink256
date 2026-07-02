.class public Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;
.super Ljava/lang/Object;
.source "DashedLineDrawer.java"

# interfaces
.implements Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private underlineDashWidths:F

.field private underlineSpaceWidths:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    sget v2, Lcom/amazon/kindle/krxsdk/R$dimen;->line_decoration_horizontal_dash_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->underlineDashWidths:F

    .line 57
    sget v2, Lcom/amazon/kindle/krxsdk/R$dimen;->line_decoration_horizontal_space_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->underlineSpaceWidths:F

    .line 58
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->underlineDashWidths:F

    aput v4, v2, v3

    iget v3, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->underlineSpaceWidths:F

    aput v3, v2, v1

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 59
    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->path:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->path:Landroid/graphics/Path;

    :cond_1
    return-void
.end method


# virtual methods
.method public drawLine(Landroid/graphics/Canvas;IIIII)V
    .locals 4

    .line 21
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->init()V

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 24
    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    .line 28
    iget p6, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->underlineDashWidths:F

    iget v1, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->underlineSpaceWidths:F

    add-float v2, p6, v1

    rem-float v2, p2, v2

    float-to-int v2, v2

    int-to-float v2, v2

    cmpg-float v3, v2, p6

    if-gtz v3, :cond_0

    add-float/2addr p6, p2

    sub-float/2addr p6, v2

    int-to-float v1, p4

    .line 30
    invoke-static {p6, v1}, Ljava/lang/Math;->min(FF)F

    move-result p6

    float-to-int p6, p6

    .line 31
    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 32
    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->path:Landroid/graphics/Path;

    int-to-float v2, p3

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 33
    iget-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->path:Landroid/graphics/Path;

    int-to-float p6, p6

    int-to-float v1, p5

    invoke-virtual {p2, p6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    iget-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 35
    iget p2, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->underlineSpaceWidths:F

    add-float/2addr p6, p2

    float-to-int p2, p6

    goto :goto_0

    :cond_0
    add-float/2addr p2, p6

    add-float/2addr p2, v1

    sub-float/2addr p2, v2

    float-to-int p2, p2

    .line 40
    :goto_0
    iget-object p6, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->path:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    .line 41
    iget-object p6, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->path:Landroid/graphics/Path;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p6, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 42
    iget-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->path:Landroid/graphics/Path;

    int-to-float p3, p4

    int-to-float p4, p5

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    iget-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 45
    iget-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
