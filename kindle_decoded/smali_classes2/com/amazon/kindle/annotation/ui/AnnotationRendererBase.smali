.class public abstract Lcom/amazon/kindle/annotation/ui/AnnotationRendererBase;
.super Ljava/lang/Object;
.source "AnnotationRendererBase.java"

# interfaces
.implements Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 75
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 76
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-gt v0, p3, :cond_3

    if-ge p1, p2, :cond_0

    goto :goto_2

    :cond_0
    if-ge v0, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-le p1, p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, p1

    .line 89
    :goto_1
    invoke-interface {p4, p2, p3}, Lcom/amazon/android/docviewer/IDocumentPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract drawAnnotation(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation
.end method

.method public getAnnotationForStartPositionAndType(Lcom/amazon/android/docviewer/KindleDocViewer;II)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 0

    .line 104
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    .line 105
    invoke-interface {p1, p3, p2, p2}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 107
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentDecorationAt(II)Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentDecorations(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getEndPositionForPage(Lcom/amazon/android/docviewer/IDocumentPage;)I
    .locals 0

    .line 71
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result p1

    return p1
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getRenderingColorMode(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 2

    .line 144
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 146
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 145
    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getStartPositionForPage(Lcom/amazon/android/docviewer/IDocumentPage;)I
    .locals 0

    .line 67
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result p1

    return p1
.end method

.method public render(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    if-nez p3, :cond_0

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/annotation/ui/AnnotationRendererBase;->getStartPositionForPage(Lcom/amazon/android/docviewer/IDocumentPage;)I

    move-result p4

    .line 40
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/annotation/ui/AnnotationRendererBase;->getEndPositionForPage(Lcom/amazon/android/docviewer/IDocumentPage;)I

    move-result p5

    if-gez p5, :cond_1

    move p5, p4

    .line 46
    :cond_1
    invoke-interface {p0, p1, p4, p5}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getAnnotations(Lcom/amazon/android/docviewer/KindleDocViewer;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 50
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 51
    invoke-virtual {p0, v1, p4, p5, p3}, Lcom/amazon/kindle/annotation/ui/AnnotationRendererBase;->createCoveringRectangles(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;IILcom/amazon/android/docviewer/IDocumentPage;)Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {p0, p2, p1, v1, v2}, Lcom/amazon/kindle/annotation/ui/AnnotationRendererBase;->drawAnnotation(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)V

    goto :goto_0

    .line 58
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
