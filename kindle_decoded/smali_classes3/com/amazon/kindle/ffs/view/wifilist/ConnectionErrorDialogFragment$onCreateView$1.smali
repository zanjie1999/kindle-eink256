.class final Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "ConnectionErrorDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 44
    sget-object p1, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->access$getWifiConfiguration$p(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;

    invoke-static {v2}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->access$getSaveWifiToLocker$p(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->selectNetwork(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Z)V

    .line 45
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 44
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method
