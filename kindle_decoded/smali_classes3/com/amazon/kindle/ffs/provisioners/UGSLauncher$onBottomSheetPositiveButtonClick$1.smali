.class final Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UGSLauncher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->onBottomSheetPositiveButtonClick$ffs_debug(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
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
.field final synthetic $device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

.field final synthetic this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->$device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 248
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->access$getMetricsManager$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v1

    const-string v2, "FFS_UGS_DISCOVERED_AND_CONTINUED"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 250
    sget-object v0, Lcom/amazon/kindle/ffs/view/starting/Status;->CONNECTING:Lcom/amazon/kindle/ffs/view/starting/Status;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/view/starting/Status;->getI()I

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-static {v1}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->access$getFfsPlugin$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->getBottomSheetBuilder$ffs_debug()Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-static {v3}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->access$getContext$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->$device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-interface {v2, v3, v4, v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetBuilder;->getIntentWithArguments(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "bottomSheetBuilder.getIn\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->requireOpenActivity$ffs_debug(Landroid/content/Intent;)V

    const-wide/16 v0, 0x1f4

    .line 252
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 255
    sget-object v0, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;->Companion:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-static {v1}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->access$getContext$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v3}, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;->closeActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->access$getContext$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-static {v1}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->access$getPairingActivityBuilder$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-static {v3}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->access$getContext$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->$device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-interface {v1, v3, v4}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivityBuilder;->getIntentWithArguments(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher$onBottomSheetPositiveButtonClick$1;->this$0:Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->access$getMetricsManager$p(Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;)Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "FFS_UGS_LINK_SETUP"

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 258
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->keepPairingScreenReference()V

    return-void

    .line 255
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method
