.class public Lcom/amazon/kcp/search/SearchHistoryWidget;
.super Landroid/widget/LinearLayout;
.source "SearchHistoryWidget.java"

# interfaces
.implements Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;
    }
.end annotation


# static fields
.field private static final CLICK_DELAY_IN_MS:I = 0x64


# instance fields
.field private context:Landroid/content/Context;

.field private historyAdapter:Lcom/amazon/kcp/search/KFCSearchHistoryAdapter;

.field private historyList:Landroid/widget/GridView;

.field private searchHistoryClear:Landroid/widget/LinearLayout;

.field private searchHistoryController:Lcom/amazon/kcp/search/searchhistory/ISearchHistoryController;

.field private searchHistoryHint:Landroid/widget/TextView;

.field private searchHistoryItemListener:Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;

.field private searchHistoryNoRecord:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->context:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->search_history_container:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->kfc_search_history_hint:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryHint:Landroid/widget/TextView;

    .line 45
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->kfc_no_search_history:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryNoRecord:Landroid/widget/TextView;

    .line 46
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->kfc_search_history_clear:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryClear:Landroid/widget/LinearLayout;

    .line 47
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->kfc_search_history_list:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->historyList:Landroid/widget/GridView;

    .line 48
    new-instance p2, Lcom/amazon/kcp/search/SearchHistoryController;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/search/SearchHistoryController;-><init>(Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;)V

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryController:Lcom/amazon/kcp/search/searchhistory/ISearchHistoryController;

    .line 49
    new-instance p2, Lcom/amazon/kcp/search/KFCSearchHistoryAdapter;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/search/KFCSearchHistoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->historyAdapter:Lcom/amazon/kcp/search/KFCSearchHistoryAdapter;

    .line 50
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->historyList:Landroid/widget/GridView;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryController:Lcom/amazon/kcp/search/searchhistory/ISearchHistoryController;

    invoke-interface {p1}, Lcom/amazon/kcp/search/searchhistory/ISearchHistoryController;->showSearchHistory()V

    .line 53
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->historyList:Landroid/widget/GridView;

    new-instance p2, Lcom/amazon/kcp/search/SearchHistoryWidget$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/search/SearchHistoryWidget$1;-><init>(Lcom/amazon/kcp/search/SearchHistoryWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryClear:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/amazon/kcp/search/SearchHistoryWidget$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/search/SearchHistoryWidget$2;-><init>(Lcom/amazon/kcp/search/SearchHistoryWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/SearchHistoryWidget;)Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryItemListener:Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/SearchHistoryWidget;)Lcom/amazon/kcp/search/searchhistory/ISearchHistoryController;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryController:Lcom/amazon/kcp/search/searchhistory/ISearchHistoryController;

    return-object p0
.end method


# virtual methods
.method public addNewSearchHistoryItem(Ljava/lang/String;)V
    .locals 1

    .line 112
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryController:Lcom/amazon/kcp/search/searchhistory/ISearchHistoryController;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/search/searchhistory/ISearchHistoryController;->insertNewItemToSearchHistory(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearSearchHistoryListView()V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchHistoryWidget;->showViewForNoSearchHistory()V

    return-void
.end method

.method public dismissSearchHistoryViewOnUserChanged()V
    .locals 0

    return-void
.end method

.method public setSearchHistoryItemListener(Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryItemListener:Lcom/amazon/kcp/search/SearchHistoryWidget$ISearchHistoryItemListener;

    return-void
.end method

.method public showViewForNoSearchHistory()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->historyAdapter:Lcom/amazon/kcp/search/KFCSearchHistoryAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/FastListAdapter;->swapList(Ljava/util/List;)Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->historyList:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryNoRecord:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryClear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 84
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showViewForSearchHistory(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryClear:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->historyAdapter:Lcom/amazon/kcp/search/KFCSearchHistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/FastListAdapter;->swapList(Ljava/util/List;)Ljava/util/List;

    .line 91
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->historyList:Landroid/widget/GridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryWidget;->searchHistoryNoRecord:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
