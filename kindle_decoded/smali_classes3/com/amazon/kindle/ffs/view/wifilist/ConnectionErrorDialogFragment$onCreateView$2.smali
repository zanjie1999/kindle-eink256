.class final Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$2;
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

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$2;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$2;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 50
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$2;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->access$getConnectionErrorViewModel$p(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;)V

    .line 51
    sget-object v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->showProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;)V

    return-void
.end method
