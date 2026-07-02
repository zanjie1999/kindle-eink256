.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;
.super Ljava/lang/Object;
.source "BasicBleDeviceFactory.java"


# instance fields
.field private final mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whisperbridge/ble/BleManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    return-void
.end method


# virtual methods
.method public createBleDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;
    .locals 3

    .line 25
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/connection/BasicBleDeviceFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/ble/BleManager;Landroid/content/Context;)V

    return-object v0
.end method
