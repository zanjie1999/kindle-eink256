.class public Lcom/amazon/android/docviewer/grid/GridPositionRange;
.super Ljava/lang/Object;
.source "GridPositionRange.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IPositionRange;


# instance fields
.field private final area:Landroid/graphics/Rect;

.field private final end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final endPageIndex:I

.field private final start:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final startPageIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->getGridPositionFromPosition(I)Lcom/amazon/android/docviewer/grid/GridPosition;

    move-result-object p1

    .line 25
    invoke-static {p2}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->getGridPositionFromPosition(I)Lcom/amazon/android/docviewer/grid/GridPosition;

    move-result-object p2

    .line 26
    iput-object p1, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 27
    iput-object p2, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/grid/GridPosition;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/grid/GridPosition;->getY()I

    move-result v2

    .line 29
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/grid/GridPosition;->getX()I

    move-result v3

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/grid/GridPosition;->getY()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->area:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Rect;->sort()V

    .line 31
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/grid/GridPosition;->getPageIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->startPageIndex:I

    .line 32
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/grid/GridPosition;->getPageIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->endPageIndex:I

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->area:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->sort()V

    .line 38
    iput p1, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->startPageIndex:I

    .line 39
    iput p1, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->endPageIndex:I

    .line 40
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->getBeginPoint()Landroid/graphics/Point;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->getPositionFromPoint(ILandroid/graphics/Point;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 41
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->getEndPoint()Landroid/graphics/Point;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->getPositionFromPoint(ILandroid/graphics/Point;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method public static contains(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 186
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getGridPositionFromPosition(I)Lcom/amazon/android/docviewer/grid/GridPosition;
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->createGridPositionFromPosition(I)Lcom/amazon/android/docviewer/grid/GridPosition;

    move-result-object p0

    return-object p0
.end method

.method private getPositionFromPoint(ILandroid/graphics/Point;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 95
    new-instance v0, Lcom/amazon/android/docviewer/grid/GridPosition;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, p1, v1, p2}, Lcom/amazon/android/docviewer/grid/GridPosition;-><init>(III)V

    return-object v0
.end method

.method private static intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 173
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDistinctPages(Lcom/amazon/android/docviewer/grid/GridPositionRange;)Z
    .locals 1

    .line 161
    iget v0, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->startPageIndex:I

    iget p0, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->endPageIndex:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public contains(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 3

    .line 56
    instance-of v0, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 57
    check-cast p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;

    .line 59
    invoke-static {p0}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->isDistinctPages(Lcom/amazon/android/docviewer/grid/GridPositionRange;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->isDistinctPages(Lcom/amazon/android/docviewer/grid/GridPositionRange;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->startPageIndex:I

    iget v2, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;->startPageIndex:I

    if-ne v0, v2, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->contains(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 60
    :cond_2
    :goto_0
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    iget v1, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->startPageIndex:I

    iget v2, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->endPageIndex:I

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 61
    new-instance v1, Lcom/amazon/android/docviewer/IntPositionRange;

    iget v2, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;->startPageIndex:I

    iget p1, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;->endPageIndex:I

    invoke-direct {v1, v2, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/IntPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 128
    const-class v2, Lcom/amazon/android/docviewer/grid/GridPositionRange;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 132
    :cond_1
    check-cast p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;

    .line 134
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_4

    return v1

    .line 138
    :cond_4
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_7

    return v1

    .line 142
    :cond_7
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    iget-object v3, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    if-eq v2, v3, :cond_8

    return v1

    .line 146
    :cond_8
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    iget-object p1, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-eq v2, p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_4
    return v1
.end method

.method public getBeginPoint()Landroid/graphics/Point;
    .locals 3

    .line 116
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->area:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public getEndPoint()Landroid/graphics/Point;
    .locals 3

    .line 120
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->area:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 2

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->area:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getStart()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public overlaps(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 3

    .line 74
    instance-of v0, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 75
    check-cast p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;

    .line 77
    invoke-static {p0}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->isDistinctPages(Lcom/amazon/android/docviewer/grid/GridPositionRange;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->isDistinctPages(Lcom/amazon/android/docviewer/grid/GridPositionRange;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->startPageIndex:I

    iget v2, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;->startPageIndex:I

    if-ne v0, v2, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/android/docviewer/grid/GridPositionRange;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 78
    :cond_2
    :goto_0
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    iget v1, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->startPageIndex:I

    iget v2, p0, Lcom/amazon/android/docviewer/grid/GridPositionRange;->endPageIndex:I

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 79
    new-instance v1, Lcom/amazon/android/docviewer/IntPositionRange;

    iget v2, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;->startPageIndex:I

    iget p1, p1, Lcom/amazon/android/docviewer/grid/GridPositionRange;->endPageIndex:I

    invoke-direct {v1, v2, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/IntPositionRange;->overlaps(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method
