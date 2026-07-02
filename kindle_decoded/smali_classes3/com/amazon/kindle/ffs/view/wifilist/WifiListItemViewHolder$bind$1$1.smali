.class final Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1$1;
.super Ljava/lang/Object;
.source "WifiListItemViewHolder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;

    iget-object v0, v0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return-void
.end method
