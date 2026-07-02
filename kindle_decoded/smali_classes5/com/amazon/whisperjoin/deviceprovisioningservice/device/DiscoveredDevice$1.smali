.class final Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice$1;
.super Ljava/lang/Object;
.source "DiscoveredDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createObjectFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;
    .locals 6

    if-eqz p1, :cond_2

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz v4, :cond_1

    .line 158
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(Landroid/os/Parcel;)V

    :cond_1
    move-object v5, v0

    .line 161
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V

    return-object p1

    .line 149
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice$1;->createObjectFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;
    .locals 0

    .line 165
    new-array p1, p1, [Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice$1;->newArray(I)[Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-result-object p1

    return-object p1
.end method
