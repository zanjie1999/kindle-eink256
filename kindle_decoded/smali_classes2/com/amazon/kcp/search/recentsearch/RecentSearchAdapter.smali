.class public Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;
.super Lcom/amazon/kcp/search/ReaderSearchAdapter;
.source "RecentSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/search/ReaderSearchAdapter<",
        "Lcom/amazon/kcp/search/SearchTermViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field private parentOnClick:Lcom/amazon/kcp/search/OnSearchTermClickListener;

.field private recentSearchDatabaseTermDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method


# virtual methods
.method public getDividerItemDecoration(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->recentSearchDatabaseTermDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/amazon/kcp/search/SearchTermViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->onBindViewHolder(Lcom/amazon/kcp/search/SearchTermViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/kcp/search/SearchTermViewHolder;I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->recentSearchDatabaseTermDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;

    invoke-virtual {p2}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->getTerm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/SearchTermViewHolder;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/search/SearchTermViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/search/SearchTermViewHolder;
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$layout;->recent_search_term_list_item:I

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 58
    iget-object p2, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {p2}, Lcom/amazon/kindle/utils/RTLUtils;->getLayoutDirection(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 59
    iget-object p2, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {p2}, Lcom/amazon/kindle/utils/RTLUtils;->getTextDirection(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTextDirection(I)V

    .line 60
    new-instance p2, Lcom/amazon/kcp/search/SearchTermViewHolder;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/search/SearchTermViewHolder;-><init>(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->parentOnClick:Lcom/amazon/kcp/search/OnSearchTermClickListener;

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p2, p1}, Lcom/amazon/kcp/search/SearchTermViewHolder;->setOnSearchTermClickListener(Lcom/amazon/kcp/search/OnSearchTermClickListener;)V

    :cond_0
    return-object p2
.end method

.method public setOnSearchTermClickListener(Lcom/amazon/kcp/search/OnSearchTermClickListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->parentOnClick:Lcom/amazon/kcp/search/OnSearchTermClickListener;

    return-void
.end method

.method public setRecentSearchTerms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->recentSearchDatabaseTermDataList:Ljava/util/List;

    .line 41
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
