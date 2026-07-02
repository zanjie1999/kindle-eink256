.class public Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand;
.super Lcom/amazon/whisperbridge/ble/command/BleCommand;
.source "BleReadRssiCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperbridge/ble/command/BleCommand<",
        "Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleReadRssiCommand"


# instance fields
.field private final mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand$Result;

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResultLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand$Result;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand$Result;-><init>(II)V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    .line 85
    :cond_1
    sget-object v0, Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BleReadRssiCommand executed with result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand$Result;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand;->call()Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand$Result;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BleReadRssiCommand"

    return-object v0
.end method
