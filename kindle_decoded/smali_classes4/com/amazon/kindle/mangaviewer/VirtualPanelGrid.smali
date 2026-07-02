.class public Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;
.super Ljava/lang/Object;
.source "VirtualPanelGrid.java"


# static fields
.field private static final DEFAULT_COLUMNS:I = 0x2

.field private static final DEFAULT_LANDSCAPE_ROWS:I = 0x3

.field private static final DEFAULT_PORTRAIT_ROWS:I = 0x2

.field private static final LANDSCAPE_MODE:I = 0x1

.field private static final LANDSCAPE_TARGET_WIDTH_FACTOR:F = 0.5f

.field private static final PORTRAIT_MODE:I = 0x0

.field private static final PORTRAIT_TARGET_WIDTH_FACTOR:F = 0.625f

.field private static final SINGLE_COLUMN_SIDE_BUFFER:F = 0.5f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private leftToRight:Z

.field private maxPosition:I

.field private numColumns:I

.field private numRows:I

.field private orientation:I

.field private position:I

.field private verticalFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    .line 64
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->leftToRight:Z

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->verticalFirst:Z

    .line 95
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    .line 96
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->maxPosition:I

    return-void
.end method

.method private decrement()Z
    .locals 2

    .line 450
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 453
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    return v1
.end method

.method private determineGridPosition(IIII)I
    .locals 3

    .line 395
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    int-to-float v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 397
    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    div-int/2addr p2, v1

    sub-int/2addr p1, v0

    .line 398
    div-int/lit8 p1, p1, 0x2

    if-lt p3, p1, :cond_0

    add-int/2addr p1, v0

    if-gt p3, p1, :cond_0

    .line 401
    div-int/2addr p4, p2

    return p4

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 408
    :cond_1
    div-int/2addr p1, v0

    .line 409
    iget v2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    div-int/2addr p2, v2

    .line 411
    div-int/2addr p3, p1

    .line 412
    div-int/2addr p4, p2

    .line 414
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->leftToRight:Z

    if-eqz p1, :cond_3

    .line 415
    iget p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->verticalFirst:Z

    if-nez p1, :cond_2

    mul-int p4, p4, v0

    add-int/2addr p4, p3

    return p4

    .line 418
    :cond_2
    iget p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    mul-int p3, p3, p1

    add-int/2addr p3, p4

    return p3

    .line 421
    :cond_3
    iget p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->verticalFirst:Z

    if-nez p1, :cond_4

    mul-int p4, p4, v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, p3

    add-int/2addr p4, v0

    return p4

    .line 424
    :cond_4
    iget p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, p3

    iget p2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    mul-int p1, p1, p2

    add-int/2addr p1, p4

    return p1
.end method

.method private increment()Z
    .locals 2

    .line 436
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->maxPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 439
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    return v1
.end method


# virtual methods
.method public atFirstPosition()Z
    .locals 1

    .line 252
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public atLastPosition()Z
    .locals 2

    .line 245
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->maxPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getColumn()I
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->leftToRight:Z

    if-eqz v0, :cond_1

    .line 127
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->verticalFirst:Z

    if-nez v0, :cond_0

    .line 128
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    rem-int/2addr v0, v1

    return v0

    .line 130
    :cond_0
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    div-int/2addr v0, v1

    return v0

    .line 133
    :cond_1
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->verticalFirst:Z

    if-nez v0, :cond_2

    .line 137
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    iget v2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0

    .line 139
    :cond_2
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    iget v2, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRow()I
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->leftToRight:Z

    if-eqz v0, :cond_1

    .line 150
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->verticalFirst:Z

    if-nez v0, :cond_0

    .line 151
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    div-int/2addr v0, v1

    return v0

    .line 153
    :cond_0
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    rem-int/2addr v0, v1

    return v0

    .line 156
    :cond_1
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->verticalFirst:Z

    if-nez v0, :cond_2

    .line 157
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    div-int/2addr v0, v1

    return v0

    .line 159
    :cond_2
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    return v0
.end method

