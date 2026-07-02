.class public Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;
.super Ljava/lang/Object;
.source "HighlightDrawer.java"

# interfaces
.implements Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;


# instance fields
.field protected multiplyXfermode:Landroid/graphics/Xfermode;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;I)V
    .locals 2

    .line 73
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 74
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p4

    .line 80
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 84
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;ZI)V
    .locals 4

    .line 41
    invoke-virtual {p2}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    .line 42
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 43
    invoke-virtual {p2}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v2

    .line 44
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    if-nez p4, :cond_0

    .line 50
    iget-object p4, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->multiplyXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 54
    :cond_0
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p4, 0x1

    .line 55
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private initPaint()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->paint:Landroid/graphics/Paint;

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->setXfermode()V

    :cond_0
    return-void
.end method


# virtual methods
.method public drawHighlight(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZI)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->initPaint()V

    .line 22
    iget-object v2, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method public drawHighlight(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZII)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->initPaint()V

    .line 33
    iget-object v2, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;ZI)V

    if-eq p4, p5, :cond_1

    if-eqz p5, :cond_1

    .line 35
    iget-object p3, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p3, p2, p5}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;I)V

    :cond_1
    return-void
.end method

.method protected setXfermode()V
    .locals 2

    .line 96
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->multiplyXfermode:Landroid/graphics/Xfermode;

    return-void
.end method
