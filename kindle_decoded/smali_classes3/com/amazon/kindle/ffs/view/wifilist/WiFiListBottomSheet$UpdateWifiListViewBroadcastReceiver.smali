.class public final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$UpdateWifiListViewBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiFiListBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateWifiListViewBroadcastReceiver"
.end annotation


# instance fields
.field private final wiFiListBottomSheet:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V
    .locals 1

    const-string v0, "wiFiListBottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$UpdateWifiListViewBroadcastReceiver;->wiFiListBottomSheet:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 90
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v0, "receiving broadcast Intent. updating view"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$UpdateWifiListViewBroadcastReceiver;->wiFiListBottomSheet:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->updateViewFromBundle()V

    return-void
.end method
