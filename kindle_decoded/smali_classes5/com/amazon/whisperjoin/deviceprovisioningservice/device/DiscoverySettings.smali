.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;
.super Ljava/lang/Object;
.source "DiscoverySettings.java"


# instance fields
.field private final mDeviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

.field private final mLimitForNumberOfDiscoveredDevices:I

.field private final mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-lez p3, :cond_0

    .line 29
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mDeviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    .line 30
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    .line 31
    iput p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mLimitForNumberOfDiscoveredDevices:I

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "limitForNumberOfDiscoveredDevices must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "scanningMode can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceFilter can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 50
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    .line 52
    iget v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mLimitForNumberOfDiscoveredDevices:I

    iget v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mLimitForNumberOfDiscoveredDevices:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mDeviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mDeviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    .line 53
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDeviceFilter()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mDeviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    return-object v0
.end method

.method public getLimitForNumberOfDiscoveredDevices()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mLimitForNumberOfDiscoveredDevices:I

    return v0
.end method

.method public getScanningMode()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mDeviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mLimitForNumberOfDiscoveredDevices:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mDeviceFilter:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    const-string v2, "mDeviceFilter"

    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    const-string v2, "mScanningMode"

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->mLimitForNumberOfDiscoveredDevices:I

    const-string v2, "mLimitForNumberOfDiscoveredDevices"

    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 68
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
