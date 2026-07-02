.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$BluetoothAdapterChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BLEDiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothAdapterChangedReceiver"
.end annotation


# instance fields
.field private final mBleDiscoveryServiceReference:Ljava/lang/ref/WeakReference;
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

    .line 94
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$BluetoothAdapterChangedReceiver;->mBleDiscoveryServiceReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 100
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$BluetoothAdapterChangedReceiver;->mBleDiscoveryServiceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    .line 109
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 148
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Bluetooth adapter state changed: unknown state"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 124
    :pswitch_0
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BLE turning off"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    :pswitch_1
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLE on"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->startScan()V
    :try_end_0
    .catch Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 137
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Radio not enabled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;

    new-instance v2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BLE Radio Not Enabled Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;-><init>([BLjava/lang/Exception;)V

    .line 140
    new-instance p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    invoke-direct {p2, v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    invoke-static {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$200(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->getObservers()Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 131
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;

    new-instance v2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;-><init>([BLjava/lang/Exception;)V

    .line 134
    new-instance p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    invoke-direct {p2, v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    invoke-static {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$200(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->getObservers()Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BLE turning on"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :pswitch_3
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BLE off"

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$100(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)Lcom/amazon/whisperbridge/ble/BleManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whisperbridge/ble/BleManager;->isScanning()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 117
    :try_start_1
    invoke-static {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$100(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)Lcom/amazon/whisperbridge/ble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleManager;->stopScanning()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 119
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error stopping scanning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
