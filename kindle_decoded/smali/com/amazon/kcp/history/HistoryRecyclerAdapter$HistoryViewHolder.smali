.class Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HistoryRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/history/HistoryRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HistoryViewHolder"
.end annotation


# instance fields
.field private linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    iput-object p1, p0, Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kcp/history/HistoryRecyclerAdapter$HistoryViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method
