.class final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WiFiListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->showBottomsheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$2;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$2;->invoke(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object p1, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->getDevice()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$2;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->access$getFfsPlugin$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;)Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v1

    const-string v2, "FFS_UGS_WIFI_CANCEL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$2;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->access$getUgsProvisioner$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;)Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->restartSetup()V

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$2;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    if-eqz p1, :cond_0

    .line 108
    sget-object v0, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSnackBar;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$2;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->show(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    :cond_0
    return-void
.end method
