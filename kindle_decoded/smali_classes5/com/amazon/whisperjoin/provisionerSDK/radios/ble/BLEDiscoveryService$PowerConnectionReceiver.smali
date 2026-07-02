.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BLEDiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerConnectionReceiver"
.end annotation


# instance fields
.field private final mBleDiscoveryService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;Landroid/content/Context;)V
    .locals 2

    .line 386
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 387
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerConnectionReceiver;->mBleDiscoveryService:Ljava/lang/ref/WeakReference;

    .line 389
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p2

    .line 390
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->updateScanForPowerChange(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 395
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerConnectionReceiver;->mBleDiscoveryService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 396
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerConnectionReceiver;->mBleDiscoveryService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->updateScanForPowerChange(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
