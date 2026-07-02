.class public Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;
.super Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;
.source "MobiObjectSelectionController.java"

# interfaces
.implements Lcom/amazon/android/docviewer/selection/IObjectSelectionController;


# instance fields
.field private objectModel:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;)V
    .locals 2

    .line 29
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->create(Lcom/amazon/kcp/application/UserSettingsController;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->getInstance()Lcom/amazon/kcp/debug/IAIRInCSUtil;

    move-result-object v1

    .line 29
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;Lcom/amazon/kcp/debug/IAIRInCSUtil;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    return-void
.end method


# virtual methods
.method public addNote()V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 47
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-interface {v2, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->checkForExistingNote(Lcom/amazon/android/docviewer/IPageElement;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 49
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    :cond_0
    const-string v2, "SelectionButtonNote"

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v1, v3, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->displayNoteUI(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->createHighlightAndDisplayNoteUI(ILjava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectNone()V

    :goto_0
    return-void
.end method

.method public createQuickHighlight()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getLastUsedHighlightColor()Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->QUICK_HIGHLIGHT:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->createSelection(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;ZLcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v2, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 106
    new-instance v2, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v1, v3, v0}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider$QuickHighlightEvent;-><init>(Ljava/lang/String;ILcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 107
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public isImageOnlySelected()Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 96
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v2

    invoke-interface {v1}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showImageZoom()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    .line 79
    instance-of v2, v0, Lcom/amazon/android/docviewer/IImagePageElement;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 81
    check-cast v0, Lcom/amazon/android/docviewer/IImagePageElement;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IImagePageElement;->getImageId()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "ImageZoomActivity"

    const-string v4, "ImageZoomLaunchViaAnnotationMenu"

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectNone()V

    return-void
.end method
