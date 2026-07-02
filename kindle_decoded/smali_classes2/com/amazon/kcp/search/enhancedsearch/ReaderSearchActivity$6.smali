.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;
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

    .line 854
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchTermClick(Ljava/lang/String;)V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1602(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z

    .line 858
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_AUTO_COMPLETE_TERM:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 859
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    .line 861
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 863
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->performSearch(Ljava/lang/String;)V

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1300(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    .line 868
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setQuery(Ljava/lang/String;)V

    .line 869
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 870
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    :cond_1
    return-void
.end method
