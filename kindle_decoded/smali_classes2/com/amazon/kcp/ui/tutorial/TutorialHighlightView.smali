.class public Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;
.super Landroid/view/View;
.source "TutorialHighlightView.java"


# instance fields
.field private m_highlightRect:Landroid/graphics/Rect;

.field private m_paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->m_highlightRect:Landroid/graphics/Rect;

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->m_highlightRect:Landroid/graphics/Rect;

    .line 36
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->m_highlightRect:Landroid/graphics/Rect;

    .line 41
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->m_highlightRect:Landroid/graphics/Rect;

    .line 46
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->m_paint:Landroid/graphics/Paint;

    .line 72
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->semi_transparent_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->semi_transparent_background:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->m_highlightRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 62
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->m_paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setHighlightRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->m_highlightRect:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
