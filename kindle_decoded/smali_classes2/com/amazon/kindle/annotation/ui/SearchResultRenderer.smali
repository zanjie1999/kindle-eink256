.class public Lcom/amazon/kindle/annotation/ui/SearchResultRenderer;
.super Lcom/amazon/kindle/annotation/ui/HighlightRenderer;
.source "SearchResultRenderer.java"


# instance fields
.field private final underlineWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->reader_search_in_book_underline_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amazon/kindle/annotation/ui/SearchResultRenderer;->underlineWidth:F

    return-void
.end method

.method private drawUnderline(Landroid/graphics/Canvas;Landroid/graphics/Rect;IZ)V
    .locals 9

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object p3, p0, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/amazon/kindle/annotation/ui/SearchResultRenderer;->underlineWidth:F

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object p3, p0, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p3, 0x40000000    # 2.0f

    if-eqz p4, :cond_0

    .line 124
    iget p4, p2, Landroid/graphics/Rect;->right:I

    int-to-float p4, p4

    iget v3, p0, Lcom/amazon/kindle/annotation/ui/SearchResultRenderer;->underlineWidth:F

    div-float/2addr v3, p3

    add-float/2addr p4, v3

    .line 125
    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    .line 127
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    move v7, p2

    move v5, p3

    move v4, p4

    move v6, v4

    goto :goto_0

    .line 129
    :cond_0
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    .line 130
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/amazon/kindle/annotation/ui/SearchResultRenderer;->underlineWidth:F

    div-float/2addr v4, p3

    add-float p3, v3, v4

    .line 131
    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    move v6, p2

    move v5, p3

    move v7, v5

    move v4, p4

    .line 135
    :goto_0
    iget-object v8, p0, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    iget-object p1, p0, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object p1, p0, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object p1, p0, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 93
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Highlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object v0
.end method

.method public getNotes(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public render(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Landroid/graphics/Canvas;",
            "Lcom/amazon/android/docviewer/IDocumentPage;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSearchResults()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 42
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/amazon/kindle/krx/search/ISearchResult;

    .line 43
    instance-of v0, p5, Lcom/amazon/kcp/search/InBookContentSearchResult;

    if-eqz v0, :cond_0

    .line 44
    check-cast p5, Lcom/amazon/kcp/search/InBookContentSearchResult;

    .line 46
    invoke-interface {p3}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v0

    .line 47
    invoke-interface {p3}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v1

    if-gez v1, :cond_1

    move v1, v0

    .line 52
    :cond_1
    invoke-virtual {p5}, Lcom/amazon/kcp/search/InBookContentSearchResult;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 53
    invoke-virtual {p5}, Lcom/amazon/kcp/search/InBookContentSearchResult;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p5

    invoke-interface {p5}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p5

    invoke-interface {p5}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p5

    if-gt v2, v1, :cond_0

    if-gt v0, p5, :cond_0

    if-ge v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-le p5, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, p5

    .line 62
    :goto_1
    invoke-interface {p3, v0, v1}, Lcom/amazon/android/docviewer/IDocumentPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/annotation/ui/AnnotationRendererBase;->getRenderingColorMode(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    .line 65
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isJpVertContent()Z

    move-result v1

    .line 66
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v2

    .line 67
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getSearchHighlightColor()I

    move-result v3

    .line 68
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getOpaqueSearchHighlightColor()I

    move-result v4

    .line 69
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getSearchUnderlineColor()I

    move-result v0

    .line 71
    invoke-virtual {p5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v4

    .line 74
    :goto_3
    invoke-virtual {p0, p2, v5, v2, v6}, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;->drawHighlight(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZI)V

    .line 75
    invoke-direct {p0, p2, v5, v0, v1}, Lcom/amazon/kindle/annotation/ui/SearchResultRenderer;->drawUnderline(Landroid/graphics/Canvas;Landroid/graphics/Rect;IZ)V

    goto :goto_2

    .line 83
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
