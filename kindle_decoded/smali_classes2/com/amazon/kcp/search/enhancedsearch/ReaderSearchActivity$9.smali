.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Lcom/amazon/kcp/search/OnSearchTermClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchTermClick(Ljava/lang/String;)V
    .locals 3

    .line 917
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object v0

    .line 919
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->performSearch(Ljava/lang/String;)V

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    iget-object v1, v1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setQuery(Ljava/lang/String;)V

    .line 925
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setRecentSearchClicked(Z)V

    .line 927
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setCacheAdapter(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)V

    .line 929
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    sget-object v2, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_RECENT_SEARCH:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    .line 930
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    sget-object v2, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_RESULTS_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    .line 932
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1300(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 937
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 938
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    :cond_1
    return-void
.end method
