.class public Lcom/amazon/klo/KindleLearningObjectActivity;
.super Lcom/amazon/klo/BaseKloActivity;
.source "KindleLearningObjectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;
    }
.end annotation


# static fields
.field private static final RESTORED_INTENT:Ljava/lang/String; = "restoredIntent"

.field private static final SOFTKEY_SERVICE_NAME:Ljava/lang/String; = "softkeybar"

.field private static final TAG:Ljava/lang/String;

.field private static kloTutorialProvider:Lcom/amazon/klo/KLOTutorialProvider;


# instance fields
.field private chapterTitle:Ljava/lang/String;

.field private volatile contentLoaded:Z

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private flashcardsButtonEnabled:Z

.field private kloActionBarClickListener:Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;

.field private kloChapterOnItemSelectedListener:Lcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;

.field private kloHeaderBar:Lcom/amazon/klo/IKLOHeaderBar;

.field private listView:Lcom/amazon/klo/list/TermListView;

.field private volatile savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

.field private shouldReportXrayOpenFtueEvent:Z

.field private sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

.field private volatile suppressSavingState:Z

.field private termListViewOnScrollListener:Lcom/amazon/klo/list/TermListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloTutorialProvider:Lcom/amazon/klo/KLOTutorialProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/amazon/klo/BaseKloActivity;-><init>()V

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->suppressSavingState:Z

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->contentLoaded:Z

    .line 99
    iput-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->flashcardsButtonEnabled:Z

    .line 101
    new-instance v0, Lcom/amazon/klo/KindleLearningObjectActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/klo/KindleLearningObjectActivity$1;-><init>(Lcom/amazon/klo/KindleLearningObjectActivity;)V

    iput-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->termListViewOnScrollListener:Lcom/amazon/klo/list/TermListView$OnScrollListener;

    .line 110
    new-instance v0, Lcom/amazon/klo/KindleLearningObjectActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/klo/KindleLearningObjectActivity$2;-><init>(Lcom/amazon/klo/KindleLearningObjectActivity;)V

    iput-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloChapterOnItemSelectedListener:Lcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;

    .line 123
    new-instance v0, Lcom/amazon/klo/KindleLearningObjectActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/klo/KindleLearningObjectActivity$3;-><init>(Lcom/amazon/klo/KindleLearningObjectActivity;)V

    iput-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloActionBarClickListener:Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/klo/KindleLearningObjectActivity;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->suppressSavingState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/klo/KindleLearningObjectActivity;IZ)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/amazon/klo/KindleLearningObjectActivity;->selectChapter(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/amazon/klo/KindleLearningObjectActivity;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/klo/KindleLearningObjectActivity;->setLoadingSpinnerVisibility(I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/amazon/klo/KindleLearningObjectActivity;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->contentLoaded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/list/TermListView$OnScrollListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->termListViewOnScrollListener:Lcom/amazon/klo/list/TermListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/klo/KindleLearningObjectActivity;->getCurrentActivityState()Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/klo/KindleLearningObjectActivity;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->chapterTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/klo/KindleLearningObjectActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->chapterTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/list/TermListView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->listView:Lcom/amazon/klo/list/TermListView;

    return-object p0
.end method

.method static synthetic access$400()Lcom/amazon/klo/KLOTutorialProvider;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloTutorialProvider:Lcom/amazon/klo/KLOTutorialProvider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/IKLOHeaderBar;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloHeaderBar:Lcom/amazon/klo/IKLOHeaderBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/klo/KindleLearningObjectActivity;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->shouldReportXrayOpenFtueEvent:Z

    return p0
.end method

.method static synthetic access$602(Lcom/amazon/klo/KindleLearningObjectActivity;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->shouldReportXrayOpenFtueEvent:Z

    return p1
.end method

.method static synthetic access$700(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/sidecar/SidecarHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/klo/KindleLearningObjectActivity;Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/klo/KindleLearningObjectActivity;->loadContent(Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;)V

    return-void
.end method

.method private getCurrentActivityState()Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;
    .locals 2

    .line 551
    new-instance v0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;-><init>(Lcom/amazon/klo/KindleLearningObjectActivity$1;)V

    .line 553
    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageStartPosition:Ljava/lang/String;

    .line 554
    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageEndPosition:Ljava/lang/String;

    .line 555
    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloHeaderBar:Lcom/amazon/klo/IKLOHeaderBar;

    invoke-interface {v1}, Lcom/amazon/klo/IKLOHeaderBar;->getSelectedChapterPosition()I

    move-result v1

    iput v1, v0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->selectedChapterPosition:I

    .line 557
    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->listView:Lcom/amazon/klo/list/TermListView;

    invoke-virtual {v1}, Lcom/amazon/klo/list/TermListView;->getSavedState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->scrollState:Landroid/os/Parcelable;

    return-object v0
.end method

.method private goToPosition(I)V
    .locals 2

    .line 630
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-nez v0, :cond_0

    .line 632
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    const-string v0, "No KRX!"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 636
    :cond_0
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 639
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get ReaderManager"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 643
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 646
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get bookNavigator"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 651
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    if-nez v1, :cond_3

    .line 654
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get positionFactory"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 658
    :cond_3
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-nez p1, :cond_4

    .line 661
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get position"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 664
    :cond_4
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method private loadContent(Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;)V
    .locals 8

    .line 482
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getSelectorNames()Ljava/util/List;

    move-result-object v3

    .line 483
    iget v0, p1, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->selectedChapterPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 488
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getCurrentSelectorIndex()I

    move-result v0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 490
    :goto_0
    invoke-static {}, Lcom/amazon/klo/KLOMetricManager;->markFilterSelectionInitialized()V

    .line 494
    iget-object v5, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v5, v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->isFrontMatter(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v5, v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->isEndMatter(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 502
    :cond_1
    invoke-direct {p0, v0, v4}, Lcom/amazon/klo/KindleLearningObjectActivity;->selectChapter(IZ)Z

    move-result v1

    move v5, v0

    move v0, v1

    goto :goto_2

    .line 498
    :cond_2
    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/amazon/klo/KindleLearningObjectActivity;->selectChapter(IZ)Z

    const/4 v0, 0x1

    const/4 v5, 0x0

    :goto_2
    if-nez v4, :cond_3

    .line 507
    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->listView:Lcom/amazon/klo/list/TermListView;

    iget-object p1, p1, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->scrollState:Landroid/os/Parcelable;

    invoke-virtual {v1, p1}, Lcom/amazon/klo/list/TermListView;->restoreState(Landroid/os/Parcelable;)V

    .line 510
    :cond_3
    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloHeaderBar:Lcom/amazon/klo/IKLOHeaderBar;

    iget-object v6, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloChapterOnItemSelectedListener:Lcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;

    iget-object v7, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloActionBarClickListener:Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;

    move-object v2, p0

    move v4, v0

    invoke-interface/range {v1 .. v7}, Lcom/amazon/klo/IKLOHeaderBar;->loadContent(Landroidx/appcompat/app/ActionBarActivity;Ljava/util/List;ZILcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->chapterTitle:Ljava/lang/String;

    .line 516
    new-instance p1, Lcom/amazon/klo/KindleLearningObjectActivity$7;

    invoke-direct {p1, p0}, Lcom/amazon/klo/KindleLearningObjectActivity$7;-><init>(Lcom/amazon/klo/KindleLearningObjectActivity;)V

    .line 527
    invoke-static {p1}, Lcom/amazon/klo/KindleLearningObjectActivity;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 528
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->chapterTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getBookTerms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/klo/KLOMetricManager;->reportXrayTermsLoaded(Ljava/lang/String;I)V

    .line 529
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "OpenTime"

    const-string v1, "KINDLE_LEARNING_OBJECTS"

    invoke-interface {p1, v1, v0, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static runOnUIThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 177
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectChapter(IZ)Z
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getSelectorTerms(I)Ljava/util/List;

    move-result-object v0

    .line 536
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 540
    iget-object p2, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {p2, v2}, Lcom/amazon/klo/sidecar/SidecarHandler;->getSelectorTerms(I)Ljava/util/List;

    move-result-object v0

    const/4 p1, 0x0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ltz p1, :cond_1

    move v2, p1

    .line 543
    :cond_1
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getSelectorNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 544
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/amazon/klo/KLOMetricManager;->reportTermListFiltered(Ljava/lang/String;I)V

    .line 545
    invoke-direct {p0, v0}, Lcom/amazon/klo/KindleLearningObjectActivity;->setupList(Ljava/util/List;)V

    return p2
.end method

.method private setLoadingSpinnerVisibility(I)V
    .locals 1

    .line 669
    sget v0, Lcom/amazon/klo/R$id;->klo_spinner_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static setTutorialProvider(Lcom/amazon/klo/KLOTutorialProvider;)V
    .locals 0

    .line 187
    sput-object p0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloTutorialProvider:Lcom/amazon/klo/KLOTutorialProvider;

    return-void
.end method

.method private setupList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/klo/list/TermListItem;",
            ">;)V"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->listView:Lcom/amazon/klo/list/TermListView;

    new-instance v1, Lcom/amazon/klo/list/TermListAdapter;

    sget v2, Lcom/amazon/klo/R$layout;->klo_list_item:I

    invoke-direct {v1, p0, v2, p1}, Lcom/amazon/klo/list/TermListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/amazon/klo/list/TermListView;->setAdapter(Lcom/amazon/klo/list/TermListAdapter;)V

    .line 573
    sget v0, Lcom/amazon/klo/R$id;->klo_no_terms:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 574
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 576
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    iput-boolean v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->flashcardsButtonEnabled:Z

    .line 578
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 582
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->flashcardsButtonEnabled:Z

    .line 584
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 590
    :goto_0
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->listView:Lcom/amazon/klo/list/TermListView;

    new-instance v1, Lcom/amazon/klo/KindleLearningObjectActivity$8;

    invoke-direct {v1, p0, p0, p1}, Lcom/amazon/klo/KindleLearningObjectActivity$8;-><init>(Lcom/amazon/klo/KindleLearningObjectActivity;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/amazon/klo/list/TermListView;->setOnItemClickListener(Lcom/amazon/klo/list/TermListView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected initHeader()V
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/amazon/klo/BaseKloActivity;->initHeader()V

    .line 194
    iget-object v0, p0, Lcom/amazon/klo/BaseKloActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/klo/KindleLearningObjectActivity$4;

    invoke-direct {v1, p0}, Lcom/amazon/klo/KindleLearningObjectActivity$4;-><init>(Lcom/amazon/klo/KindleLearningObjectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 417
    sget-object p2, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    const-string v0, "KLO Activity got RESULT_OK"

    invoke-static {p2, v0}, Lcom/amazon/klo/sdk/KRX;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "readerJumpToPosition"

    .line 418
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 421
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 424
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "restoredIntent"

    .line 430
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 434
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->loadFromBundles([Landroid/os/Bundle;)Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    move-result-object p3

    .line 435
    invoke-virtual {p3}, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->asBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 437
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookBackStack()Lcom/amazon/kindle/krx/reader/IBookBackStack;

    move-result-object p3

    new-instance v0, Lcom/amazon/klo/KindleLearningObjectActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/klo/KindleLearningObjectActivity$6;-><init>(Lcom/amazon/klo/KindleLearningObjectActivity;Landroid/content/Intent;)V

    .line 438
    invoke-interface {p3, v0}, Lcom/amazon/kindle/krx/reader/IBookBackStack;->pushPostBackAction(Lcom/amazon/kindle/krx/reader/IBookBackStack$PostBackAction;)V

    .line 454
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/klo/KindleLearningObjectActivity;->goToPosition(I)V

    .line 455
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 475
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getInstance()Lcom/amazon/klo/KindleLearningObjectPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/klo/KindleLearningObjectPlugin;->discardIntent()V

    .line 477
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 212
    const-class v0, Lcom/amazon/klo/KindleLearningObjectPlugin;

    invoke-super {p0, p1}, Lcom/amazon/klo/BaseKloActivity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->bindActivityToCurrentBook(Landroid/app/Activity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v1}, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->loadFromBundles([Landroid/os/Bundle;)Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    .line 218
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-nez v1, :cond_0

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/amazon/klo/sdk/KRX;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was not initialized with KRX SDK"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 225
    :cond_0
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-nez v1, :cond_1

    .line 229
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was initialized with null book"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 234
    :cond_1
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v3

    if-nez v3, :cond_2

    .line 236
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was initialized with null DocViewer"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 241
    :cond_2
    new-instance v0, Lcom/amazon/klo/sidecar/SidecarHandler;

    iget-object v3, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    iget-object v3, v3, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageStartPosition:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    iget-object v5, v5, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageEndPosition:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/amazon/klo/sidecar/SidecarHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    if-eqz v0, :cond_8

    .line 244
    invoke-virtual {v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 250
    :cond_3
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    const-string v3, "KLO Activity Created"

    invoke-static {v0, v3}, Lcom/amazon/klo/sdk/KRX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.amazon.klo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 253
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_6

    .line 256
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "restoredIntent"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 266
    sget-object v3, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    const-string v5, "KLO Activity Restoring Intent"

    invoke-static {v3, v5}, Lcom/amazon/klo/sdk/KRX;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 267
    invoke-direct {p0, v3}, Lcom/amazon/klo/KindleLearningObjectActivity;->setLoadingSpinnerVisibility(I)V

    const/16 v3, 0x7b

    .line 268
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 271
    :cond_6
    sget v0, Lcom/amazon/klo/R$layout;->klo_main:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    if-nez p1, :cond_7

    const/4 v2, 0x1

    .line 275
    :cond_7
    iput-boolean v2, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->shouldReportXrayOpenFtueEvent:Z

    .line 277
    invoke-virtual {p0}, Lcom/amazon/klo/KindleLearningObjectActivity;->initHeader()V

    .line 278
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/klo/KLOPlatformSpecific;->getHeaderBar(Landroid/content/Context;)Lcom/amazon/klo/IKLOHeaderBar;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloHeaderBar:Lcom/amazon/klo/IKLOHeaderBar;

    .line 279
    sget p1, Lcom/amazon/klo/R$id;->klo_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/klo/list/TermListView;

    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->listView:Lcom/amazon/klo/list/TermListView;

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/klo/KLOPlatformSpecific;->getDevicePlatformSpecificUtils(Landroid/content/Context;)Lcom/amazon/klo/IDevicePlatformSpecificUtils;

    move-result-object p1

    const-string/jumbo v0, "softkeybar"

    invoke-interface {p1, p0, v0}, Lcom/amazon/klo/IDevicePlatformSpecificUtils;->configureSoftkeysShowOnlyBack(Landroid/app/Activity;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 286
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageStartPosition:Ljava/lang/String;

    .line 287
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->currentPageEndPosition:Ljava/lang/String;

    .line 289
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/amazon/klo/KindleLearningObjectActivity$5;

    invoke-direct {v0, p0, v1}, Lcom/amazon/klo/KindleLearningObjectActivity$5;-><init>(Lcom/amazon/klo/KindleLearningObjectActivity;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 246
    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 334
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 335
    sget v1, Lcom/amazon/klo/R$menu;->klo_standard_actions:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 337
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->listView:Lcom/amazon/klo/list/TermListView;

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0}, Lcom/amazon/klo/list/TermListView;->cancelPlaceholderCalculationTask()V

    .line 401
    :cond_1
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 403
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->unBindActivityFromCurrentBook(Landroid/app/Activity;)V

    .line 405
    :cond_2
    invoke-super {p0}, Lcom/amazon/klo/ThemeActivity;->onDestroy()V

    .line 406
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectActivity;->TAG:Ljava/lang/String;

    const-string v1, "KLO Activity Destroyed"

    invoke-static {v0, v1}, Lcom/amazon/klo/sdk/KRX;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 313
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/amazon/klo/KindleLearningObjectActivity;->onBackPressed()V

    return v1

    .line 318
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/amazon/klo/R$id;->klo_create_flashcards:I

    if-ne v0, v2, :cond_2

    .line 320
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloActionBarClickListener:Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;

    invoke-interface {p1}, Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;->onCreateFlashcards()V

    .line 321
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectActivity;->kloTutorialProvider:Lcom/amazon/klo/KLOTutorialProvider;

    if-eqz p1, :cond_1

    .line 323
    invoke-virtual {p1}, Lcom/amazon/klo/KLOTutorialProvider;->onExportToFlashcardsClicked()V

    :cond_1
    return v1

    .line 328
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 383
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 384
    iget-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->suppressSavingState:Z

    if-nez v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/amazon/klo/KindleLearningObjectActivity;->getCurrentActivityState()Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 343
    sget v0, Lcom/amazon/klo/R$id;->klo_create_flashcards:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 344
    iget-boolean v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->flashcardsButtonEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 346
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 352
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->suppressSavingState:Z

    .line 358
    iget-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->contentLoaded:Z

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->kloHeaderBar:Lcom/amazon/klo/IKLOHeaderBar;

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    iget v1, v1, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->selectedChapterPosition:I

    invoke-interface {v0, v1}, Lcom/amazon/klo/IKLOHeaderBar;->restoreChapterSelection(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iput-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->chapterTitle:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->listView:Lcom/amazon/klo/list/TermListView;

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    iget-object v1, v1, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->scrollState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/amazon/klo/list/TermListView;->restoreState(Landroid/os/Parcelable;)V

    .line 374
    :cond_0
    invoke-static {}, Lcom/amazon/klo/KLOMetricManager;->markFilterSelectionInitialized()V

    .line 375
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->chapterTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    iget-object v2, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    iget v2, v2, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->selectedChapterPosition:I

    invoke-virtual {v1, v2}, Lcom/amazon/klo/sidecar/SidecarHandler;->getSelectorTerms(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/klo/KLOMetricManager;->reportTermListFiltered(Ljava/lang/String;I)V

    .line 376
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->chapterTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->sidecarHandler:Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-virtual {v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getBookTerms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/klo/KLOMetricManager;->reportXrayTermsLoaded(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->suppressSavingState:Z

    if-nez v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/amazon/klo/KindleLearningObjectActivity;->getCurrentActivityState()Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity;->savedState:Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    invoke-virtual {v0}, Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
