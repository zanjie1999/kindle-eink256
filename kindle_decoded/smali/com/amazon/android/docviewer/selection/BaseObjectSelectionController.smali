.class public abstract Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;
.super Ljava/lang/Object;
.source "BaseObjectSelectionController.java"

# interfaces
.implements Lcom/amazon/android/docviewer/selection/IObjectSelectionController;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final airInCSUtil:Lcom/amazon/kcp/debug/IAIRInCSUtil;

.field private final annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

.field protected final annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

.field protected final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private quickHighlightMinWords:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;Lcom/amazon/kcp/debug/IAIRInCSUtil;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 82
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 83
    iput-object p2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    .line 84
    iput-object p3, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    .line 85
    iput-object p4, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->airInCSUtil:Lcom/amazon/kcp/debug/IAIRInCSUtil;

    .line 87
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private deleteHighlight(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Ljava/lang/String;)V
    .locals 3

    .line 366
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->hasSelectionOnScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 370
    sget-object p1, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->TAG:Ljava/lang/String;

    const-string p2, "Trying to delete a highlight, but we weren\'t able to get the covering highlight. Not doing anything."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 374
    :cond_0
    invoke-static {v0}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 375
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 377
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationSelectionType(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 380
    invoke-direct {p0, v1, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->shouldDeleteAnnotation(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 384
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-interface {p1, v0, p3}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 385
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "AnnotationCreationButtons"

    const-string p3, "HighlightDeleted"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;->highlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->SELECTION_MENU:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    .line 387
    invoke-interface {p1, p2}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder;->withEntryPoint(Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$HighlightBuilder$HighlightActionBuilder;

    move-result-object p1

    .line 388
    invoke-interface {p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$ActionBuilder;->deleted()Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;

    move-result-object p1

    .line 389
    invoke-interface {p1}, Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder$Emitter;->emit()V

    goto :goto_1

    .line 391
    :cond_2
    sget-object p1, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->TAG:Ljava/lang/String;

    const-string p2, "Unable to delete highlight"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 400
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p3, "BaseObjectSelectionController"

    const-string v1, "HighlightShouldNotBeDeleted"

    invoke-virtual {p1, p3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 404
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    invoke-static {p1, v0, p3, v1}, Lcom/amazon/kcp/util/AnnotationUtils;->setAnnotationColor(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;)Z

    .line 405
    invoke-virtual {p0, p2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->setLastUsedHighlightColor(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V

    .line 410
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    return-void
.end method

.method private onSelectionDisplayChanged()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionDisplay()Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    move-result-object v0

    .line 578
    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-interface {p0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->createQuickHighlight()V

    :cond_0
    return-void
.end method

.method private shouldDeleteAnnotation(ZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private startWebViewActivity(Lcom/amazon/kcp/reader/ReaderActivity;Ljava/lang/String;)V
    .locals 2

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "url"

    .line 277
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    sget p2, Lcom/amazon/kindle/krl/R$string;->web_book:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "finishMenuItemText"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    sget p2, Lcom/amazon/kindle/krl/R$drawable;->ic_menu_reading:I

    const-string v1, "finishMenuItemIconId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateSelectionDisplayState()V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionDisplay()Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    .line 502
    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v1, v2, :cond_5

    .line 520
    sget-object v1, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->HIGHLIGHT:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    invoke-static {v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setEntryPoint(Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;)V

    .line 522
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->isSelectionInQuickHighlightMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 524
    sget-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    goto :goto_2

    .line 525
    :cond_2
    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    if-ne v0, v1, :cond_3

    .line 526
    sget-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    goto :goto_2

    .line 527
    :cond_3
    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_POST_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    if-ne v0, v1, :cond_b

    .line 529
    :cond_4
    sget-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    goto :goto_2

    .line 531
    :cond_5
    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v1, v2, :cond_b

    .line 533
    sget-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_NONE:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    goto :goto_2

    .line 505
    :cond_6
    :goto_0
    sget-object v1, Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;->HIGHLIGHT:Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;

    invoke-static {v1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setEntryPoint(Lcom/amazon/kcp/reader/InfoCardMetricsManager$EntryPoint;)V

    .line 507
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 509
    sget-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    goto :goto_2

    .line 510
    :cond_7
    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_POST_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    if-ne v0, v1, :cond_8

    goto :goto_1

    .line 514
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->isCurrentSelectionQuickHighlightable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 515
    sget-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    goto :goto_2

    .line 517
    :cond_9
    sget-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    goto :goto_2

    .line 513
    :cond_a
    :goto_1
    sget-object v0, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_POST_NORMAL:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    .line 536
    :cond_b
    :goto_2
    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_NONE:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    if-eq v0, v1, :cond_c

    .line 540
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->airInCSUtil:Lcom/amazon/kcp/debug/IAIRInCSUtil;

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAIRInCSUtil;->isAccessibilityProviderPlaying()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 541
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 543
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAccessibilityProviders()Ljava/util/Collection;

    move-result-object v1

    .line 544
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;

    .line 545
    invoke-interface {v2}, Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;->stopReadingBook()V

    goto :goto_3

    .line 551
    :cond_c
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelectionDisplay(Lcom/amazon/android/docviewer/selection/SelectionDisplay;)V

    return-void
.end method


# virtual methods
.method public canAnnotate()Z
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->canHighlight()Z

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

    .line 291
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 295
    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected createHighlightAndDisplayNoteUI(ILjava/lang/String;)V
    .locals 8

    .line 116
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedFirstWordStartId()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedLastWordEndId()I

    move-result v1

    .line 122
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setStateCreatingAnnotation()V

    .line 124
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 126
    sget-object p1, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->TAG:Ljava/lang/String;

    const-string p2, "The current ReaderActivity is null. Can not display the note UI"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 132
    iget-object v4, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 140
    :cond_1
    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 141
    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v4

    .line 142
    sget v5, Lcom/amazon/kindle/krl/R$string;->note_view_title_page:I

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v6

    invoke-virtual {v2, v5, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 144
    :cond_2
    sget v5, Lcom/amazon/kindle/krl/R$string;->note_view_title:I

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-virtual {v2, v5, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string/jumbo v5, "title"

    .line 146
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "selectionStartPos"

    .line 149
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "selectionEndPos"

    .line 150
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "selectedAnnotationStart"

    .line 151
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "noteEditorEntry"

    .line 152
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNoteUIProvider()Lcom/amazon/kcp/reader/notebook/INoteUIProvider;

    move-result-object p1

    invoke-interface {p1, v3, v2}, Lcom/amazon/kcp/reader/notebook/INoteUIProvider;->showNoteEditDialog(Landroid/os/Bundle;Lcom/amazon/kcp/reader/ReaderActivity;)V

    return-void
.end method

.method createSelection(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;ZLcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 8

    .line 319
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v2

    .line 320
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq v2, v1, :cond_5

    if-ne v3, v1, :cond_0

    goto :goto_2

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    if-nez v1, :cond_1

    .line 331
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 332
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/amazon/kcp/util/AnnotationUtils;->setAnnotationColor(Ljava/util/Map;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/amazon/kcp/util/AnnotationUtils;->setAnnotationSelectionType(Ljava/util/Map;Ljava/lang/String;)V

    .line 335
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getPreviousElementInPagePosition(I)I

    move-result v4

    .line 336
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, v3}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getNextElementInPagePosition(I)I

    move-result v5

    .line 337
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    invoke-virtual {p4}, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v1 .. v7}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->addHighlight(IIIILjava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    .line 338
    sget-object p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->CREATED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setAnnotationOrigin(Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;)V

    .line 340
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p4, "AnnotationCreationButtons"

    const-string v0, "HighlightAdded"

    invoke-virtual {p1, p4, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    if-eqz p2, :cond_3

    .line 348
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->YELLOW:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_0
    iget-object v3, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationMetricRecorder:Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;

    invoke-static {v2, v1, v0, v3, p4}, Lcom/amazon/kcp/util/AnnotationUtils;->setAnnotationColor(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Z

    .line 351
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/amazon/kcp/util/AnnotationUtils;->setAnnotationSelectionType(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Z

    .line 354
    sget-object p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->LOADED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setAnnotationOrigin(Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;)V

    .line 356
    :goto_1
    invoke-virtual {p0, p2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->setLastUsedHighlightColor(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V

    if-eqz p3, :cond_4

    .line 359
    iget-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public dispose()V
    .locals 1

    .line 585
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public getCoveringHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    new-instance v3, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v3, v0, v1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    invoke-interface {v2, v3}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getHighlightCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 109
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getLastUsedHighlightColor()Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;
    .locals 1

    .line 463
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getHighlightColor()Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfSelectedWords(I)I
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v0

    .line 479
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v1

    .line 480
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 483
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcom/amazon/android/docviewer/KindleDoc;->getNumWordsBetweenPositions(III)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 99
    instance-of v1, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    goto :goto_0

    .line 102
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->TAG:Ljava/lang/String;

    const-string v1, "Current activity is NOT a reader activity! Some selection functionality may not work!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasSelectionOnScreen()Z
    .locals 4

    .line 439
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 445
    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v3

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 446
    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    if-lt v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isCurrentSelectionQuickHighlightable()Z
    .locals 2

    .line 472
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->canHighlight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->quickHighlightMinWords:I

    .line 474
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getNumberOfSelectedWords(I)I

    move-result v0

    iget v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->quickHighlightMinWords:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onHighlightButtonClicked(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Z)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "SelectionButtonHighlight"

    .line 305
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->deleteHighlight(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 307
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->SELECTION_MENU:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->createSelection(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;ZLcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    :goto_0
    return-void
.end method

.method public onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 556
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eq v0, v1, :cond_0

    return-void

    .line 560
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController$1;->$SwitchMap$com$amazon$android$docviewer$ObjectSelectionModelEvent$Type:[I

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 571
    sget-object v0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->updateSelectionDisplayState()V

    goto :goto_0

    .line 565
    :cond_2
    invoke-direct {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->onSelectionDisplayChanged()V

    goto :goto_0

    .line 562
    :cond_3
    invoke-direct {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->updateSelectionDisplayState()V

    :goto_0
    return-void
.end method

.method public searchInBrowser()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 223
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "query"

    .line 224
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    sget-object v1, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->TAG:Ljava/lang/String;

    const-string v2, "No application found to handle web search"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "Book"

    const-string v2, "SearchWeb"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    return-void
.end method

.method public searchInDocument()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedTextToSearch()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->startSearch(Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    return-void
.end method

.method public searchInWikipedia()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIKIPEDIA_LOOKUP:asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",word="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 256
    sget-object v2, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->TAG:Ljava/lang/String;

    const-string v3, "Unable to log WIKIPEDIA_LOOKUP"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/RedirectUrlBuilder;->getWikiRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    invoke-direct {p0, v1, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->startWebViewActivity(Lcom/amazon/kcp/reader/ReaderActivity;Ljava/lang/String;)V

    .line 264
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "Book"

    const-string v2, "SearchWikipedia"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->objectModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    return-void
.end method

.method public setLastUsedHighlightColor(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V
    .locals 1

    .line 489
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setHighlightColor(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V

    return-void
.end method

.method public setQuickHighlightMinWords(I)V
    .locals 0

    .line 467
    iput p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionController;->quickHighlightMinWords:I

    return-void
.end method
