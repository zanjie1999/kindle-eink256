.class public Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;
.super Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;
.source "KRIFObjectSelectionController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.rendering.KRIFObjectSelectionController"


# instance fields
.field private final annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

.field private mainHandler:Landroid/os/Handler;

.field objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;Lcom/amazon/kcp/debug/IAIRInCSUtil;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;Lcom/amazon/kcp/debug/IAIRInCSUtil;)V

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->mainHandler:Landroid/os/Handler;

    .line 48
    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    return-void
.end method

.method private createSelection(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectedPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 70
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    .line 71
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    if-nez v0, :cond_2

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/AnnotationUtils;->setAnnotationColor(Ljava/util/Map;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->addHighlightFromSelection(Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    const-string v1, "AnnotationCreationButtons"

    const-string v2, "HighlightAdded"

    invoke-virtual {p2, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->hasSelectionOnScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    invoke-static {v1, v0, v2, v3, p2}, Lcom/amazon/kcp/util/AnnotationUtils;->setAnnotationColor(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Z

    .line 94
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->setLastUsedHighlightColor(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V

    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method private deleteHighlight(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->hasSelectionOnScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    const-string v1, "SelectionButtonHighlight"

    invoke-interface {p1, v0, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v1, "AnnotationCreationButtons"

    const-string v2, "HighlightDeleted"

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;->highlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->SELECTION_MENU:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    .line 111
    invoke-interface {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;->withEntryPoint(Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder$HighlightActionBuilder;

    move-result-object p1

    .line 112
    invoke-interface {p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$ActionBuilder;->deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;->emit()V

    goto :goto_0

    .line 115
    :cond_0
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->TAG:Ljava/lang/String;

    const-string v0, "Deleting a highlight failed in the framework?"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addNote()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectedLastWordStartId()I

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-eqz v1, :cond_2

    .line 133
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v2

    .line 134
    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-interface {v3, v0, v2}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->checkForExistingNote(II)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    :cond_0
    const-string v0, "SelectionButtonNote"

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->displayNoteUI(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectedLastWordEndId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->createHighlightAndDisplayNoteUI(ILjava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->selectNone()V

    :goto_0
    return-void
.end method

.method public createQuickHighlight()V
    .locals 4

    .line 242
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getLastUsedHighlightColor()Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v0

    .line 243
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->QUICK_HIGHLIGHT:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->createSelection(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 245
    new-instance v2, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v0, v3, v1}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;-><init>(Ljava/lang/String;ILcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 246
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-eq v0, v1, :cond_0

    .line 156
    invoke-super {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectedPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    check-cast v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 165
    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getGHLCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public hasSelectionOnScreen()Z
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v2, v3, :cond_1

    return v1

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-ne v2, v3, :cond_2

    .line 187
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    .line 188
    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectedPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v1

    .line 187
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->currentViewContainsRange(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v0

    return v0

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-ne v2, v3, :cond_4

    .line 190
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectedPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    .line 191
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/rendering/KRIFView;

    .line 192
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 194
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/rendering/KRIFView;->containsPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/rendering/KRIFView;->containsPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    .line 195
    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v3

    if-gt v2, v3, :cond_4

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    .line 196
    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    if-lt v2, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public isImageOnlySelected()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->areOnlyImagesSelected()Z

    move-result v0

    return v0
.end method

.method public onHighlightButtonClicked(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->deleteHighlight(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V

    goto :goto_0

    .line 56
    :cond_0
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->SELECTION_MENU:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->createSelection(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 59
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->selectNone()V

    return-void
.end method

.method public setLastUsedHighlightColor(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V
    .locals 0

    .line 237
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->setLastUsedHighlightColor(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V

    return-void
.end method

.method public showImageZoom()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFObjectSelectionController;->objectModel:Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFObjectSelectionModel;->getSelectedPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 213
    instance-of v2, v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    if-eqz v2, :cond_1

    .line 214
    check-cast v0, Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->openComponentViewer(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_1
    return-void
.end method
