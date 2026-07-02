.class public Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;
.super Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;
.source "ThirdPartyPeripheralDeviceDetails.java"


# instance fields
.field mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;-><init>()V

    if-eqz p1, :cond_0

    .line 20
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bleScanData can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static matchingDeviceDetails(Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)Z
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->getScanRecord()[B

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->getScanRecord()[B

    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 63
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 71
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBleScanData()Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    return-object v0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRSSI()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->getRssi()I

    move-result v0

    return v0
.end method

.method public getScanRecord()[B
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->getRawScanRecord()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public updateScanDataRadioData(Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)V
    .locals 3

    .line 46
    invoke-static {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->matchingDeviceDetails(Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->getRawScanRecord()[B

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->getBleScanData()Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->getRssi()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;-><init>(Landroid/bluetooth/BluetoothDevice;[BI)V

    .line 54
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->mBleScanData:Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to update scan data for non matching scan records"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
