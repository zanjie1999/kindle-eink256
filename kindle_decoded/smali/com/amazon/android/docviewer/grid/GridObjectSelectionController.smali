.class public Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;
.super Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;
.source "GridObjectSelectionController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;-><init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    return-void
.end method

.method private getGridPositionRange()Lcom/amazon/android/docviewer/grid/GridPositionRange;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getPositionPair()Lcom/amazon/android/docviewer/grid/GridPositionRange;

    move-result-object v0

    return-object v0
.end method

.method private isCoveredByNonStartingHighlights(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 4

    .line 89
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->getGridPositionRange()Lcom/amazon/android/docviewer/grid/GridPositionRange;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getGraphicalHighlightsCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method public canAnnotate()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isInGraphicalMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->canAnnotate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canHighlight()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isInGraphicalMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->canHighlight()Z

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    iget-object v1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getCoveringAreaForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;

    move-result-object v0

    .line 102
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getGridCoordFromPositionPair(II)Landroid/graphics/Rect;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    return-object p1
.end method

.method public getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isInGraphicalMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-super {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getStartingHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 60
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getCoveringArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 64
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 65
    invoke-virtual {v3}, Landroid/graphics/Rect;->sort()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->getCoveringAreaForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->isCoveredByNonStartingHighlights(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-object v0

    :cond_2
    return-object v1

    .line 74
    :cond_3
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->getGridPositionRange()Lcom/amazon/android/docviewer/grid/GridPositionRange;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 76
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getFirstGraphicalHighlightCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method protected getGridPage()Lcom/amazon/android/docviewer/grid/IGridPage;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 113
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    .line 114
    instance-of v2, v0, Lcom/amazon/android/docviewer/grid/IGridPage;

    if-nez v2, :cond_1

    return-object v1

    .line 117
    :cond_1
    check-cast v0, Lcom/amazon/android/docviewer/grid/IGridPage;

    return-object v0
.end method

.method public hasSelectionOnScreen()Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isInGraphicalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-super {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->hasSelectionOnScreen()Z

    move-result v0

    return v0
.end method

.method public onHighlightButtonClicked(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Z)V
    .locals 9

    .line 136
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isInGraphicalMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->onHighlightButtonClicked(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Z)V

    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->getGridPositionRange()Lcom/amazon/android/docviewer/grid/GridPositionRange;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getStartingHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    const-string v2, "AnnotationCreationButtons"

    if-nez v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->isEmptyGraphicalSelection()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "SelectionButtonHighlight"

    if-eqz v0, :cond_2

    .line 152
    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-interface {v3, v0, p2, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->updateGraphicalHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p2

    .line 153
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "GraphicalHighlightUpdated"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    const/4 v3, 0x0

    invoke-interface {v0, p2, v3, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->addGraphicalHighlight(Lcom/amazon/android/docviewer/IPositionRange;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p2

    .line 158
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "GraphicalHighlightAdded"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v4, p2

    .line 162
    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string/jumbo v5, "mchl_color"

    invoke-interface/range {v3 .. v8}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->setAnnotationMetadata(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/Object;ZZ)Z

    goto :goto_2

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->hasSelectionOnScreen()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_4

    goto :goto_1

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-interface {v0, p2}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getFirstGraphicalHighlightCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    :goto_1
    move-object v4, v0

    if-eqz v4, :cond_7

    .line 168
    invoke-static {v4}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 173
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-interface {p1, v4}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 174
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "HighlightDeleted"

    invoke-virtual {p1, v2, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 177
    :cond_5
    sget-object p1, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->TAG:Ljava/lang/String;

    const-string p2, "Deleting a highlight failed in the framework?"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 181
    :cond_6
    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string/jumbo v5, "mchl_color"

    invoke-interface/range {v3 .. v8}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->setAnnotationMetadata(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/Object;ZZ)Z

    goto :goto_2

    .line 184
    :cond_7
    sget-object p1, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->TAG:Ljava/lang/String;

    const-string p2, "Trying to modify/delete a non-existant annotation"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->selectNone()V

    return-void
.end method
