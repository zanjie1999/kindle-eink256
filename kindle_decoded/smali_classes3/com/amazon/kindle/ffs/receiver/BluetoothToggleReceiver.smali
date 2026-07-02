.class public final Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothToggleReceiver.kt"


# instance fields
.field private final ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V
    .locals 2

    const-string v0, "ffsPlugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    .line 15
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-nez p2, :cond_0

    .line 23
    iget-object p1, p0, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v0, "intent is null, this shouldn\'t happen, ignoring"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v0, "intent.extras is null, this shouldn\'t happen, ignoring"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 35
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/16 v1, 0xa

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 37
    iget-object p2, p0, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object p2

    const-string v1, "FFS_BT_ON"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    .line 38
    iget-object p2, p0, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object p2

    const-string v1, "FFS_BT_OFF"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_2
    iget-object p2, p0, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    invoke-static {}, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new bluetooth adapter state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_5
    iget-object p1, p0, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ignoring, reported state is neither on or off"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 34
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method
