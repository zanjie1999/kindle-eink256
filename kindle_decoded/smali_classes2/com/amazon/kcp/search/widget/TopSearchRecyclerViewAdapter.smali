.class public Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TopSearchRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;,
        Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$ResultViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final CLICK_DELAY_IN_MS:I = 0x64


# instance fields
.field private onItemClickListener:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;

.field private topSearchWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;)Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->onItemClickListener:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->topSearchWords:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->topSearchWords:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 63
    check-cast p1, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$ResultViewHolder;

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->topSearchWords:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$ResultViewHolder;->setLabelText(Ljava/lang/String;)V

    add-int/lit8 v0, p2, 0x1

    .line 66
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$ResultViewHolder;->setIconText(Ljava/lang/String;)V

    .line 67
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 73
    new-instance v0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$1;-><init>(Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;Landroid/view/View;)V

    const-wide/16 v1, 0x64

    invoke-static {p1, v0, v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 51
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->top_search_widget_content_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance p2, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$ResultViewHolder;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$ResultViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->onItemClickListener:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;

    return-void
.end method

.method public setTopSearchWords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->topSearchWords:Ljava/util/List;

    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
