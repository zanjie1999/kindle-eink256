.class public Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand;
.super Lcom/amazon/whisperbridge/ble/command/BleCommand;
.source "BleReadDescriptorCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperbridge/ble/command/BleCommand<",
        "Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleReadDescriptorCommand"


# instance fields
.field private final mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand;->mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand$Result;

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResultLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand$Result;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand$Result;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    .line 86
    :cond_1
    sget-object v0, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BleReadDescriptorCommand executed with result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand$Result;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand;->call()Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand$Result;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleReadDescriptorCommand [descriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand;->mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