.method public getScaleTo(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F
    .locals 2

    .line 376
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 378
    :goto_0
    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    if-nez v1, :cond_1

    .line 379
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f200000    # 0.625f

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_1
    mul-float v0, v0, v1

    div-float/2addr p1, v0

    return p1
.end method

.method public getTranslationX(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F
    .locals 5

    .line 304
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    .line 306
    :goto_0
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    if-ne v0, v1, :cond_1

    int-to-float v0, p1

    mul-float v0, v0, v2

    float-to-int v0, v0

    sub-int/2addr p1, v0

    .line 308
    div-int/lit8 p1, p1, 0x2

    neg-int p1, p1

    int-to-float p1, p1

    return p1

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getColumn()I

    move-result v0

    .line 315
    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    if-nez v1, :cond_2

    const/high16 v1, 0x3f200000    # 0.625f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_1
    int-to-float p1, p1

    mul-float v1, v1, p1

    add-int/lit8 v3, v0, 0x1

    .line 319
    iget v4, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    if-ne v3, v4, :cond_3

    sub-float/2addr p1, v1

    neg-float p1, p1

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    int-to-float v0, v0

    add-float/2addr v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    mul-float v0, v0, p1

    neg-float p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    add-float/2addr p1, v1

    :goto_2
    return p1
.end method

.method public getTranslationY(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F
    .locals 7

    .line 342
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getRow()I

    move-result v0

    .line 343
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getRowCount()I

    move-result v1

    int-to-float v1, v1

    .line 346
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 347
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getHeight()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 349
    :goto_1
    iget v4, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v4, :cond_2

    const/high16 v4, 0x3f200000    # 0.625f

    goto :goto_2

    :cond_2
    const/high16 v4, 0x3f000000    # 0.5f

    .line 352
    :goto_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v6, p1

    int-to-float p1, v2

    mul-float p1, p1, v4

    div-float/2addr p1, v6

    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_3

    int-to-float v0, v3

    sub-float/2addr v0, p1

    neg-float p1, v0

    goto :goto_3

    :cond_3
    if-nez v0, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    int-to-float v0, v0

    add-float/2addr v0, v5

    div-float/2addr v0, v1

    int-to-float v1, v3

    mul-float v0, v0, v1

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    :goto_3
    return p1
.end method

.method public goLeft()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->leftToRight:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->decrement()Z

    move-result v0

    return v0

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->increment()Z

    move-result v0

    return v0
.end method

.method public goRight()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->leftToRight:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->increment()Z

    move-result v0

    return v0

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->decrement()Z

    move-result v0

    return v0
.end method

.method public isLeftToRight()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->leftToRight:Z

    return v0
.end method

.method public isValidLocationForGrid(IIII)Z
    .locals 0

    .line 292
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->determineGridPosition(IIII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setGridLocation(IIII)V
    .locals 2

    .line 271
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    div-int v0, p1, v0

    .line 272
    iget v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    div-int v1, p2, v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->determineGridPosition(IIII)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 275
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    .line 276
    sget-object p1, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->TAG:Ljava/lang/String;

    const-string p2, "Error: View width or height is 0 or there are more columns/rows than the resolution"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setMaxPosition()V
    .locals 1

    .line 114
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->maxPosition:I

    iput v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    return-void
.end method

.method public setMinPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    return-void
.end method

.method public setUpGrid(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ZZ)V
    .locals 5

    .line 172
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object p1

    .line 175
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->leftToRight:Z

    .line 177
    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v0

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->verticalFirst:Z

    .line 183
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v4, :cond_2

    .line 184
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getOrientation()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 190
    :cond_1
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    .line 191
    iput v4, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    goto :goto_2

    .line 186
    :cond_2
    :goto_1
    iput v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    .line 187
    iput v3, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    :goto_2
    if-eqz p3, :cond_3

    .line 194
    iget p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->orientation:I

    if-ne p1, v4, :cond_3

    .line 195
    iput v4, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    goto :goto_3

    .line 197
    :cond_3
    iput v1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    .line 201
    :goto_3
    iget p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numColumns:I

    iget p3, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->numRows:I

    mul-int p1, p1, p3

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->maxPosition:I

    if-eqz p2, :cond_4

    .line 203
    iput v3, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    goto :goto_4

    .line 205
    :cond_4
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->position:I

    :goto_4
    return-void
.end method
