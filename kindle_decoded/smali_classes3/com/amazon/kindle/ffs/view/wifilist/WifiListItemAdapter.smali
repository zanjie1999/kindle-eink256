.class public Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WifiListItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final clickListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final networks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final viewGotBound:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "networks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewGotBound"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;->networks:Ljava/util/List;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;->clickListener:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;->viewGotBound:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;->networks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;->onBindViewHolder(Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;I)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;->networks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/ffs/model/WifiNetwork;

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;->clickListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;->bind(Lcom/amazon/kindle/ffs/model/WifiNetwork;Lkotlin/jvm/functions/Function1;)V

    .line 35
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;->viewGotBound:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 24
    sget v0, Lcom/amazon/kindle/ffs/R$layout;->wifi_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 25
    new-instance p2, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
