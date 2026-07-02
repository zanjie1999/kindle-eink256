.class public final Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;
.super Ljava/lang/Object;
.source "PdfAnnotationAreaManager.java"


# instance fields
.field private final m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

.field private final m_highlightBackgroundColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_noteAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;",
            ">;"
        }
    .end annotation
.end field

.field private final m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    .line 40
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_noteAreas:Ljava/util/ArrayList;

    .line 42
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_highlightBackgroundColors:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->rebuildNoteAreas()V

    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method getArea(III)Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;
    .locals 7

    const/4 v0, -0x1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 62
    :goto_0
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 63
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;

    invoke-virtual {v4, p1, p2, p3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->contains(III)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 65
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, p1

    .line 66
    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    sub-int/2addr v6, p2

    mul-int v5, v5, v5

    mul-int v6, v6, v6

    add-int/2addr v5, v6

    if-ge v5, v1, :cond_0

    move v3, v2

    move v1, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_noteAreas:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;

    :goto_1
    return-object p1
.end method

.method final getAreaBackgroundColor(Lcom/amazon/android/docviewer/pdf/PdfPage;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/android/docviewer/pdf/PdfTileManager;)I
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_highlightBackgroundColors:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 171
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getPageDimensionsAtNativeZoom()Landroid/graphics/Rect;

    move-result-object v0

    .line 172
    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getFirstElementPositionId()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 173
    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getLastElementPositionId()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 174
    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 178
    invoke-virtual {p1, v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->createBorderRectangles(II)Ljava/util/Vector;

    move-result-object p1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p1, v1, v2, v0, v5}, Lcom/amazon/android/docviewer/pdf/PdfPage;->createCoveringRectangles(IILandroid/graphics/Rect;I)Ljava/util/Vector;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 183
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 187
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 190
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getTilePixelFromPagePoint(II)I

    move-result v2

    .line 191
    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v3, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getTilePixelFromPagePoint(II)I

    move-result v1

    .line 192
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p3, v3, v4}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getTilePixelFromPagePoint(II)I

    move-result v3

    .line 193
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v5

    invoke-virtual {p3, v4, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->getTilePixelFromPagePoint(II)I

    move-result p1

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-nez p1, :cond_3

    goto :goto_1

    .line 200
    :cond_3
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result p3

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    add-int/2addr p3, v0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    add-int/2addr p3, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    add-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x4

    .line 201
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v0, v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x4

    .line 202
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    add-int/2addr v2, v1

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    add-int/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x4

    .line 203
    invoke-static {p3, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 205
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_highlightBackgroundColors:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return v0
.end method

.method getAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_noteAreas:Ljava/util/ArrayList;

    return-object v0
.end method

.method getHighlight(IIZ)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x3

    .line 98
    invoke-interface {v0, p1, p2, v2, p3}, Lcom/amazon/android/docviewer/IDocumentPage;->getElementAtPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 103
    :cond_1
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    new-instance p3, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result p1

    invoke-direct {p3, v0, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    invoke-virtual {p2, p3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getHighlightCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public getRectForNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 80
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;

    .line 85
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public onAnntationsReadEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 212
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_ADDED_REMOVED:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 213
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->rebuildNoteAreas()V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 220
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_highlightBackgroundColors:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method onRefresh()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->rebuildNoteAreas()V

    return-void
.end method

.method final rebuildNoteAreas()V
    .locals 11

    .line 107
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 113
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    sget v2, Lcom/amazon/kindle/krl/R$integer;->pdf_tile_default_note_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    .line 115
    sget v3, Lcom/amazon/kindle/krl/R$integer;->pdf_tile_default_note_icon_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 117
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getFirstElementPositionId()I

    move-result v3

    .line 118
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getLastElementPositionId()I

    move-result v4

    .line 119
    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScale(Lcom/amazon/android/docviewer/pdf/PdfPage;)F

    move-result v5

    .line 121
    iget-object v6, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v6, v3, v4}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getNotesInRange(II)Ljava/util/List;

    move-result-object v3

    .line 122
    invoke-interface {v3, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    new-instance v4, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager$1;

    invoke-direct {v4, p0}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager$1;-><init>(Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_noteAreas:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 133
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 134
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    .line 135
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    .line 137
    invoke-virtual {v0, v6, v7}, Lcom/amazon/android/docviewer/pdf/PdfPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object v6

    .line 140
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_1

    add-int/lit8 v7, v7, -0x1

    .line 142
    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    div-float v7, v2, v5

    .line 144
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-float v8, v1, v5

    .line 145
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 146
    iget v9, v6, Landroid/graphics/Rect;->top:I

    div-int/lit8 v10, v7, 0x2

    sub-int/2addr v9, v10

    .line 147
    new-instance v10, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v6

    add-int/2addr v7, v9

    invoke-direct {v10, v6, v9, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/graphics/Rect;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    .line 151
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 152
    iget-object v7, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->m_noteAreas:Ljava/util/ArrayList;

    new-instance v8, Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;

    invoke-direct {v8, v4, v6}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
