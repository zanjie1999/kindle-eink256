.class public Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StoreSearchResultOnFetchViewHolder.java"


# instance fields
.field private divider:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->mContext:Landroid/content/Context;

    .line 28
    sget p2, Lcom/amazon/kcp/search/R$id;->search_result_stub:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 29
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->search_store_result_loading:I

    .line 30
    invoke-virtual {p2, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 31
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const/4 p2, 0x1

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 34
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->search_store_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 35
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->search_store_loading_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->mTextView:Landroid/widget/TextView;

    .line 36
    sget p2, Lcom/amazon/kcp/search/R$id;->search_result_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->divider:Landroid/view/View;

    const/16 p2, 0x8

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/amazon/kcp/search/views/StorePageFetchStatus;II)V
    .locals 6

    .line 42
    sget-object v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->BLOCKED:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    if-ne p1, v0, :cond_0

    .line 43
    iget-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 44
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->search_no_results_found:I

    .line 45
    sget p2, Lcom/amazon/kindle/krl/R$string;->error_message_connection:I

    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 49
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->search_results_loading:I

    .line 50
    iget-object v2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    sget-object v2, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 52
    iget-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->fetching_batch_of_total:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, v1

    const-string p3, "%,d"

    invoke-static {p3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-static {p3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 55
    :goto_0
    iget-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
