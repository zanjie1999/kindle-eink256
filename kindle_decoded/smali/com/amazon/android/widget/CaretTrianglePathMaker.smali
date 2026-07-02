.class Lcom/amazon/android/widget/CaretTrianglePathMaker;
.super Ljava/lang/Object;
.source "CaretTrianglePathMaker.java"


# instance fields
.field private caretHeight:I

.field private caretPath:Landroid/graphics/Path;

.field private caretPointA:Landroid/graphics/Point;

.field private caretPointB:Landroid/graphics/Point;

.field private caretPointC:Landroid/graphics/Point;

.field private caretRect:Landroid/graphics/Rect;

.field private caretWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointA:Landroid/graphics/Point;

    .line 36
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointB:Landroid/graphics/Point;

    .line 37
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointC:Landroid/graphics/Point;

    .line 38
    iput p1, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretWidth:I

    .line 39
    iput p2, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretHeight:I

    .line 40
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPath:Landroid/graphics/Path;

    .line 41
    sget-object p2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretRect:Landroid/graphics/Rect;

    return-void
.end method

.method private createPath()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 50
    iget-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointA:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    iget-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointB:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    iget-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointC:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    iget-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointA:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 55
    invoke-direct {p0}, Lcom/amazon/android/widget/CaretTrianglePathMaker;->refreshCaretRect()V

    return-void
.end method

.method private getPaddingLeftRelativeToLine(IIII)I
    .locals 1

    sub-int/2addr p2, p1

    .line 140
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    .line 141
    iget p1, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretWidth:I

    div-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p2

    .line 142
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    if-le v0, p4, :cond_0

    sub-int/2addr v0, p4

    sub-int/2addr p2, v0

    :cond_0
    if-ge p2, p3, :cond_1

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    return p3
.end method

.method private refreshCaretRect()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointA:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 133
    iget-object v2, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointB:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 134
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointC:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    iget-object v3, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointA:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointC:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 136
    iget-object v4, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method createPathBottomAroundLine(IIIII)Landroid/graphics/Path;
    .locals 1

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/android/widget/CaretTrianglePathMaker;->getPaddingLeftRelativeToLine(IIII)I

    move-result p1

    .line 75
    iget-object p2, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointA:Landroid/graphics/Point;

    .line 76
    iget-object p3, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointB:Landroid/graphics/Point;

    .line 77
    iget-object p4, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointC:Landroid/graphics/Point;

    .line 79
    iget v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretHeight:I

    sub-int/2addr p5, v0

    invoke-virtual {p2, p1, p5}, Landroid/graphics/Point;->set(II)V

    .line 80
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p5, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretWidth:I

    add-int/2addr p1, p5

    iget p5, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, p1, p5}, Landroid/graphics/Point;->set(II)V

    .line 81
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p3, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretWidth:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p3, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretHeight:I

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 83
    invoke-direct {p0}, Lcom/amazon/android/widget/CaretTrianglePathMaker;->createPath()V

    .line 84
    iget-object p1, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPath:Landroid/graphics/Path;

    return-object p1
.end method

.method createPathTopAroundLine(IIII)Landroid/graphics/Path;
    .locals 1

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/android/widget/CaretTrianglePathMaker;->getPaddingLeftRelativeToLine(IIII)I

    move-result p1

    .line 103
    iget-object p2, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointA:Landroid/graphics/Point;

    .line 104
    iget-object p3, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointB:Landroid/graphics/Point;

    .line 105
    iget-object p4, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPointC:Landroid/graphics/Point;

    .line 107
    iget v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretHeight:I

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Point;->set(II)V

    .line 108
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretWidth:I

    add-int/2addr p1, v0

    iget v0, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, p1, v0}, Landroid/graphics/Point;->set(II)V

    .line 109
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p3, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretWidth:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p3, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretHeight:I

    sub-int/2addr p2, p3

    invoke-virtual {p4, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 111
    invoke-direct {p0}, Lcom/amazon/android/widget/CaretTrianglePathMaker;->createPath()V

    .line 112
    iget-object p1, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretPath:Landroid/graphics/Path;

    return-object p1
.end method

.method getCaretRect()Landroid/graphics/Rect;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method resetCaretRect()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/amazon/android/widget/CaretTrianglePathMaker;->caretRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
