.class public Lcom/amazon/nwstd/activities/PeriodicalReaderController;
.super Ljava/lang/Object;
.source "PeriodicalReaderController.java"

# interfaces
.implements Lcom/amazon/nwstd/activities/IPeriodicalReaderController;


# instance fields
.field protected mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTutorialWithScenario([I)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/amazon/nwstd/activities/PeriodicalReaderController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-static {p1}, Lcom/amazon/nwstd/tutorial/TutorialHelper;->quitTutorialMode(Landroid/app/Activity;)V

    return-void
.end method

.method public init(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/nwstd/activities/PeriodicalReaderController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    return-void
.end method

.method public openTOC()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/amazon/nwstd/activities/PeriodicalReaderController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeGridView()V

    .line 36
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/nwstd/activities/PeriodicalReaderController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    const-class v2, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, "IsInvokedFromReader"

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/amazon/nwstd/activities/PeriodicalReaderController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-static {v1}, Lcom/amazon/nwstd/toc/TOCUtils;->getCurrentListViewIdx(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)I

    move-result v1

    const-string v2, "CurrentArticleIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/amazon/nwstd/activities/PeriodicalReaderController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 40
    iget-object v0, p0, Lcom/amazon/nwstd/activities/PeriodicalReaderController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    sget v1, Lcom/amazon/kindle/newsstand/forstandalone/R$anim;->slide_fade_from_bottom:I

    sget v2, Lcom/amazon/kindle/newsstand/forstandalone/R$anim;->no_anim:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 41
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_LIST_OF_ARTICLES:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 42
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_SIDE_PANEL_LIST_OF_ARTICLES:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 43
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/nwstd/activities/PeriodicalReaderController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    iget-object v1, v1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->mTOCMetricTag:Ljava/lang/String;

    const-string v2, "OpenToc"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startSearch(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;Ljava/lang/String;)V
    .locals 2

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.SEARCH"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "query"

    .line 56
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
