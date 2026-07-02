.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;
.super Ljava/lang/Object;
.source "BLEDiscoveryService.java"

# interfaces
.implements Lcom/amazon/whisperbridge/ble/BleScanner$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->start(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

.field final synthetic val$coalesceDevicesCallback:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;

.field final synthetic val$deviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

.field final synthetic val$discoveryService:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->val$discoveryService:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->val$deviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    iput-object p4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->val$coalesceDevicesCallback:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanData(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)V
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$100(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)Lcom/amazon/whisperbridge/ble/BleManager;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    :try_start_1
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    invoke-static {v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$100(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)Lcom/amazon/whisperbridge/ble/BleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whisperbridge/ble/BleManager;->isScanning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->val$discoveryService:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->val$deviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    iget-object v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->val$coalesceDevicesCallback:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;

    invoke-virtual {v2, p1, v3, v4}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->processScanData(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v2, "New Scan Data available but not currently scanning."

    invoke-static {p1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 225
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 226
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public onScanError(Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;)V
    .locals 4

    .line 211
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanning error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;-><init>([BLjava/lang/Exception;)V

    .line 212
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    invoke-direct {p1, v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->access$200(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->getObservers()Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;->val$discoveryService:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
