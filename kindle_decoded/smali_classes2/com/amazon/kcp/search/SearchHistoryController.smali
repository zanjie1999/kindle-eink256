.class public Lcom/amazon/kcp/search/SearchHistoryController;
.super Ljava/lang/Object;
.source "SearchHistoryController.java"

# interfaces
.implements Lcom/amazon/kcp/search/searchhistory/ISearchHistoryController;


# instance fields
.field private historyDataProvider:Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

.field private historyView:Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryController;->historyView:Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;

    .line 26
    invoke-static {}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->getInstance()Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryController;->historyDataProvider:Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    .line 27
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private getSearchHistoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHistoryController;->historyDataProvider:Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->getSearchHistoryByUserId()Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public clearSearchHistory()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHistoryController;->historyDataProvider:Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->clearSearchHistoryByUserId(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHistoryController;->historyView:Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;

    invoke-interface {v0}, Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;->clearSearchHistoryListView()V

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchHistoryController;->showSearchHistory()V

    return-void
.end method

.method public insertNewItemToSearchHistory(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHistoryController;->historyDataProvider:Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/kcp/search/searchhistory/SearchHistoryDataProvider;->updateSearchHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchHistoryController;->showSearchHistory()V

    :cond_0
    return-void
.end method

.method public onKRXAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 75
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchHistoryController;->historyView:Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;

    invoke-interface {p1}, Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;->dismissSearchHistoryViewOnUserChanged()V

    return-void
.end method

.method public showSearchHistory()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchHistoryController;->getSearchHistoryList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHistoryController;->historyView:Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;->showViewForSearchHistory(Ljava/util/List;)V

    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHistoryController;->historyView:Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;

    invoke-interface {v0}, Lcom/amazon/kcp/search/searchhistory/ISearchHistoryView;->showViewForNoSearchHistory()V

    :goto_1
    return-void
.end method
