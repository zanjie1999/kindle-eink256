.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$1;
.super Ljava/lang/Object;
.source "ReaderSearchResultsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

.field final synthetic val$viewHolder:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$1;->val$viewHolder:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$1;->val$viewHolder:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$1;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-static {v1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->access$000(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;I)Lcom/amazon/kcp/search/enhancedsearch/Section;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->onClickAtPosition(I)V

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$1;->val$viewHolder:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;->getOnClickAnnouncement()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
