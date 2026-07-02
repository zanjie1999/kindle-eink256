.class public Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;
.super Ljava/lang/Object;
.source "NotebookClippingLimitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;
    }
.end annotation


# static fields
.field private static final EXPORTED_TAG:Ljava/lang/String; = "exported"


# instance fields
.field private dao:Lcom/amazon/notebook/module/exporting/IClippingLimitDAO;

.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 31
    invoke-static {}, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;->getInstance()Lcom/amazon/notebook/module/exporting/IClippingLimitDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->dao:Lcom/amazon/notebook/module/exporting/IClippingLimitDAO;

    return-void
.end method

.method private getBookSize()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getDocumentWordCount()I

    move-result v0

    return v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getNoteSize(Lcom/amazon/kcp/reader/Note;)I
    .locals 2

    .line 43
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getPercentageOfBookForGraphialHighlight(Lcom/amazon/kcp/reader/Note;)F

    move-result p1

    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getBookSize()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getPercentageOfBookForGraphialHighlight(Lcom/amazon/kcp/reader/Note;)F
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getPageIndexFromGeometricPosition(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    .line 130
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledXCoordinateFromGeometricPosition(I)I

    move-result v2

    .line 131
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v3}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledYCoordinateFromGeometricPosition(I)I

    move-result v3

    .line 132
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-static {v4}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledXCoordinateFromGeometricPosition(I)I

    move-result v4

    .line 133
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v5

    invoke-static {v5}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledYCoordinateFromGeometricPosition(I)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 135
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getPageIndexFromGeometricPosition(I)I

    move-result p1

    .line 136
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPdfPageSize(I)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageCount()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;->extractOffsetFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;->extractOffsetFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;

    move-result-object p1

    .line 146
    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 148
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getTotalPages()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private markAnnotationAsExported(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 176
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->hasAnnotationBeenExported(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->setExportedFlagForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V

    :cond_0
    return-void
.end method

.method private setExportedFlagForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V
    .locals 4

    .line 182
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/JsonUtils;->mutableDeepCopyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "tags"

    .line 185
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v3, "exported"

    if-eqz p2, :cond_1

    .line 191
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-interface {p1, v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setMetadata(Ljava/util/Map;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->updateAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return-void
.end method

.method private updateAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 203
    instance-of v0, p1, Lcom/amazon/kcp/reader/WrappedAnnotation;

    if-eqz v0, :cond_0

    .line 205
    check-cast p1, Lcom/amazon/kcp/reader/WrappedAnnotation;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->updateAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->updateAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getNotesUpTo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;F)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;F)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getBookSize()I

    move-result v1

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getPercentPreviouslyExported(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)F

    move-result p1

    .line 104
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/reader/Note;

    .line 105
    invoke-direct {p0, v3}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getNoteSize(Lcom/amazon/kcp/reader/Note;)I

    move-result v4

    .line 107
    invoke-virtual {p0, v3}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->hasAnnotationBeenExported(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_0

    add-int/2addr v2, v4

    int-to-float v4, v2

    int-to-float v5, v1

    div-float/2addr v4, v5

    add-float/2addr v4, p1

    cmpg-float v4, v4, p4

    if-gtz v4, :cond_2

    .line 114
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p3, 0x1

    goto :goto_0

    .line 108
    :cond_3
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getPercentExported(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;)F"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getPercentPreviouslyExported(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)F

    move-result p1

    .line 58
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/Note;

    .line 59
    invoke-virtual {p0, v0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->hasAnnotationBeenExported(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getNoteSize(Lcom/amazon/kcp/reader/Note;)I

    move-result v0

    add-int/2addr p3, v0

    goto :goto_0

    :cond_1
    int-to-float p2, p3

    .line 64
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getBookSize()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method public getPercentPreviouslyExported(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;)F"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->dao:Lcom/amazon/notebook/module/exporting/IClippingLimitDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/notebook/module/exporting/IClippingLimitDAO;->getAmountExported(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    const/4 v0, 0x0

    .line 79
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/Note;

    .line 80
    invoke-virtual {p0, v2}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->hasAnnotationBeenExported(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-direct {p0, v2}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getNoteSize(Lcom/amazon/kcp/reader/Note;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    int-to-float p3, v0

    .line 85
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getBookSize()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    add-float v0, v1, p3

    .line 88
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->setPercentExported(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_2
    return v0
.end method

.method public hasAnnotationBeenExported(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 216
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v1, "tags"

    .line 219
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    const-string v1, "exported"

    .line 220
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public markAnnotationAsUnExported(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 159
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->hasAnnotationBeenExported(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->setExportedFlagForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V

    :cond_0
    return-void
.end method

.method public markAnnotationsAsExported(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;)V"
        }
    .end annotation

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 166
    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->markAnnotationAsExported(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPercentExported(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->dao:Lcom/amazon/notebook/module/exporting/IClippingLimitDAO;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/notebook/module/exporting/IClippingLimitDAO;->setAmountExported(Ljava/lang/String;Ljava/lang/String;F)J

    return-void
.end method
