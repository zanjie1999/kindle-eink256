.class final Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;->invoke(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;)V
    .locals 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->access$getMetricsManager$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    const-string v1, "FFS_UGS_LINK_SETUP_AND_CONTINUE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 72
    sget-object p1, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;->Companion:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;->$context:Landroid/content/Context;

    const-class v1, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;->closeActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->access$getWiFiListActivityBuilder$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;->$context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;->getIntentWithArgumentsForScanning(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    sget-object p1, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->keepWiFiListScreenReference()V

    .line 75
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->access$getUgsProvisioner$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;->this$0:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->access$getDevice$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->start(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    return-void

    .line 72
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method
