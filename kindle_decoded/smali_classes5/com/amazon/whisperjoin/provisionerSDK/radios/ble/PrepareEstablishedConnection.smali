.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;
.super Ljava/lang/Object;
.source "PrepareEstablishedConnection.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_MTU:I = 0x200

.field private static final TAG:Ljava/lang/String; = "PrepareEstablishedConnection"


# instance fields
.field private mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;

.field mGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

.field mServiceClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/amazon/whisperjoin/util/FireOSUtil;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/util/FireOSUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;

    return-void
.end method

.method private bindServiceClient()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mServiceClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->bindServiceClient(Lcom/amazon/whisperbridge/ble/BleGattServiceClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->BIND_SERVICE_CLIENT:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw v0
.end method

.method private discoverServices()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleGattClient;->enqueueDiscoverServices()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 87
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;

    iget v0, v0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;->status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->DISCOVER_GATT_SERVICES:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw v0

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->DISCOVER_GATT_SERVICES:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {v1, v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mServiceClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    if-eqz v0, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->discoverServices()V

    .line 60
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->bindServiceClient()V

    .line 61
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mServiceClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->enablePublicNotfications()V

    .line 64
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/util/FireOSUtil;->isFireTvDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->TAG:Ljava/lang/String;

    const-string v1, "Setting connection priority to: 0 for FireTV"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->enqueueRequestConnectionPriorityChange(I)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->TAG:Ljava/lang/String;

    const-string v1, "Setting connection priority to: 1"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->enqueueRequestConnectionPriorityChange(I)Ljava/util/concurrent/Future;

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->enqueueRequestMtuChange(I)Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mServiceClient can not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mGattClient can not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBleClients(Lcom/amazon/whisperbridge/ble/BleGattClient;Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 45
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mGattClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    .line 46
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->mServiceClient:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "serviceClient can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "gattClient can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
