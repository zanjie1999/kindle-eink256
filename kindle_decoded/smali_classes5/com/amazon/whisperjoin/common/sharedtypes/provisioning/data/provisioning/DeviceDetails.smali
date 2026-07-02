.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;
.super Ljava/lang/Object;
.source "DeviceDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hasLastConnectionWifiDetails:Z

.field private final hasSdkVersion:Z

.field private final mDeviceCapabilitiesMap:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

.field private final mDeviceFirmwareRevision:Ljava/lang/String;

.field private final mDeviceHardwareRevision:Ljava/lang/String;

.field private final mDeviceModelNumber:Ljava/lang/String;

.field private final mDeviceSerialNumber:Ljava/lang/String;

.field private final mLastConnectionWifiDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

.field private final mManufacturer:Ljava/lang/String;

.field private final mSDKVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mManufacturer:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceModelNumber:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceSerialNumber:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceHardwareRevision:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceFirmwareRevision:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceCapabilitiesMap:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    .line 76
    iput-object p7, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mLastConnectionWifiDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    .line 77
    iput-object p8, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mSDKVersion:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p8, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 78
    :goto_0
    iput-boolean p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->hasSdkVersion:Z

    if-eqz p7, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 79
    :goto_1
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->hasLastConnectionWifiDetails:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 136
    const-class v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 137
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    .line 138
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mManufacturer:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mManufacturer:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceModelNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceModelNumber:Ljava/lang/String;

    .line 139
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceSerialNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceSerialNumber:Ljava/lang/String;

    .line 140
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceHardwareRevision:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceHardwareRevision:Ljava/lang/String;

    .line 141
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceFirmwareRevision:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceFirmwareRevision:Ljava/lang/String;

    .line 142
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mSDKVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mSDKVersion:Ljava/lang/String;

    .line 143
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceCapabilitiesMap:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceCapabilitiesMap:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    .line 144
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mLastConnectionWifiDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mLastConnectionWifiDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    .line 145
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceCapabilitiesMap:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    return-object v0
.end method

.method public getDeviceFirmwareRevision()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceFirmwareRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceHardwareRevision()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceHardwareRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModelNumber()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceModelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mLastConnectionWifiDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mSDKVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasLastConnectionWifiDetails()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->hasLastConnectionWifiDetails:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mManufacturer:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceModelNumber:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceSerialNumber:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceHardwareRevision:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceFirmwareRevision:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mSDKVersion:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceCapabilitiesMap:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mLastConnectionWifiDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceDetails{mManufacturer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceModelNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceModelNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceSerialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceHardwareRevision=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceHardwareRevision:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceFirmwareRevision=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceFirmwareRevision:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceCapabilitiesMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceCapabilitiesMap:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSDKVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mSDKVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mLastConnectionWifiDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mLastConnectionWifiDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mManufacturer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceModelNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceSerialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceHardwareRevision:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceFirmwareRevision:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mDeviceCapabilitiesMap:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->hasLastConnectionWifiDetails:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->hasSdkVersion:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->hasLastConnectionWifiDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mLastConnectionWifiDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 178
    :cond_0
    iget-boolean p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->hasSdkVersion:Z

    if-eqz p2, :cond_1

    .line 179
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->mSDKVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 163
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "parcel cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
