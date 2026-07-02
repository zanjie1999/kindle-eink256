.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setupRecentSearchHeaderView()V
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

    .line 658
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 661
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$400(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    move-result-object p1

    .line 663
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$500(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$500(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->deleteAllTermsForBookId(Ljava/lang/String;)I

    .line 668
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$600(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 671
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 672
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 675
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$700(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)V

    .line 678
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    iget-object p1, p1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setQuery(Ljava/lang/String;)V

    .line 679
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cleanCacheResults()V

    .line 681
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$800(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RECENT_SEARCH_HISTORY_CLEARED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->recordMetricsForRecentSearchAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/Integer;)V

    .line 682
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$800(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RECENT_SEARCH_EMPTY_STATE_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->recordMetricsForRecentSearchAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/Integer;)V

    return-void
.end method
