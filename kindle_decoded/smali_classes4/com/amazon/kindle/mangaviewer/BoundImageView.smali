.class public Lcom/amazon/kindle/mangaviewer/BoundImageView;
.super Landroid/widget/ImageView;
.source "BoundImageView.java"


# static fields
.field private static final MATRIX_SIZE:I = 0x9

.field private static final MAX_SCALE:F = 2.5f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animAlpha:I

.field private animData:Z

.field private animDataAlpha:Z

.field private animScale:F

.field private animX:F

.field private animY:F

.field private minScale:F

.field private orientation:I

.field private viewToImageRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kindle/mangaviewer/BoundImageView;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->minScale:F

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->orientation:I

    .line 34
    iput-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animDataAlpha:Z

    .line 35
    iput-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animData:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 59
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->viewToImageRatio:F

    return-void
.end method

.method private bindImageToViewX(I)Z
    .locals 6

    .line 199
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getTranslateX()F

    move-result v0

    .line 201
    invoke-super {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 202
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    const/4 p1, 0x1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_0

    neg-float v3, v0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    neg-float v1, v1

    cmpg-float v5, v0, v1

    if-gtz v5, :cond_1

    sub-float v3, v1, v0

    goto :goto_1

    :cond_1
    move p1, v4

    .line 218
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 220
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return p1
.end method

.method private bindImageToViewY(I)Z
    .locals 6

    .line 164
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getTranslateY()F

    move-result v0

    .line 166
    invoke-super {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 167
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    const/4 p1, 0x1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_0

    neg-float v3, v0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    neg-float v1, v1

    cmpg-float v5, v0, v1

    if-gtz v5, :cond_1

    sub-float v3, v1, v0

    goto :goto_1

    :cond_1
    move p1, v4

    .line 183
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 184
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 185
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return p1
.end method


# virtual methods
.method public bindImageToView()Z
    .locals 3

    .line 148
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 150
    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->bindImageToViewY(I)Z

    .line 151
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->bindImageToViewX(I)Z

    move-result v0

    return v0
.end method

.method public getCenterOffset()F
    .locals 4

    .line 401
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    .line 403
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getTranslateX()F

    move-result v1

    .line 404
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getScaleX()F

    move-result v2

    mul-float v0, v0, v2

    .line 405
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    sub-float/2addr v2, v1

    sub-float/2addr v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getCurrentScale()F
    .locals 2

    .line 121
    invoke-super {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 123
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x0

    .line 127
    aget v0, v1, v0

    return v0
.end method

.method public getMaxScale()F
    .locals 2

    .line 53
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->minScale:F

    const/high16 v1, 0x40200000    # 2.5f

    mul-float v0, v0, v1

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->minScale:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->orientation:I

    return v0
.end method

.method public getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
    .locals 1

    .line 376
    invoke-super {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    invoke-super {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScaleX()F
    .locals 2

    .line 255
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 257
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x0

    .line 259
    aget v0, v1, v0

    return v0
.end method

.method public getScaleY()F
    .locals 2

    .line 267
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 269
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x4

    .line 271
    aget v0, v1, v0

    return v0
.end method

.method public getTranslateX()F
    .locals 2

    .line 230
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 232
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x2

    .line 234
    aget v0, v1, v0

    return v0
.end method

.method public getTranslateY()F
    .locals 2

    .line 243
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 245
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x5

    .line 247
    aget v0, v1, v0

    return v0
.end method

.method public getViewToImageRatio()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->viewToImageRatio:F

    return v0
.end method

.method public hasRenderDrawable()Z
    .locals 2

    .line 363
    invoke-super {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 366
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isZoomed()Z
    .locals 2

    .line 388
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getCurrentScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAnimationEnd()V
    .locals 2

    .line 468
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 469
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animData:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animDataAlpha:Z

    if-eqz v0, :cond_3

    .line 470
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 472
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animData:Z

    if-eqz v0, :cond_1

    .line 473
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animScale:F

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->resetMatrixToScale(F)V

    .line 474
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animX:F

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animY:F

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->translate(FF)V

    .line 476
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animDataAlpha:Z

    if-eqz v0, :cond_2

    .line 477
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animAlpha:I

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setAlpha(I)V

    .line 479
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_3
    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animData:Z

    .line 482
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animDataAlpha:Z

    return-void
.end method

.method public resetMatrixToScale(F)V
    .locals 3

    .line 337
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    const/16 p1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, p1

    .line 342
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 343
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    .line 311
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 312
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 313
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 458
    invoke-super {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->setAlpha(I)V

    return-void
.end method

.method public setAnimationData(FFF)V
    .locals 1

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animData:Z

    .line 439
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animScale:F

    .line 440
    iput p2, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animX:F

    .line 441
    iput p3, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animY:F

    return-void
.end method

.method public setAnimationData(I)V
    .locals 1

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animDataAlpha:Z

    .line 450
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->animAlpha:I

    return-void
.end method

.method public setDefaultScale()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 136
    iget v1, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->minScale:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 138
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 487
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 489
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setMinScale(Lcom/amazon/kindle/model/content/BookOrientation;)V
    .locals 4

    .line 91
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p1

    .line 94
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 95
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    .line 99
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 102
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v3

    div-float/2addr p1, v1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 110
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->minScale:F

    div-float/2addr v2, p1

    .line 111
    iput v2, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->viewToImageRatio:F

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setDefaultScale()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 428
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/BoundImageView;->orientation:I

    return-void
.end method

.method public translate(FF)V
    .locals 1

    .line 283
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 284
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 285
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected updateDrawableBounds()V
    .locals 1

    .line 494
    invoke-super {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-super {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->updateBounds()V

    :cond_0
    return-void
.end method
