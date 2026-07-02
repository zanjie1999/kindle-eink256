.class public final Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FFSBroadcastReceiver.kt"


# instance fields
.field private final ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V
    .locals 2

    const-string v0, "ffsPlugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    .line 21
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.amazon.dcp.sso.action.account.removed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiver;->onReceiveAsync$ffs_debug(Landroid/content/Context;Landroid/content/Intent;)Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;

    return-void
.end method

.method public final onReceiveAsync$ffs_debug(Landroid/content/Context;Landroid/content/Intent;)Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7c0d2760

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.amazon.dcp.sso.action.account.removed"

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 39
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiver;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    invoke-static {}, Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User logged out, stopping provisioner from Broadcast Receiver"

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string v0, "FFSSettings"

    .line 40
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiver;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    invoke-static {}, Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "We\'re removing the FFS sharedPreferences"

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "DEVICE_SETUP_OVER_BLUETOOTH"

    .line 44
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->stop()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;

    move-result-object p1

    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress$Companion;->completed()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;

    move-result-object p1

    :goto_1
    return-object p1
.end method
