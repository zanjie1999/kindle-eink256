.class public Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleGattClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/ble/BleGattClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BleGattCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperbridge/ble/BleGattClient;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whisperbridge/ble/BleGattClient;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method public final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whisperbridge/ble/BleGattClient;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method public final onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whisperbridge/ble/BleGattClient;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method public final onConnectionPriorityChange(Landroid/bluetooth/BluetoothGatt;Z)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whisperbridge/ble/BleGattClient;->onConnectionPriorityChange(Landroid/bluetooth/BluetoothGatt;Z)V

    return-void
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whisperbridge/ble/BleGattClient;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    return-void
.end method

.method public final onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whisperbridge/ble/BleGattClient;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    return-void
.end method

.method public final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whisperbridge/ble/BleGattClient;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    return-void
.end method

.method public final onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whisperbridge/ble/BleGattClient;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    return-void
.end method

.method public final onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whisperbridge/ble/BleGattClient;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whisperbridge/ble/BleGattClient;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->this$0:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whisperbridge/ble/BleGattClient;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method
