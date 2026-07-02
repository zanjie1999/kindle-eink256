.class public Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchResultSectionHeaderViewHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeaderView:Landroid/widget/TextView;

.field private mSectionType:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    iput-object p3, p0, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    .line 24
    invoke-virtual {p1, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 26
    invoke-static {}, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;->getLayoutSectionId()I

    move-result p3

    .line 27
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;->mHeaderView:Landroid/widget/TextView;

    .line 28
    iput-object p2, p0, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;->mSectionType:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    return-void
.end method

.method public static getHeaderLayoutId()I
    .locals 1

    .line 41
    sget v0, Lcom/amazon/kcp/search/R$layout;->wayfinder_ruby_search_result_section:I

    return v0
.end method

.method public static getLayoutSectionId()I
    .locals 1

    .line 45
    sget v0, Lcom/amazon/kcp/search/R$id;->ruby_search_section_name:I

    return v0
.end method

.method public static getTitleStringId(Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;)I
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;->LIBRARY:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    if-ne p0, v0, :cond_0

    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->ruby_search_results_library_header:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/amazon/kindle/librarymodule/R$string;->ruby_search_results_store_header:I

    :goto_0
    return p0
.end method


# virtual methods
.method public bindData()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;->mSectionType:Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    invoke-static {v1}, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;->getTitleStringId(Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
