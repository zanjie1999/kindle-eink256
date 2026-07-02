.class public Lcom/amazon/kcp/search/widget/TopSearchWidget;
.super Landroid/widget/LinearLayout;
.source "TopSearchWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final onItemClickListener:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private shiftContainer:Landroid/widget/LinearLayout;

.field private topSearchDataManager:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

.field private topSearchWidgetListener:Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/search/widget/TopSearchWidget;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance p2, Lcom/amazon/kcp/search/widget/TopSearchWidget$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/search/widget/TopSearchWidget$1;-><init>(Lcom/amazon/kcp/search/widget/TopSearchWidget;)V

    iput-object p2, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->onItemClickListener:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;

    .line 68
    new-instance p2, Lcom/amazon/kcp/search/widget/TopSearchWidget$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/search/widget/TopSearchWidget$2;-><init>(Lcom/amazon/kcp/search/widget/TopSearchWidget;)V

    iput-object p2, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->onClickListener:Landroid/view/View$OnClickListener;

    const/4 p2, 0x1

    .line 84
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->top_search_widget_layout:I

    invoke-virtual {v0, v1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 86
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->top_search_widget_header_shift_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->shiftContainer:Landroid/widget/LinearLayout;

    .line 87
    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->top_search_recyclerView:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$integer;->top_search_grid_default_column_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$dimen;->top_search_widget_content_item_horizontal_space:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2, p2}, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;-><init>(IIZZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 93
    new-instance p1, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;

    invoke-direct {p1}, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->adapter:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;

    .line 94
    iget-object p2, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->onItemClickListener:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->setOnItemClickListener(Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->adapter:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->getInstance()Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->topSearchDataManager:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    .line 97
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$integer;->top_search_default_words_count:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 98
    iget-object p2, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->topSearchDataManager:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->setWordNumPerSlide(I)V

    .line 99
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchWidget;->updateTopSearchWords()V

    .line 101
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchWidget;->refreshTopSearchWords()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/widget/TopSearchWidget;)Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->topSearchWidgetListener:Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/widget/TopSearchWidget;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchWidget;->refreshTopSearchWords()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/search/widget/TopSearchWidget;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchWidget;->reportChangeTopSearchWordMetrics()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/search/widget/TopSearchWidget;)Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->adapter:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;

    return-object p0
.end method

.method private refreshTopSearchWords()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->topSearchDataManager:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->getTopSearchWords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/search/widget/TopSearchWidget$3;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/search/widget/TopSearchWidget$3;-><init>(Lcom/amazon/kcp/search/widget/TopSearchWidget;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private reportChangeTopSearchWordMetrics()V
    .locals 3

    .line 163
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const-string v1, "ChangeTopSearchWord"

    const-string v2, "OutOfBookSearch"

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTopSearchWords()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->topSearchDataManager:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->checkAndUpdateTopSearchWords()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 145
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->topSearchDataManager:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->onStop()V

    return-void
.end method

.method public onTopSearchWordsUpdate(Lcom/amazon/kcp/search/widget/TopSearchEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 116
    invoke-virtual {p1}, Lcom/amazon/kcp/search/widget/TopSearchEvent;->getType()I

    move-result p1

    if-nez p1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchWidget;->refreshTopSearchWords()V

    :cond_0
    return-void
.end method

.method public setTopSearchWidgetListener(Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchWidget;->topSearchWidgetListener:Lcom/amazon/kcp/search/widget/TopSearchWidget$TopSearchWidgetListener;

    return-void
.end method
