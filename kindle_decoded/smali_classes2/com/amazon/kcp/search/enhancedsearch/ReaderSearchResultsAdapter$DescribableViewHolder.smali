.class abstract Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ReaderSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DescribableViewHolder"
.end annotation


# instance fields
.field private onClickDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 707
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 704
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;->onClickDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getOnClickAnnouncement()Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;->onClickDescription:Ljava/lang/String;

    return-object v0
.end method

.method setOnClickDescription(Ljava/lang/String;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;->onClickDescription:Ljava/lang/String;

    return-void
.end method
