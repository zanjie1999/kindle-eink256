.class public Lcom/amazon/kcp/reader/ReaderNavigator;
.super Ljava/lang/Object;
.source "ReaderNavigator.java"


# static fields
.field private static final DEFAULT_VELOCITY:F


# instance fields
.field private readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private selector:Lcom/amazon/android/docviewer/IObjectSelector;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selector:Lcom/amazon/android/docviewer/IObjectSelector;

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    return-void
.end method

.method private areSelectionButtonsVisible()Z
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->hasSelectionOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    return-object v0
.end method

.method private hideFocusForView(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private hideViewOptionsMenuIfVisible()V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->hideAllViewOptionOverlays()Z

    :cond_0
    return-void
.end method

.method private pageNext(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z
    .locals 1

    .line 366
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/ReaderNavigator;->turnPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1
.end method

.method private pagePrev(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z
    .locals 1

    .line 377
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/ReaderNavigator;->turnPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1
.end method

.method private setupSelectorAndSelectionModel()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selector:Lcom/amazon/android/docviewer/IObjectSelector;

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selector:Lcom/amazon/android/docviewer/IObjectSelector;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    :cond_1
    return-void
.end method

.method private showFocusForView(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 408
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private toggleFocusForView(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideFocusForView(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 400
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->showFocusForView(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private turnPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->isPageTurnInteractionDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/KindleDocView;->turnPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected getDocView()Lcom/amazon/android/docviewer/KindleDocView;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    return-object v0
.end method

.method public getPagingDirection(I)Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;
    .locals 2

    .line 450
    sget-object v0, Lcom/amazon/kcp/reader/ReaderNavigator$1;->$SwitchMap$com$amazon$kindle$krx$ui$KRXBookReadingDirection:[I

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 460
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    goto :goto_1

    :cond_1
    if-gez p1, :cond_4

    .line 462
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    .line 453
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    goto :goto_1

    :cond_3
    if-gez p1, :cond_4

    .line 455
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public handlePageTurnOffset(I)Z
    .locals 3

    .line 477
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->isPageTurnInteractionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->getPagingDirection(I)Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    move-result-object v0

    .line 483
    sget-object v2, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->isPrevPageAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sget-object v2, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 484
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->isNextPageAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 488
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/amazon/android/docviewer/KindleDocView;->setRawPageTurnOffset(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;I)V

    const/4 p1, 0x0

    .line 492
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->getPageTurnOffset()I

    move-result v1

    if-eq p1, v1, :cond_4

    .line 493
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/amazon/android/docviewer/KindleDocView;->setPageTurnOffset(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;I)V

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 55
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->setupSelectorAndSelectionModel()V

    .line 56
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const/16 v1, 0x3d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_8

    const/16 v1, 0x3e

    const/4 v4, 0x0

    const-string v5, "PageTurnKeyboard"

    const-string v6, "ReaderNavigator"

    if-eq p1, v1, :cond_5

    const/16 v1, 0x42

    if-eq p1, v1, :cond_3

    const/16 v1, 0x44

    if-eq p1, v1, :cond_2

    const-string v1, "PageTurnVolumeButtons"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 124
    :pswitch_0
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areVolumeKeysPageControls()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 125
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 126
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideViewOptionsMenuIfVisible()V

    .line 127
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 128
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v6, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageNext(F)Z

    goto/16 :goto_2

    .line 137
    :pswitch_1
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areVolumeKeysPageControls()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 138
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 139
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideViewOptionsMenuIfVisible()V

    .line 140
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 141
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v6, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/reader/ReaderNavigator;->pagePrev(F)Z

    goto/16 :goto_2

    .line 109
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 110
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideViewOptionsMenuIfVisible()V

    .line 112
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->areSelectionButtonsVisible()Z

    move-result p1

    if-nez p1, :cond_9

    .line 113
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageRight()Z

    move-result v2

    .line 115
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    sget p2, Lcom/amazon/kindle/krl/R$id;->bookmark_page_toggle_container:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideFocusForView(Landroid/view/View;)Z

    goto/16 :goto_2

    .line 94
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 95
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideViewOptionsMenuIfVisible()V

    .line 97
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->areSelectionButtonsVisible()Z

    move-result p1

    if-nez p1, :cond_9

    .line 98
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageLeft()Z

    move-result v2

    .line 100
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    sget p2, Lcom/amazon/kindle/krl/R$id;->bookmark_page_toggle_container:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideFocusForView(Landroid/view/View;)Z

    goto/16 :goto_2

    .line 60
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 61
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideViewOptionsMenuIfVisible()V

    .line 63
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->areSelectionButtonsVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageNext()Z

    move-result v2

    .line 66
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    sget p2, Lcom/amazon/kindle/krl/R$id;->bookmark_page_toggle_container:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideFocusForView(Landroid/view/View;)Z

    goto/16 :goto_2

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selector:Lcom/amazon/android/docviewer/IObjectSelector;

    if-eqz p1, :cond_9

    .line 69
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IObjectSelector;->selectNext()Z

    move-result v2

    goto/16 :goto_2

    .line 77
    :pswitch_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideViewOptionsMenuIfVisible()V

    .line 80
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->areSelectionButtonsVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 81
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pagePrev()Z

    move-result v2

    .line 83
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    sget p2, Lcom/amazon/kindle/krl/R$id;->bookmark_page_toggle_container:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideFocusForView(Landroid/view/View;)Z

    goto/16 :goto_2

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selector:Lcom/amazon/android/docviewer/IObjectSelector;

    if-eqz p1, :cond_9

    .line 86
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IObjectSelector;->selectPrevious()Z

    move-result v2

    goto/16 :goto_2

    .line 168
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->areSelectionButtonsVisible()Z

    move-result p1

    if-nez p1, :cond_4

    .line 169
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_9

    .line 170
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/reader/ReaderNavigator;->pagePrev(F)Z

    goto :goto_2

    .line 182
    :cond_3
    :pswitch_6
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selector:Lcom/amazon/android/docviewer/IObjectSelector;

    if-eqz p1, :cond_4

    .line 183
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 184
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->selector:Lcom/amazon/android/docviewer/IObjectSelector;

    sget-object p2, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DEFAULT:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/IObjectSelector;->performAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    .line 151
    :cond_5
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->areSelectionButtonsVisible()Z

    move-result p1

    if-nez p1, :cond_4

    .line 152
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_9

    .line 153
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 157
    :cond_6
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageNext(F)Z

    goto :goto_2

    .line 154
    :cond_7
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/reader/ReaderNavigator;->pagePrev(F)Z

    goto :goto_2

    .line 194
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_9

    .line 195
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderNavigator;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    sget p2, Lcom/amazon/kindle/krl/R$id;->bookmark_page_toggle_container:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 196
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->toggleFocusForView(Landroid/view/View;)Z

    move-result v2

    :cond_9
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 213
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->setupSelectorAndSelectionModel()V

    const/16 v0, 0xa

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0x9

    .line 215
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    .line 218
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_1

    const-string p1, "PageTurnTrackpad"

    const-string v1, "ReaderNavigator"

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideViewOptionsMenuIfVisible()V

    .line 222
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->areSelectionButtonsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageLeft()Z

    move-result p1

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 227
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->hideViewOptionsMenuIfVisible()V

    .line 229
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->areSelectionButtonsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageRight()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pageLeft()Z
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageLeft(F)Z

    move-result v0

    return v0
.end method

.method public pageLeft(F)Z
    .locals 2

    .line 255
    sget-object v0, Lcom/amazon/kcp/reader/ReaderNavigator$1;->$SwitchMap$com$amazon$kindle$krx$ui$KRXBookReadingDirection:[I

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 260
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->pagePrev(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1

    .line 257
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageNext(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1
.end method

.method public pageNext()Z
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageNext(F)Z

    move-result v0

    return v0
.end method

.method public pageNext(F)Z
    .locals 2

    .line 305
    sget-object v0, Lcom/amazon/kcp/reader/ReaderNavigator$1;->$SwitchMap$com$amazon$kindle$krx$ui$KRXBookReadingDirection:[I

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 310
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToLeft:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageNext(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1

    .line 307
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageNext(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1
.end method

.method public pagePrev()Z
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pagePrev(F)Z

    move-result v0

    return v0
.end method

.method public pagePrev(F)Z
    .locals 2

    .line 330
    sget-object v0, Lcom/amazon/kcp/reader/ReaderNavigator$1;->$SwitchMap$com$amazon$kindle$krx$ui$KRXBookReadingDirection:[I

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 335
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->pagePrev(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1

    .line 332
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToLeft:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->pagePrev(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1
.end method

.method public pageRight()Z
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageRight(F)Z

    move-result v0

    return v0
.end method

.method public pageRight(F)Z
    .locals 2

    .line 280
    sget-object v0, Lcom/amazon/kcp/reader/ReaderNavigator$1;->$SwitchMap$com$amazon$kindle$krx$ui$KRXBookReadingDirection:[I

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 285
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToLeft:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageNext(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1

    .line 282
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToLeft:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->pagePrev(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1
.end method

.method public resetPage()Z
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->resetPage(F)Z

    move-result v0

    return v0
.end method

.method public resetPage(F)Z
    .locals 2

    .line 355
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/amazon/android/docviewer/KindleDocView;->turnPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    move-result p1

    return p1
.end method
