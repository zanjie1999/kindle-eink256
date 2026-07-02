.class public Lcom/amazon/kindle/UpgradePageUtils;
.super Ljava/lang/Object;
.source "UpgradePageUtils.java"


# direct methods
.method public static getHomeActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    .line 31
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getHomeLibraryActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 33
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 34
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 36
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->clear()V

    .line 37
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getLaunchTo()Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;->READER:Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;

    if-ne v0, v2, :cond_1

    .line 39
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 42
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/stability/CrashBitInstance;->ACTIVITY:Lcom/amazon/kindle/stability/CrashBitInstance;

    invoke-static {v2, p0}, Lcom/amazon/kindle/stability/CrashBitManager;->getCrashBit(Lcom/amazon/kindle/stability/CrashBitInstance;Landroid/content/Context;)Lcom/amazon/kindle/stability/CrashBit;

    move-result-object p0

    .line 43
    invoke-interface {p0}, Lcom/amazon/kindle/stability/CrashBit;->check()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "LaunchToReader"

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 48
    throw p0

    :cond_1
    :goto_0
    return-object v1
.end method
