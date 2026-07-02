.class public Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;
.super Lcom/amazon/whisperbridge/ble/command/BleCommand;
.source "BleUpdateNotificationsCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperbridge/ble/command/BleCommand<",
        "Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleUpdateNotificationsCommand"


# instance fields
.field private final mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field private final mEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;Z)V
    .locals 2

    .line 59
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommand;-><init>(Ljava/lang/Object;)V

    .line 61
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 62
    iput-object p2, p0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 63
    iput-boolean p3, p0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->mEnable:Z

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->mEnable:Z

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    .line 77
    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;

    return-object v0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResultLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    .line 93
    :cond_2
    sget-object v0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BleUpdateNotificationsCommand executed with result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->call()Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleUpdateNotificationsCommand [descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->mBluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
