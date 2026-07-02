.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


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

    .line 775
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 815
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1400(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1500(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 824
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1600(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1002(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1600(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1700(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1800(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1902(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 839
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$2000(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 830
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1702(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z

    .line 831
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1602(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z

    .line 832
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1802(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z

    .line 836
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1902(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->performSearch(Ljava/lang/String;)V

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1002(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 787
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_SELECTION:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 791
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    .line 792
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1102(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z

    .line 794
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setQuery(Ljava/lang/String;)V

    .line 796
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 798
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setCacheAdapter(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)V

    .line 800
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$300(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 801
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1300(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    .line 804
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 805
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
