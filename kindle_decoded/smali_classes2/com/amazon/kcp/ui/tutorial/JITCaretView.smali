.class public Lcom/amazon/kcp/ui/tutorial/JITCaretView;
.super Landroid/view/View;
.source "JITCaretView.java"


# static fields
.field private static final VERTICES:I = 0x3


# instance fields
.field private m_bisectorLength:I

.field private m_caretMargin:I

.field private m_paint:Landroid/graphics/Paint;

.field private m_path:Landroid/graphics/Path;

.field private m_perpendicularHalf:I

.field private m_points:[Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 185
    iput-object v1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_path:Landroid/graphics/Path;

    .line 186
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 189
    sget v3, Lcom/amazon/kindle/krl/R$attr;->utm_tutorial_background:I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 191
    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 192
    iget-object v3, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v2, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    iget-object v2, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/graphics/Point;

    .line 196
    iput-object v2, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_points:[Landroid/graphics/Point;

    :goto_0
    if-ge v4, v1, :cond_0

    .line 198
    iget-object v2, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_points:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    :cond_0
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->tutorial_jit_caret_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_caretMargin:I

    .line 202
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->tutorial_jit_caret_bisector_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_bisectorLength:I

    .line 203
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->tutorial_hit_caret_perpendicular_half:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_perpendicularHalf:I

    return-void
.end method

.method private setupPath()V
    .locals 4

    .line 210
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_path:Landroid/graphics/Path;

    .line 213
    iget-object v1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_points:[Landroid/graphics/Point;

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

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_points:[Landroid/graphics/Point;

    aget-object v3, v1, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public clearPath()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_path:Landroid/graphics/Path;

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_path:Landroid/graphics/Path;

    return-object v0
.end method

.method public getVertices()[Landroid/graphics/Point;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_points:[Landroid/graphics/Point;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_path:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setVertices(Landroid/graphics/Rect;Lcom/amazon/kindle/krx/tutorial/Orientation;)V
    .locals 6

    .line 81
    sget-object v0, Lcom/amazon/kcp/ui/tutorial/JITCaretView$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$Orientation:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v1, :cond_3

    if-eq p2, v2, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    goto/16 :goto_0

    .line 132
    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v3

    div-int/2addr p2, v2

    .line 133
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 135
    iget-object v3, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_points:[Landroid/graphics/Point;

    aget-object v4, v3, v0

    iput p2, v4, Landroid/graphics/Point;->x:I

    .line 136
    aget-object v0, v3, v0

    iget v4, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_caretMargin:I

    sub-int v4, p1, v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 138
    aget-object v0, v3, v1

    iget v4, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_perpendicularHalf:I

    sub-int v5, p2, v4

    iput v5, v0, Landroid/graphics/Point;->x:I

    .line 139
    aget-object v0, v3, v1

    iget v1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_bisectorLength:I

    sub-int v5, p1, v1

    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 141
    aget-object v0, v3, v2

    add-int/2addr p2, v4

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 142
    aget-object p2, v3, v2

    sub-int/2addr p1, v1

    iput p1, p2, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 116
    :cond_1
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v3

    div-int/2addr p2, v2

    .line 117
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 119
    iget-object v3, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_points:[Landroid/graphics/Point;

    aget-object v4, v3, v0

    iput p2, v4, Landroid/graphics/Point;->x:I

    .line 120
    aget-object v0, v3, v0

    iget v4, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_caretMargin:I

    add-int/2addr v4, p1

    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 122
    aget-object v0, v3, v1

    iget v4, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_perpendicularHalf:I

    sub-int v5, p2, v4

    iput v5, v0, Landroid/graphics/Point;->x:I

    .line 123
    aget-object v0, v3, v1

    iget v1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_bisectorLength:I

    add-int v5, p1, v1

    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 125
    aget-object v0, v3, v2

    add-int/2addr p2, v4

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 126
    aget-object p2, v3, v2

    add-int/2addr p1, v1

    iput p1, p2, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 100
    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 101
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    div-int/2addr v3, v2

    .line 103
    iget-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_points:[Landroid/graphics/Point;

    aget-object v4, p1, v0

    iget v5, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_caretMargin:I

    sub-int v5, p2, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 104
    aget-object v0, p1, v0

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 106
    aget-object v0, p1, v1

    iget v4, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_bisectorLength:I

    sub-int v5, p2, v4

    iput v5, v0, Landroid/graphics/Point;->x:I

    .line 107
    aget-object v0, p1, v1

    iget v1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_perpendicularHalf:I

    sub-int v5, v3, v1

    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 109
    aget-object v0, p1, v2

    sub-int/2addr p2, v4

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 110
    aget-object p1, p1, v2

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 84
    :cond_3
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 85
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    div-int/2addr v3, v2

    .line 87
    iget-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_points:[Landroid/graphics/Point;

    aget-object v4, p1, v0

    iget v5, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_caretMargin:I

    add-int/2addr v5, p2

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 88
    aget-object v0, p1, v0

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 90
    aget-object v0, p1, v1

    iget v4, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_bisectorLength:I

    add-int v5, p2, v4

    iput v5, v0, Landroid/graphics/Point;->x:I

    .line 91
    aget-object v0, p1, v1

    iget v1, p0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->m_perpendicularHalf:I

    sub-int v5, v3, v1

    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 93
    aget-object v0, p1, v2

    add-int/2addr p2, v4

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 94
    aget-object p1, p1, v2

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 147
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->setupPath()V

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
