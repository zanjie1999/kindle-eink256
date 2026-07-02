.class final Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$3;
.super Lkotlin/jvm/internal/Lambda;
.source "PairingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->showBottomsheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$3;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$3;->invoke(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;)V
    .locals 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$3;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->access$getMetricsManager$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    const-string v1, "FFS_UGS_LINK_SETUP_BUT_CANCELLED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 80
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$3;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->access$getUgsProvisioner$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->restartSetup()V

    .line 81
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$3;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 83
    sget-object p1, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSnackBar;

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$3;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->access$getDevice$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->show(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    return-void
.end method
