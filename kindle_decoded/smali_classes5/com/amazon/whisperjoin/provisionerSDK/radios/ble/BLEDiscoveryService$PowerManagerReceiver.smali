.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BLEDiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerManagerReceiver"
.end annotation


# instance fields
.field private final bleDiscoveryServiceWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)V
    .locals 1

    .line 449
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 450
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerManagerReceiver;->bleDiscoveryServiceWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 455
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerManagerReceiver;->bleDiscoveryServiceWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerManagerReceiver;->bleDiscoveryServiceWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->onPowerIntent()V

    :cond_0
    return-void
.end method
