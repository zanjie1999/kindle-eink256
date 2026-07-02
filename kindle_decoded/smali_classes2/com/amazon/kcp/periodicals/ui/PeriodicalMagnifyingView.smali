.class public Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;
.super Landroid/widget/ImageView;
.source "PeriodicalMagnifyingView.java"


# static fields
.field private static final DEFAULT_MAGNIFICATION:F = 2.0f


# instance fields
.field private absoluteCenterPoint:Landroid/graphics/PointF;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private centerPoint:Landroid/graphics/PointF;

.field private magnification:F

.field private magnifiedView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

.field private magnifiedViewContentRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 26
    iput p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnification:F

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->bitmapPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public getMagnifiedCenterPoint()Landroid/graphics/PointF;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->absoluteCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 155
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnifiedView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 159
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->centerPoint:Landroid/graphics/PointF;

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnifiedView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnifiedView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->centerPoint:Landroid/graphics/PointF;

    .line 163
    new-instance v1, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnifiedView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnifiedView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->absoluteCenterPoint:Landroid/graphics/PointF;

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnification:F

    div-float/2addr v1, v3

    .line 168
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnification:F

    div-float/2addr v3, v4

    .line 169
    iget-object v4, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->centerPoint:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    div-float v6, v1, v2

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 170
    iget v4, v4, Landroid/graphics/PointF;->y:F

    div-float v2, v3, v2

    sub-float/2addr v4, v2

    float-to-int v2, v4

    .line 171
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v1, v1

    add-int/2addr v1, v5

    float-to-int v3, v3

    add-int/2addr v3, v2

    invoke-direct {v4, v5, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnifiedView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v4, v0, v2}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setMagnifiedCenterPoint(Landroid/graphics/PointF;)V
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->centerPoint:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 107
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->absoluteCenterPoint:Landroid/graphics/PointF;

    .line 108
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->centerPoint:Landroid/graphics/PointF;

    .line 120
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnification:F

    div-float/2addr p1, v0

    .line 121
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnification:F

    div-float/2addr v0, v1

    .line 123
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->centerPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    float-to-int p1, p1

    int-to-float p1, p1

    sub-float v4, v2, p1

    iget-object v5, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnifiedViewContentRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_0

    .line 125
    iput p1, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    add-float v4, v2, p1

    .line 127
    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    sub-float/2addr v5, v6

    sub-float/2addr v5, p1

    .line 129
    iput v5, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_1
    sub-float/2addr v2, v6

    .line 131
    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->centerPoint:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    sub-float v2, v1, v0

    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnifiedViewContentRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 136
    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_2
    add-float v2, v1, v0

    .line 138
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    sub-float/2addr v3, v4

    sub-float/2addr v3, v0

    .line 140
    iput v3, p1, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_3
    sub-float/2addr v1, v4

    .line 142
    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 145
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 147
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_4
    return-void
.end method

.method public setMagnifiedView(Lcom/amazon/android/docviewer/mobi/ReplicaView;Landroid/graphics/RectF;)V
    .locals 5

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnifiedView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 69
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 72
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnifiedViewContentRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 79
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;->magnifiedViewContentRect:Landroid/graphics/RectF;

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 83
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method
