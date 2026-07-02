.class public Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;
.super Lcom/amazon/whisperbridge/ble/command/BleCommand;
.source "BleChangeMtuCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperbridge/ble/command/BleCommand<",
        "Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleChangeMtuCommand"


# instance fields
.field private final mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mMtu:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .line 68
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommand;-><init>(Ljava/lang/Object;)V

    .line 70
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 71
    iput p2, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;->mMtu:I

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget v1, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;->mMtu:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResultLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;-><init>(II)V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    .line 94
    :cond_1
    sget-object v0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BleChangeMtuCommand executed with result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;->call()Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleChangeMtuCommand [mtu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;->mMtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
