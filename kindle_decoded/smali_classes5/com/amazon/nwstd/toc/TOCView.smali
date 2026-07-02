.class public Lcom/amazon/nwstd/toc/TOCView;
.super Landroid/widget/LinearLayout;
.source "TOCView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field protected mArticleListView:Landroid/widget/ListView;

.field protected mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field protected mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

.field protected mImageFactory:Lcom/amazon/android/system/drawing/AndroidImageFactory;

.field protected mOpenArticleListener:Lcom/amazon/nwstd/toc/TOCListOpenArticleListener;

.field protected mPeriodicalToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

.field private mTOCListAdapter:Lcom/amazon/nwstd/toc/TOCListAdapter;

.field protected mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

.field protected mTOCMetricTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    .line 49
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListAdapter:Lcom/amazon/nwstd/toc/TOCListAdapter;

    .line 54
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mPeriodicalToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 59
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 65
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    .line 70
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mImageFactory:Lcom/amazon/android/system/drawing/AndroidImageFactory;

    .line 80
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    .line 49
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListAdapter:Lcom/amazon/nwstd/toc/TOCListAdapter;

    .line 54
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mPeriodicalToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 59
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 65
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    .line 70
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mImageFactory:Lcom/amazon/android/system/drawing/AndroidImageFactory;

    .line 80
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    return-void
.end method

.method private getSectionIndexOfTheFirstVisibleItem()I
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/toc/TOCListController;->getSectionIndexOfTheFirstVisibleItem(I)I

    move-result v0

    return v0
.end method

.method private initializeOpenMetrics()V
    .locals 3

    .line 260
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCMetricTag:Ljava/lang/String;

    const-string v2, "OpenToc"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_LIST_OF_ARTICLES:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 262
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_SIDE_PANEL_LIST_OF_ARTICLES:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    return-void
.end method


