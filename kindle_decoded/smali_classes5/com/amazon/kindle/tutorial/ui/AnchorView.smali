.class public Lcom/amazon/kindle/tutorial/ui/AnchorView;
.super Landroid/view/View;
.source "AnchorView.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private rectAnchor:Landroid/graphics/Rect;

.field private rectLocation:Landroid/graphics/Rect;

.field private transparentPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->rectLocation:Landroid/graphics/Rect;

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->rectAnchor:Landroid/graphics/Rect;

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ui/AnchorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->rectLocation:Landroid/graphics/Rect;

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->rectAnchor:Landroid/graphics/Rect;

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ui/AnchorView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->paint:Landroid/graphics/Paint;

    .line 82
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->tutorial_transparent_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->transparentPaint:Landroid/graphics/Paint;

    .line 86
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->transparentPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->rectLocation:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->transparentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->rectAnchor:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->transparentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRectAnchor(Landroid/graphics/Rect;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->rectAnchor:Landroid/graphics/Rect;

    return-void
.end method

.method public setRectLocation(Landroid/graphics/Rect;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/AnchorView;->rectLocation:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
