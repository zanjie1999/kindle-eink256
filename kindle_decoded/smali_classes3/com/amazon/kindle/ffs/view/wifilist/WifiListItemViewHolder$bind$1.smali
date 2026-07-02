.class final Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WifiListItemViewHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;->bind(Lcom/amazon/kindle/ffs/model/WifiNetwork;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1$1;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
