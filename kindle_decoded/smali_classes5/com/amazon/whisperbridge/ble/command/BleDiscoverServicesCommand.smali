.class public Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand;
.super Lcom/amazon/whisperbridge/ble/command/BleCommand;
.source "BleDiscoverServicesCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperbridge/ble/command/BleCommand<",
        "Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleDiscoverServicesCommand"


# instance fields
.field private final mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .line 56
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommand;-><init>(Ljava/lang/Object;)V

    .line 58
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResultLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    .line 81
    :cond_1
    sget-object v0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BleDiscoverServicesCommand executed with result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleCommand;->mResult:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;

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
    invoke-virtual {p0}, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand;->call()Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BleDiscoverServicesCommand"

    return-object v0
.end method
