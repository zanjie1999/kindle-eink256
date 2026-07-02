.class public Lcom/amazon/kcp/reader/ui/MobiMagnifyingView;
.super Lcom/amazon/kcp/reader/ui/MagnifyingView;
.source "MobiMagnifyingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/MobiMagnifyingView$MagnifiedDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private magnifiedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/MagnifyingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected disposeImageBitmap()V
    .locals 1

    .line 79
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected magnifiedVisibleAreaChanged(Z)V
    .locals 0

    .line 73
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 152
    iget v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->drawableRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 156
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 126
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 128
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    .line 136
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    .line 138
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPoint:Landroid/graphics/PointF;

    const/high16 p4, 0x40000000    # 2.0f

    if-nez p3, :cond_1

    .line 140
    new-instance p3, Landroid/graphics/PointF;

    iget-object p5, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, p4

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p4

    invoke-direct {p3, p5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 143
    :cond_1
    iget p5, p3, Landroid/graphics/PointF;->x:F

    div-float v0, p1, p4

    sub-float/2addr p5, v0

    float-to-int p5, p5

    .line 144
    iget p3, p3, Landroid/graphics/PointF;->y:F

    div-float p4, p2, p4

    sub-float/2addr p3, p4

    float-to-int p3, p3

    .line 145
    iget-object p4, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->drawableRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    add-int/2addr p1, p5

    float-to-int p2, p2

    add-int/2addr p2, p3

    invoke-virtual {p4, p5, p3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setMagnification(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    .line 105
    iget v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 106
    iput p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    .line 107
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-void

    .line 103
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

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPoint:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPoint:Landroid/graphics/PointF;

    .line 93
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMagnifiedView(Landroid/view/View;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 1

    .line 52
    instance-of v0, p1, Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    .line 57
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 58
    iget-object v0, p2, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView$MagnifiedDrawable;

    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiView;

    iget-object p2, p2, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView$MagnifiedDrawable;-><init>(Lcom/amazon/android/docviewer/mobi/MobiView;Lcom/amazon/kcp/reader/ui/SelectionDrawable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView;->magnifiedDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView;->TAG:Ljava/lang/String;

    const-string p2, "selectionDrawable is null, setMagnifiedView cannot be handled in this state"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View set on MobiMagnifyingView must be an instance of MobiView"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisibility(I)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView;->magnifiedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
