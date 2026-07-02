.class public Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;
.super Lcom/amazon/whisperbridge/ble/command/BleCommand;
.source "BleChangeConnectionPriorityCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperbridge/ble/command/BleCommand<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleChangeConnectionPriorityCommand"


# instance fields
.field private final mBleCallback:Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;

.field private final mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommand;-><init>(Ljava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;->mBleCallback:Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;

    .line 44
    iput-object p2, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 45
    iput p3, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;->mPriority:I

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget v1, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;->mPriority:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;->mBleCallback:Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;

    iget-object v2, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;->onConnectionPriorityChange(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 58
    sget-object v1, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BleChangeConnectionPriorityCommand executed with status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleChangeConnectionPriorityCommand [priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
