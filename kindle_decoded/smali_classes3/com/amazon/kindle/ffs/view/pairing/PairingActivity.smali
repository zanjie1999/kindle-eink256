.class public final Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;
.super Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;
.source "PairingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$Companion;


# instance fields
.field private bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private final closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

.field private device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

.field private final ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

.field private final metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

.field private final ugsProvisioner:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

.field private wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->Companion:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;-><init>()V

    .line 35
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    .line 36
    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    .line 37
    sget-object v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->ugsProvisioner:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    .line 38
    new-instance v0, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    .line 39
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->Companion:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$Companion;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final synthetic access$getDevice$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "device"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMetricsManager$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)Lcom/amazon/kindle/ffs/metrics/MetricsManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    return-object p0
.end method

.method public static final synthetic access$getUgsProvisioner$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->ugsProvisioner:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    return-object p0
.end method

.method public static final synthetic access$getWiFiListActivityBuilder$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    return-object p0
.end method

.method public static final synthetic access$setDevice$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    return-void
.end method

.method public static final synthetic access$setWiFiListActivityBuilder$p(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    return-void
.end method


# virtual methods
.method protected getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 53
    sget v0, Lcom/amazon/kindle/ffs/R$layout;->invisible_activity:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xb59

    if-ne p1, p2, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$onActivityResult$1;-><init>(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    new-instance p1, Lcom/amazon/kindle/ffs/receiver/CloseActivityIntentFilter;

    const-class v0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p1, v0}, Lcom/amazon/kindle/ffs/receiver/CloseActivityIntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 108
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->closeBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    invoke-super {p0}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->onDestroy()V

    return-void
.end method

.method protected parseArguments(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, "pairingActivity"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "inBundle?.getBundle(PAIR\u2026getIntentWithArguments`\")"

    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pairingActivity:device"

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    if-eqz v0, :cond_1

    .line 59
    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    .line 60
    sget-object v0, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;->getError(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    sget-object v0, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;->isTimeoutError(Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->showErrorPopup(Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V

    :cond_0
    return-void

    .line 59
    :cond_1
    new-instance p1, Lcom/amazon/kindle/ffs/view/pairing/PairingActivityUnsatisfiedDependencyException;

    const-string v0, "This activity needs a discovered device. Use `getIntentWithArguments`"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivityUnsatisfiedDependencyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_2
    new-instance p1, Lcom/amazon/kindle/ffs/view/pairing/PairingActivityUnsatisfiedDependencyException;

    const-string v0, "This class needs a bundle. Use `getIntentWithArguments`"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivityUnsatisfiedDependencyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->bottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-void
.end method

.method protected showBottomsheet()V
    .locals 8

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    new-instance v7, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;

    .line 70
    new-instance v3, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;

    invoke-direct {v3, p0, v0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$1;-><init>(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;Landroid/content/Context;)V

    .line 77
    sget-object v4, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$2;->INSTANCE:Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$2;

    .line 78
    new-instance v5, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$3;

    invoke-direct {v5, p0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$3;-><init>(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;)V

    .line 85
    new-instance v6, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$4;

    invoke-direct {v6, p0, v0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity$showBottomsheet$4;-><init>(Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;Landroid/content/Context;)V

    move-object v1, v7

    move-object v2, p0

    .line 68
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/ffs/view/pairing/PairingBottomSheet;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, v7}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->setBottomSheet(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;->getBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
