.class public Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "PeriodicalContentListActivity.java"


# static fields
.field public static final EXTRA_CURRENT_ARTICLE_INDEX:Ljava/lang/String; = "CurrentArticleIndex"

.field public static final IS_INVOKED_FROM_READER:Ljava/lang/String; = "IsInvokedFromReader"

.field public static final RETURN_FROM_TOC:Ljava/lang/String; = "ReturnFromToc"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArticleListView:Landroid/widget/ListView;

.field private mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

.field private mImageFactory:Lcom/amazon/android/system/drawing/AndroidImageFactory;

.field private mTocView:Lcom/amazon/nwstd/toc/TOCView;

.field private mTocViewController:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mArticleListView:Landroid/widget/ListView;

    .line 66
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mImageFactory:Lcom/amazon/android/system/drawing/AndroidImageFactory;

    .line 67
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    .line 68
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mTocViewController:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;)Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isBookKept()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookKept()Z

    move-result v0

    return v0
.end method

.method private isNeutronPhase1Enabled()Z
    .locals 2

    .line 309
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareView()V
    .locals 5

    .line 206
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getImageFactory()Lcom/amazon/kindle/util/drawing/ImageFactory;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/system/drawing/AndroidImageFactory;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mImageFactory:Lcom/amazon/android/system/drawing/AndroidImageFactory;

    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 209
    sget v1, Lcom/amazon/kindle/newsstand/forstandalone/R$layout;->periodical_toc_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/TOCView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    .line 212
    new-instance v0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;

    invoke-direct {v0}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mTocViewController:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;

    .line 213
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->initialize(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V

    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 217
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 218
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mImageFactory:Lcom/amazon/android/system/drawing/AndroidImageFactory;

    const/4 v4, 0x0

    .line 216
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/nwstd/toc/TOCView;->initialize(Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/system/drawing/AndroidImageFactory;Z)V

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mTocViewController:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;

    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->getEventHandler()Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/toc/TOCView;->setEventHandler(Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;)V

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    invoke-virtual {v0}, Lcom/amazon/nwstd/toc/TOCView;->getArticleListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mArticleListView:Landroid/widget/ListView;

    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public gracefullyKillActivity()V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->finishAllActivities()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 72
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->NWSTD_OPEN:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 73
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->TOC_ACTIVITY_ONCREATE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "CurrentArticleIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 78
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "NewsspaperOpen"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    .line 85
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    .line 88
    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 89
    instance-of v1, v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v1, :cond_1

    .line 90
    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 96
    sget p1, Lcom/amazon/kindle/newsstand/forstandalone/R$anim;->no_anim:I

    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$anim;->slide_fade_to_bottom:I

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->animateAndFinish(II)V

    goto :goto_1

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->prepareView()V

    .line 101
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->periodical_toc_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 102
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->isNeutronPhase1Enabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    sget v1, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->newtron_periodical_toc_toolbar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const/16 v2, 0x8

    .line 104
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 105
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v0

    .line 111
    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IDeviceContext;->startListeningForLauncherForeground(Lcom/amazon/kcp/redding/ReddingActivity;)V

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity$1;-><init>(Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;Lcom/amazon/kcp/reader/ReaderController;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    :goto_1
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->TOC_ACTIVITY_ONCREATE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {p1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 241
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->isNeutronPhase1Enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/forstandalone/R$menu;->periodical_article_list_mainmenu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 3

    .line 190
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    .line 194
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, p0, v2}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 197
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v0

    .line 198
    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IDeviceContext;->stopListeningForLauncherForeground(Lcom/amazon/kcp/redding/ReddingActivity;)V

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Lcom/amazon/nwstd/toc/TOCView;->destroy()V

    :cond_1
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mArticleListView:Landroid/widget/ListView;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->menuitem_reader_store:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object p1

    const-string v0, "kin_red_lib_0"

    invoke-interface {p1, v0}, Lcom/amazon/kcp/store/IWebStoreController;->showStorefront(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 271
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->menuitem_keep:I

    const-string v3, "PeriodicalReaderActivity"

    if-ne v0, v1, :cond_2

    .line 272
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->isBookKept()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, "Unkept"

    goto :goto_0

    :cond_1
    const-string v0, "Kept"

    .line 275
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    iget-object v4, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    xor-int/2addr p1, v2

    invoke-interface {v1, v4, p1}, Lcom/amazon/kcp/library/ILibraryController;->setBookKeptStatus(Ljava/lang/String;Z)V

    .line 276
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Periodical"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ViaContext"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 281
    sget-object v0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    const-string v3, "Unable to persist bookState"

    invoke-static {v0, v1, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 283
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->menuitem_search:I

    if-ne v0, v1, :cond_3

    .line 284
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    goto :goto_1

    .line 285
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->menuitem_home:I

    if-ne v0, v1, :cond_5

    .line 286
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->isNeutronPhase1Enabled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 287
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "LandingViaPeriodicalReaderMenu"

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryController;->showLandingPage()V

    .line 290
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 291
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return v2

    .line 298
    :cond_6
    sget-object v0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "We clicked on a menu item which doesn\'t exist?"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->onActivityPaused()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 249
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->menuitem_keep:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 251
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 252
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->isBookKept()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$drawable;->ic_menu_dontkeep:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 255
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$string;->menuitem_dontkeep:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 256
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/ILocalStorage;->isAvailable()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 258
    :cond_1
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$drawable;->ic_menu_keep:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 259
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$string;->menuitem_keep:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 260
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/ILocalStorage;->isAvailable()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 7

    .line 147
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mArticleListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 158
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-wide v4, v0, v3

    .line 159
    iget-object v6, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mArticleListView:Landroid/widget/ListView;

    long-to-int v5, v4

    invoke-virtual {v6, v5, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "CurrentArticleIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    .line 163
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/toc/TOCView;->selectCurrentArticle(I)V

    .line 169
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/activities/PeriodicalContentListActivity;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->onActivityResumed()V

    return-void
.end method

.method public onStart()V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->setActionBarDisplayOptions(II)V

    .line 141
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStart()V

    return-void
.end method

.method public requiresRegistration()Z
    .locals 1

    .line 228
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    .line 230
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    check-cast v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
