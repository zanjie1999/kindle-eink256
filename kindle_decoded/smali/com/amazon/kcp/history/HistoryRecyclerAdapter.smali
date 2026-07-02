.class public Lcom/amazon/kcp/history/HistoryRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HistoryRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private items:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/history/HistoryRecyclerAdapter;->items:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/history/HistoryRecyclerAdapter;->items:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/history/HistoryRecyclerAdapter;->onBindViewHolder(Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;I)V
    .locals 1

    .line 41
    invoke-static {p1}, Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;->access$000(Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    sget v0, Lcom/amazon/kcp/history/R$id;->history_card_title:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/history/HistoryRecyclerAdapter;->items:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/history/HistoryRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;
    .locals 2

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kcp/history/R$layout;->history_event_card_view:I

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 35
    new-instance p2, Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;-><init>(Landroid/widget/LinearLayout;)V

    return-object p2
.end method
