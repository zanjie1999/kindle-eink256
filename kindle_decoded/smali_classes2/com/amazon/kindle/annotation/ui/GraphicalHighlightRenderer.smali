.class public Lcom/amazon/kindle/annotation/ui/GraphicalHighlightRenderer;
.super Lcom/amazon/kindle/annotation/ui/HighlightRenderer;
.source "GraphicalHighlightRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;-><init>()V

    return-void
.end method

.method private isGraphicalHighlightSupported(Lcom/amazon/android/docviewer/KindleDoc;)Z
    .locals 1

    .line 101
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GraphicalHighlights:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public createCoveringRectangles(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;IILcom/amazon/android/docviewer/IDocumentPage;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "II",
            "Lcom/amazon/android/docviewer/IDocumentPage;",
            ")",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 35
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    .line 36
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 38
    const-class p1, Lcom/amazon/android/docviewer/grid/IGridPage;

    .line 39
    invoke-virtual {p1, p4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    check-cast p4, Lcom/amazon/android/docviewer/grid/IGridPage;

    invoke-interface {p4, p2, p3}, Lcom/amazon/android/docviewer/grid/IGridPage;->createBorderRectangles(II)Ljava/util/Vector;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnnotations(Lcom/amazon/android/docviewer/KindleDocViewer;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "II)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/annotation/ui/GraphicalHighlightRenderer;->isGraphicalHighlightSupported(Lcom/amazon/android/docviewer/KindleDoc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    const/4 v0, 0x7

    invoke-interface {p1, v0, p2, p3}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getEndPositionForPage(Lcom/amazon/android/docviewer/IDocumentPage;)I
    .locals 1

    .line 93
    instance-of v0, p1, Lcom/amazon/android/docviewer/grid/IGridPage;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/amazon/android/docviewer/grid/IGridPage;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGeometricEndPosition()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getNotes(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;
    .locals 9
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

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 62
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/annotation/ui/GraphicalHighlightRenderer;->isGraphicalHighlightSupported(Lcom/amazon/android/docviewer/KindleDoc;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 68
    :cond_0
    sget v1, Lcom/amazon/kindle/krl/R$string;->notes_highlight:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 75
    invoke-interface {v3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {p2, v2}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getPositionEquivalentFromGeometricPosition(Lcom/amazon/android/docviewer/KindleDocViewer;I)I

    move-result v4

    .line 76
    new-instance v8, Lcom/amazon/kcp/reader/Note;

    sget v5, Lcom/amazon/kindle/krl/R$drawable;->menu_highlight:I

    sget v7, Lcom/amazon/kindle/krl/R$string;->notes_graphical_highlight:I

    move-object v2, v8

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/reader/Note;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;IILjava/lang/String;I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getStartPositionForPage(Lcom/amazon/android/docviewer/IDocumentPage;)I
    .locals 1

    .line 85
    instance-of v0, p1, Lcom/amazon/android/docviewer/grid/IGridPage;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lcom/amazon/android/docviewer/grid/IGridPage;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGeometricStartPosition()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
