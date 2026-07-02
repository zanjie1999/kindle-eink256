.class final Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$2;
.super Ljava/lang/Object;
.source "WifiListItemViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;->bind(Lcom/amazon/kindle/ffs/model/WifiNetwork;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $clickListener:Lkotlin/jvm/functions/Function1;

.field final synthetic $network:Lcom/amazon/kindle/ffs/model/WifiNetwork;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/ffs/model/WifiNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$2;->$clickListener:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$2;->$network:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$2;->$clickListener:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$2;->$network:Lcom/amazon/kindle/ffs/model/WifiNetwork;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