# virtual methods
.method protected addTOCListView(Landroid/view/ViewGroup;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected createLayoutView()Landroid/view/ViewGroup;
    .locals 3

    .line 198
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/TOCView;->isNewtronPhase1Enabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v2, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/newsstand/core/R$layout;->newtron_periodical_toc_magazine:I

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/newsstand/core/R$layout;->newtron_periodical_toc_newspaper:I

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v2, :cond_2

    .line 207
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_toc_magazine:I

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0

    .line 209
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_toc_newspaper:I

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected createListController(Z)Lcom/amazon/nwstd/toc/TOCListController;
    .locals 4

    .line 154
    new-instance v0, Lcom/amazon/nwstd/toc/TOCListController;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/nwstd/toc/TOCView;->mPeriodicalToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    iget-object v3, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/nwstd/toc/TOCListController;-><init>(Landroid/content/Context;Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/kindle/model/content/ILocalBookItem;Z)V

    return-object v0
.end method

.method protected createTOCListView()V
    .locals 5

    .line 218
    new-instance v0, Lcom/amazon/nwstd/toc/TOCView$1;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/nwstd/toc/TOCView$1;-><init>(Lcom/amazon/nwstd/toc/TOCView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    .line 226
    sget v1, Lcom/amazon/kindle/newsstand/core/R$drawable;->list_item_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 227
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 230
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/newsstand/core/R$drawable;->periodical_toc_overscroll_footer:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/newsstand/core/R$drawable;->periodical_toc_overscroll_header:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 234
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 237
    new-instance v0, Lcom/amazon/nwstd/toc/TOCListAdapter;

    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/toc/TOCListAdapter;-><init>(Lcom/amazon/nwstd/toc/TOCListController;)V

    iput-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListAdapter:Lcom/amazon/nwstd/toc/TOCListAdapter;

    .line 238
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected createView()V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/TOCView;->createLayoutView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/TOCView;->createTOCListView()V

    .line 188
    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/toc/TOCView;->prepareHeaderView(Landroid/view/View;)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/toc/TOCView;->addTOCListView(Landroid/view/ViewGroup;)V

    .line 191
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 458
    iput-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListAdapter:Lcom/amazon/nwstd/toc/TOCListAdapter;

    if-eqz v0, :cond_1

    .line 462
    iput-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListAdapter:Lcom/amazon/nwstd/toc/TOCListAdapter;

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {v0}, Lcom/amazon/nwstd/toc/TOCListController;->destroyCache()V

    .line 467
    iput-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    :cond_2
    return-void
.end method

.method public getArticleListView()Landroid/widget/ListView;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public initialize(Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/system/drawing/AndroidImageFactory;Z)V
    .locals 1

    .line 132
    invoke-static {p2, p1}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->getTOCMetricTag(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/nwstd/toc/IPeriodicalTOC;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCMetricTag:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/amazon/nwstd/toc/TOCView;->mImageFactory:Lcom/amazon/android/system/drawing/AndroidImageFactory;

    .line 135
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mPeriodicalToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 136
    iput-object p2, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p4}, Lcom/amazon/nwstd/toc/TOCView;->createListController(Z)Lcom/amazon/nwstd/toc/TOCListController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    if-nez p1, :cond_1

    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/TOCView;->createView()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected isNewtronPhase1Enabled()Z
    .locals 2

    .line 472
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
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

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 276
    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCView;->mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    if-eqz p2, :cond_1

    .line 277
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/toc/IArticleTOCItem;

    if-eqz p1, :cond_0

    .line 279
    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 280
    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCView;->mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;->onOpenArticle(I)V

    .line 281
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCMetricTag:Ljava/lang/String;

    const-string p3, "JumpToArticle"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mOpenArticleListener:Lcom/amazon/nwstd/toc/TOCListOpenArticleListener;

    if-eqz p1, :cond_1

    .line 284
    invoke-interface {p1}, Lcom/amazon/nwstd/toc/TOCListOpenArticleListener;->onArticleSelected()V

    :cond_1
    return-void
.end method

.method public onOpening()V
    .locals 0

    .line 428
    invoke-direct {p0}, Lcom/amazon/nwstd/toc/TOCView;->initializeOpenMetrics()V

    return-void
.end method

.method protected prepareHeaderView(Landroid/view/View;)V
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCView;->prepareTitleView(Landroid/view/View;)V

    return-void
.end method

.method protected prepareTitleView(Landroid/view/View;)V
    .locals 5

    .line 313
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_header_toc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/widget/ArticleRow;

    if-eqz v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-virtual {v1}, Lcom/amazon/nwstd/toc/TOCListController;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/toc/widget/ArticleRow;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_0
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_toc_publish_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 320
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/nwstd/utils/DateUtils;->getLongDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 325
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 330
    new-instance v0, Lcom/amazon/nwstd/toc/TOCView$2;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/toc/TOCView$2;-><init>(Lcom/amazon/nwstd/toc/TOCView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCView;->mImageFactory:Lcom/amazon/android/system/drawing/AndroidImageFactory;

    new-instance v3, Lcom/amazon/kindle/util/drawing/Dimension;

    const v4, 0x7fffffff

    invoke-direct {v3, v4, v4}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/android/drawing/AndroidImage;

    .line 344
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->toc_header_cover_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 345
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/newsstand/core/R$dimen;->toc_header_cover_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v0, :cond_1

    .line 349
    invoke-interface {v0}, Lcom/mobipocket/android/drawing/AndroidImage;->getBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v3}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(II)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mPeriodicalToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->hasReplicaPageItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mPeriodicalToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IReplicaPageItem;

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getThumbnailImage()Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v0

    invoke-static {v1, v3}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(II)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/ImageProvider;->createBitmapAndClose(Lcom/amazon/android/docviewer/ImageProvider;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 357
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->toc_header_masthead_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 362
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->toc_header_masthead_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 363
    iget-object v3, p0, Lcom/amazon/nwstd/toc/TOCView;->mPeriodicalToc:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v3}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTitleImage()Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v3

    invoke-static {v1, v0}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(II)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/android/docviewer/ImageProvider;->createBitmapAndClose(Lcom/amazon/android/docviewer/ImageProvider;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 367
    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_toc_masthead:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 368
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 370
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 371
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_5

    .line 372
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_article_textcolor_default_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 374
    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 377
    :cond_6
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 378
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected reportOnOpenMetricsIfNeeded()V
    .locals 1

    .line 269
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_LIST_OF_ARTICLES:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    return-void
.end method

.method public selectCurrentArticle(I)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-virtual {v0}, Lcom/amazon/nwstd/toc/TOCListController;->getDisplaySections()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-virtual {v0}, Lcom/amazon/nwstd/toc/TOCListController;->getTOCSectionsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lt v0, p1, :cond_2

    .line 301
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 302
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCView;->mArticleListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_2
    return-void
.end method

.method public setBackToLibraryCallback(Lcom/amazon/foundation/ICallback;)V
    .locals 0

    return-void
.end method

.method public setEventHandler(Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    return-void
.end method

.method public setOpenArticleListener(Lcom/amazon/nwstd/toc/TOCListOpenArticleListener;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCView;->mOpenArticleListener:Lcom/amazon/nwstd/toc/TOCListOpenArticleListener;

    return-void
.end method

.method public setSearchCallback(Lcom/amazon/foundation/ICallback;)V
    .locals 0

    return-void
.end method

.method public setTocOverlaysController(Lcom/amazon/nwstd/toc/ITocOverlaysController;)V
    .locals 0

    return-void
.end method
