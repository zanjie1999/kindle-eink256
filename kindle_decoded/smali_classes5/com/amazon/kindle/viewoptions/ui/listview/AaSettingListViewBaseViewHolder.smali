.class public Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AaSettingListViewBaseViewHolder.kt"


# instance fields
.field private data:Ljava/lang/Object;

.field private listener:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->initializeView(Landroid/view/View;)V

    .line 18
    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;I)V
    .locals 2

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p3, "LayoutInflater.from(pare\u2026(layoutId, parent, false)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->listener:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->data:Ljava/lang/Object;

    return-void
.end method

.method protected final getData()Ljava/lang/Object;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onItemViewClick(Ljava/lang/Object;)V
    .locals 2

    .line 35
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->listener:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
