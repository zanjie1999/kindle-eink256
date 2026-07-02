.class public Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MangaPageDrawable.java"


# static fields
.field private static final DEFAULT_OPACITY:I = 0xff


# instance fields
.field private final m_backgroundPaint:Landroid/graphics/Paint;

.field protected m_bounds:Landroid/graphics/Rect;

.field private final m_foregroundPaint:Landroid/graphics/Paint;

.field private m_horizontalMargin:I

.field private m_verticalMargin:I

.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

.field private mangaPagerAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

.field protected position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MangaDocViewer;Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_bounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_verticalMargin:I

    .line 35
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_horizontalMargin:I

    .line 47
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    .line 48
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->mangaPagerAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    .line 50
    iput p4, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->position:I

    .line 51
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_backgroundPaint:Landroid/graphics/Paint;

    .line 53
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    if-eqz p3, :cond_1

    .line 54
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 56
    invoke-virtual {p3}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getHeight()I

    move-result p4

    .line 57
    invoke-virtual {p3}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getWidth()I

    move-result p3

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_bounds:Landroid/graphics/Rect;

    .line 63
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->updateContentRectangle()V

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_foregroundPaint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    .line 68
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_foregroundPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 70
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_foregroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private updateContentRectangle()V
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getInternalDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getColumnCount()I

    move-result v2

    .line 112
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getOriginalWidth()I

    move-result v3

    mul-int v3, v3, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getSpaceBetweenColumns()I

    move-result v0

    mul-int v2, v2, v0

    add-int/2addr v3, v2

    int-to-float v0, v3

    .line 113
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getOriginalHeight()I

    move-result v1

    int-to-float v1, v1

    .line 115
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 116
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v2, v3

    div-float v5, v0, v1

    const/4 v6, 0x0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_0

    .line 123
    iput v6, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_horizontalMargin:I

    div-float/2addr v2, v0

    mul-float v2, v2, v1

    sub-float/2addr v3, v2

    float-to-int v0, v3

    .line 124
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_verticalMargin:I

    goto :goto_0

    :cond_0
    div-float/2addr v3, v1

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 127
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_horizontalMargin:I

    .line 128
    iput v6, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_verticalMargin:I

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setPageDrawRequested(Z)V

    .line 76
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->position:I

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->mangaPagerAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    invoke-interface {v1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getCurrentPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->mangaPagerAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    .line 77
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFirstPageRenderLock()Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->mangaPagerAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFirstPageRenderLock()Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;->waitForRenderedPage()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->mangaPagerAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->position:I

    invoke-interface {v0, v1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getRenderDrawableForPosition(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->isReadyToDraw()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_foregroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 86
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->mangaPagerAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->onViewDrawn()V

    goto :goto_1

    .line 83
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->drawTransienceScreen(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method protected drawTransienceScreen(Landroid/graphics/Canvas;)V
    .locals 9

    .line 97
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_verticalMargin:I

    if-lez v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    add-int/2addr v2, v0

    int-to-float v7, v2

    iget-object v8, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_backgroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_verticalMargin:I

    sub-int v2, v1, v2

    int-to-float v4, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_backgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_horizontalMargin:I

    if-lez v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    add-int/2addr v2, v0

    int-to-float v6, v2

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_backgroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_horizontalMargin:I

    sub-int v2, v1, v2

    int-to-float v4, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    int-to-float v6, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->mangaPagerAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->position:I

    invoke-interface {v0, v1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getRenderDrawableForPosition(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_foregroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public updateBounds()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getHeight()I

    move-result v1

    .line 168
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getWidth()I

    move-result v0

    .line 169
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->m_bounds:Landroid/graphics/Rect;

    .line 170
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;->updateContentRectangle()V

    return-void
.end method
