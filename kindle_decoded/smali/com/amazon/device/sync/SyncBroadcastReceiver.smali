.class Lcom/amazon/device/sync/SyncBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncBroadcastReceiver.java"


# instance fields
.field protected final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "amazon.device.sync"

    .line 19
    iput-object v0, p0, Lcom/amazon/device/sync/SyncBroadcastReceiver;->mNamespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected handleReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/device/sync/SyncBroadcastReceiver;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v0

    .line 32
    invoke-interface {v0, p0}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/SyncBroadcastReceiver;->handleReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
