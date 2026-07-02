.class public Lcom/amazon/kcp/reader/ui/MagnifyingView;
.super Landroid/widget/ImageView;
.source "MagnifyingView.java"


# static fields
.field private static final BITMAP_SIZE_SCALE:F = 2.0f

.field private static final DEFAULT_MAGNIFICATION:F = 1.2f


# instance fields
.field protected centerPoint:Landroid/graphics/PointF;

.field protected centerPositionPoint:Landroid/graphics/PointF;

.field protected drawableRect:Landroid/graphics/Rect;

.field protected magnification:F

.field protected magnifiedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3f99999a    # 1.2f

    .line 37
    iput p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    .line 54
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->drawableRect:Landroid/graphics/Rect;

    .line 55
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected disposeImageBitmap()V
    .locals 1

    .line 177
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public getMagnification()F
    .locals 1

    .line 230
    iget v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    return v0
.end method

.method public getMagnifiedCenterPoint()Landroid/graphics/PointF;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMagnifiedCenterPositionPoint()Landroid/graphics/PointF;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPositionPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMagnifiedView()Landroid/view/View;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    return-object v0
.end method

.method protected magnifiedVisibleAreaChanged(Z)V
    .locals 10

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->disposeImageBitmap()V

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    div-float/2addr v0, v2

    .line 122
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    div-float/2addr v2, v3

    .line 123
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v0, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 124
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v2, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 126
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 127
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 128
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    float-to-int v8, v3

    if-ne v7, v8, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    float-to-int v8, v5

    if-eq v7, v8, :cond_3

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->disposeImageBitmap()V

    goto :goto_0

    :cond_3
    move-object v1, v6

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    float-to-int p1, v3

    float-to-int v1, v5

    .line 134
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 p1, 0x1

    .line 139
    :cond_5
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPoint:Landroid/graphics/PointF;

    if-nez v6, :cond_6

    .line 141
    new-instance v6, Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    iget-object v8, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 143
    :cond_6
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPositionPoint:Landroid/graphics/PointF;

    if-nez v7, :cond_7

    .line 144
    iput-object v6, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPositionPoint:Landroid/graphics/PointF;

    .line 147
    :cond_7
    iget v7, v6, Landroid/graphics/PointF;->x:F

    div-float v8, v0, v4

    sub-float/2addr v7, v8

    float-to-int v7, v7

    .line 148
    iget v8, v6, Landroid/graphics/PointF;->y:F

    div-float v9, v2, v4

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 149
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v0, v0

    add-int/2addr v0, v7

    float-to-int v2, v2

    add-int/2addr v2, v8

    invoke-direct {v9, v7, v8, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p1, :cond_8

    .line 152
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->drawableRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 153
    :cond_8
    iget p1, v6, Landroid/graphics/PointF;->x:F

    div-float v0, v3, v4

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 154
    iget v0, v6, Landroid/graphics/PointF;->y:F

    div-float v2, v5, v4

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 155
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, v3

    add-int/2addr v3, p1

    float-to-int v4, v5

    add-int/2addr v4, v0

    invoke-direct {v2, p1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->drawableRect:Landroid/graphics/Rect;

    .line 158
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int p1, p1

    int-to-float p1, p1

    neg-int v0, v0

    int-to-float v0, v0

    .line 159
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 160
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    :cond_9
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 168
    iget v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->drawableRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    mul-float v1, v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v8

    int-to-float v0, v0

    mul-float v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 170
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void

    :cond_a
    :goto_1
    if-eqz p1, :cond_b

    .line 113
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->drawableRect:Landroid/graphics/Rect;

    :cond_b
    return-void
.end method

.method public onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 75
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    :cond_0
    return-void
.end method

.method public setMagnification(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    .line 241
    iget v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 242
    iput p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    const/4 p1, 0x1

    .line 243
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    :cond_0
    return-void

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnification level ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ") must be greater than 0."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMagnifiedCenterPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPoint:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPoint:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 203
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    :cond_0
    return-void
.end method

.method public setMagnifiedCenterPositionPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPositionPoint:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPositionPoint:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public setMagnifiedView(Landroid/view/View;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 93
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    if-eq p1, p2, :cond_0

    .line 94
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    const/4 p1, 0x1

    .line 95
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 249
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 251
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->disposeImageBitmap()V

    :goto_0
    return-void
.end method

.method public shouldListenToObjectSelectionModelEvents(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
