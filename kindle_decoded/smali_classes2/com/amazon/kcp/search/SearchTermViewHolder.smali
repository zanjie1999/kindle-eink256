.class public Lcom/amazon/kcp/search/SearchTermViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchTermViewHolder.java"


# instance fields
.field clickListener:Lcom/amazon/kcp/search/OnSearchTermClickListener;

.field text:Ljava/lang/String;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/krl/R$id;->search_term_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchTermViewHolder;->textView:Landroid/widget/TextView;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/amazon/kcp/search/SearchTermViewHolder$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchTermViewHolder$1;-><init>(Lcom/amazon/kcp/search/SearchTermViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setOnSearchTermClickListener(Lcom/amazon/kcp/search/OnSearchTermClickListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchTermViewHolder;->clickListener:Lcom/amazon/kcp/search/OnSearchTermClickListener;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchTermViewHolder;->text:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchTermViewHolder;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->recent_search_narration_on_item_swiped:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
