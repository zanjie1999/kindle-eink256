.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;
.super Ljava/lang/Object;
.source "BleScanData.java"


# instance fields
.field private final mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mRawScanRecord:[B

.field private final mRssi:I

.field private final mTimestampNanos:J


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->mTimestampNanos:J

    .line 24
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 25
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->mRawScanRecord:[B

    .line 26
    iput p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->mRssi:I

    return-void
.end method


# virtual methods
.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getRawScanRecord()[B
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->mRawScanRecord:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->mRssi:I

    return v0
.end method

.method public getTimestampNanos()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->mTimestampNanos:J

    return-wide v0
.end method
