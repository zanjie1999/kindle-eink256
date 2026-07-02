.class public Lcom/amazon/kcp/search/SearchActivityWithWidget;
.super Lcom/amazon/kcp/search/RubySearchActivity;
.source "SearchActivityWithWidget.java"

# interfaces
.implements Lcom/amazon/kcp/search/IRefMarker;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static refMarker:Ljava/lang/String;


# instance fields
.field private searchHistoryItemListener:Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;

.field private searchHistoryWidget:Lcom/amazon/kcp/search/SearchHistoryWidget;

.field private topSearchWidget:Lcom/amazon/kcp/search/widget/TopSearchWidget;

.field private topSearchWidgetListener:Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;

.field private widgetContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kcp/search/SearchActivityWithWidget;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/search/RubySearchActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/amazon/kcp/search/SearchActivityWithWidget$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchActivityWithWidget$1;-><init>(Lcom/amazon/kcp/search/SearchActivityWithWidget;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->topSearchWidgetListener:Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;

    .line 49
    new-instance v0, Lcom/amazon/kcp/search/SearchActivityWithWidget$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchActivityWithWidget$2;-><init>(Lcom/amazon/kcp/search/SearchActivityWithWidget;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->searchHistoryItemListener:Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    sput-object p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->refMarker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/SearchActivityWithWidget;I)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchActivityWithWidget;->generateRefMarker(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/search/SearchActivityWithWidget;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchActivityWithWidget;->reportTopSearchWordClickMetrics(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/search/SearchActivityWithWidget;)Lcom/amazon/kcp/search/SearchHistoryWidget;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->searchHistoryWidget:Lcom/amazon/kcp/search/SearchHistoryWidget;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/search/SearchActivityWithWidget;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivityWithWidget;->reportSearchHistoryClickMetrics()V

    return-void
.end method

.method private generateRefMarker(I)Ljava/lang/String;
    .locals 2

    .line 119
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->getInstance()Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->getWordRank(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kin_red_sr_ts_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private reportSearchHistoryClickMetrics()V
    .locals 4

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "customerId"

    .line 156
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    const-string v2, "click_kfc_SearchHistory"

    const-string v3, "OutOfBookSearch"

    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    invoke-interface {v1, v3, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportTopSearchWordClickMetrics(I)V
    .locals 4

    .line 127
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->getInstance()Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->getWordRank(I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 129
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    add-int/lit8 p1, p1, 0x1

    .line 131
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TopSearchWordPosition"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "OutOfBookSearch"

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v3, "ClickTopSearchWord"

    invoke-interface {v0, v2, v3, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopSearchWordClick_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {v0, v2, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getRefMarker()Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->refMarker:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/amazon/kcp/search/RubySearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->search_widget_stub:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->widgetContainer:Landroid/view/View;

    .line 64
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->top_search_widget:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/widget/TopSearchWidget;

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->topSearchWidget:Lcom/amazon/kcp/search/widget/TopSearchWidget;

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->topSearchWidgetListener:Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/widget/TopSearchWidget;->setTopSearchWidgetListener(Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;)V

    .line 66
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 68
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->search_history_widget:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/SearchHistoryWidget;

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->searchHistoryWidget:Lcom/amazon/kcp/search/SearchHistoryWidget;

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->searchHistoryItemListener:Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/SearchHistoryWidget;->setSearchHistoryItemListener(Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->topSearchWidget:Lcom/amazon/kcp/search/widget/TopSearchWidget;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchWidget;->onDestroy()V

    .line 108
    invoke-super {p0}, Lcom/amazon/kcp/search/SearchActivity;->onDestroy()V

    return-void
.end method

.method protected onSearchTextChanged(Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/amazon/kcp/search/RubySearchActivity;->onSearchTextChanged(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 75
    sput-object p1, Lcom/amazon/kcp/search/SearchActivityWithWidget;->refMarker:Ljava/lang/String;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->topSearchWidget:Lcom/amazon/kcp/search/widget/TopSearchWidget;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchWidget;->onStop()V

    .line 102
    invoke-super {p0}, Lcom/amazon/kcp/search/SearchActivity;->onStop()V

    return-void
.end method

.method public onStoreResultItemClicked(Lcom/amazon/kcp/search/SearchClickEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 145
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->searchHistoryWidget:Lcom/amazon/kcp/search/SearchHistoryWidget;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/SearchHistoryWidget;->addNewSearchHistoryItem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected updateViews(Z)V
    .locals 4

    .line 80
    invoke-super {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->updateViews(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->widgetContainer:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivityWithWidget;->searchHistoryWidget:Lcom/amazon/kcp/search/SearchHistoryWidget;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 91
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    if-eqz p1, :cond_2

    .line 92
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->listView:Lcom/amazon/kcp/search/views/SearchListView;

    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method
