.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;
.super Ljava/lang/Object;
.source "DiscoveredDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdvertisedName:Ljava/lang/String;

.field private final mDeviceIdentity:Ljava/lang/String;

.field private final mDistressError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

.field private final mDistressed:Z

.field private final mProductIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V
    .locals 7

    .line 24
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->isDistressed()Z

    move-result v5

    .line 26
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->isDistressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;->getDistressErrorObject()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    move-object v1, p0

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 67
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mAdvertisedName:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mProductIndex:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDeviceIdentity:Ljava/lang/String;

    .line 70
    iput-boolean p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDistressed:Z

    .line 71
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDistressError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceIdentity can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "productIndex can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 105
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    .line 107
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mProductIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mProductIndex:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDeviceIdentity:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDeviceIdentity:Ljava/lang/String;

    .line 108
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

.method public getAdvertisedName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mAdvertisedName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdentity()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDeviceIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mProductIndex:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mProductIndex:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDeviceIdentity:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDistressed()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDistressed:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mProductIndex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDeviceIdentity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mAdvertisedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDistressed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDistressed:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->mDistressError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method
