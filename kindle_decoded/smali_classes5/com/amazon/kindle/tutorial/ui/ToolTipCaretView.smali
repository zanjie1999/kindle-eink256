.class public Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;
.super Landroid/view/View;
.source "ToolTipCaretView.java"


# static fields
.field private static final VERTICES:I = 0x3


# instance fields
.field private bisectorLength:I

.field private caretMargin:I

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private perpendicularHalf:I

.field private points:[Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/Point;

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->points:[Landroid/graphics/Point;

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/Point;

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->points:[Landroid/graphics/Point;

    .line 57
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->path:Landroid/graphics/Path;

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 198
    sget v2, Lcom/amazon/kindle/krl/R$attr;->utm_tutorial_background:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 200
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 201
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Point;

    .line 204
    iput-object v1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->points:[Landroid/graphics/Point;

    :goto_0
    if-ge v3, v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->points:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->caret_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->caretMargin:I

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->caret_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->bisectorLength:I

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->caret_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->perpendicularHalf:I

    return-void
.end method

.method private setupPath()V
    .locals 4

    .line 217
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->path:Landroid/graphics/Path;

    .line 220
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->points:[Landroid/graphics/Point;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->points:[Landroid/graphics/Point;

    aget-object v3, v1, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public clearPath()V
    .locals 1

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->path:Landroid/graphics/Path;

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public getVertices()[Landroid/graphics/Point;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->points:[Landroid/graphics/Point;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/amazon/kindle/krx/tutorial/Orientation;)V
    .locals 5

    .line 74
    sget-object v0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$Orientation:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p3, v1, :cond_6

    if-eq p3, v2, :cond_4

    const/4 v3, 0x3

    if-eq p3, v3, :cond_2

    const/4 v3, 0x4

    if-eq p3, v3, :cond_0

    goto/16 :goto_4

    .line 140
    :cond_0
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v3

    div-int/2addr p3, v2

    .line 141
    iget v3, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->caretMargin:I

    neg-int v3, v3

    if-nez p2, :cond_1

    .line 143
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 145
    :cond_1
    iget p1, p2, Landroid/graphics/Rect;->top:I

    :goto_0
    add-int/2addr v3, p1

    .line 148
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->points:[Landroid/graphics/Point;

    aget-object p2, p1, v0

    iput p3, p2, Landroid/graphics/Point;->x:I

    .line 149
    aget-object p2, p1, v0

    iput v3, p2, Landroid/graphics/Point;->y:I

    .line 151
    aget-object p2, p1, v1

    iget v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->perpendicularHalf:I

    sub-int v4, p3, v0

    iput v4, p2, Landroid/graphics/Point;->x:I

    .line 152
    aget-object p2, p1, v1

    iget v1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->bisectorLength:I

    sub-int v4, v3, v1

    iput v4, p2, Landroid/graphics/Point;->y:I

    .line 154
    aget-object p2, p1, v2

    add-int/2addr p3, v0

    iput p3, p2, Landroid/graphics/Point;->x:I

    .line 155
    aget-object p1, p1, v2

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto/16 :goto_4

    .line 119
    :cond_2
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v3

    div-int/2addr p3, v2

    .line 120
    iget v3, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->caretMargin:I

    if-nez p2, :cond_3

    .line 122
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 124
    :cond_3
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    :goto_1
    add-int/2addr v3, p1

    .line 127
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->points:[Landroid/graphics/Point;

    aget-object p2, p1, v0

    iput p3, p2, Landroid/graphics/Point;->x:I

    .line 128
    aget-object p2, p1, v0

    iput v3, p2, Landroid/graphics/Point;->y:I

    .line 130
    aget-object p2, p1, v1

    iget v0, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->perpendicularHalf:I

    sub-int v4, p3, v0

    iput v4, p2, Landroid/graphics/Point;->x:I

    .line 131
    aget-object p2, p1, v1

    iget v1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->bisectorLength:I

    add-int v4, v3, v1

    iput v4, p2, Landroid/graphics/Point;->y:I

    .line 133
    aget-object p2, p1, v2

    add-int/2addr p3, v0

    iput p3, p2, Landroid/graphics/Point;->x:I

    .line 134
    aget-object p1, p1, v2

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_4

    .line 98
    :cond_4
    iget p3, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->caretMargin:I

    neg-int p3, p3

    if-nez p2, :cond_5

    .line 100
    iget p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 102
    :cond_5
    iget p2, p2, Landroid/graphics/Rect;->left:I

    :goto_2
    add-int/2addr p3, p2

    .line 104
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p1

    div-int/2addr p2, v2

    .line 106
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->points:[Landroid/graphics/Point;

    aget-object v3, p1, v0

    iput p3, v3, Landroid/graphics/Point;->x:I

    .line 107
    aget-object v0, p1, v0

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 109
    aget-object v0, p1, v1

    iget v3, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->bisectorLength:I

    sub-int v4, p3, v3

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 110
    aget-object v0, p1, v1

    iget v1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->perpendicularHalf:I

    sub-int v4, p2, v1

    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 112
    aget-object v0, p1, v2

    sub-int/2addr p3, v3

    iput p3, v0, Landroid/graphics/Point;->x:I

    .line 113
    aget-object p1, p1, v2

    add-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_4

    .line 77
    :cond_6
    iget p3, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->caretMargin:I

    if-nez p2, :cond_7

    .line 79
    iget p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 81
    :cond_7
    iget p2, p2, Landroid/graphics/Rect;->right:I

    :goto_3
    add-int/2addr p3, p2

    .line 83
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p1

    div-int/2addr p2, v2

    .line 85
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->points:[Landroid/graphics/Point;

    aget-object v3, p1, v0

    iput p3, v3, Landroid/graphics/Point;->x:I

    .line 86
    aget-object v0, p1, v0

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 88
    aget-object v0, p1, v1

    iget v3, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->bisectorLength:I

    add-int v4, p3, v3

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 89
    aget-object v0, p1, v1

    iget v1, p0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->perpendicularHalf:I

    sub-int v4, p2, v1

    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 91
    aget-object v0, p1, v2

    add-int/2addr p3, v3

    iput p3, v0, Landroid/graphics/Point;->x:I

    .line 92
    aget-object p1, p1, v2

    add-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 160
    :goto_4
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->setupPath()V

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
