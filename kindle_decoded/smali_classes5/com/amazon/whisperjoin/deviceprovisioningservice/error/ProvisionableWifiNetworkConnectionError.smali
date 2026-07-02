.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;
.source "ProvisionableWifiNetworkConnectionError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttemptedWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

.field private final mWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;-><init>()V

    if-eqz p1, :cond_0

    .line 39
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    .line 40
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mAttemptedWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "parcel can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 31
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    .line 32
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mAttemptedWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wifiConfiguration can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wifiConnectionDetails can not be null"

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
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 62
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    .line 66
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    iget-object v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mAttemptedWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mAttemptedWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    .line 68
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 69
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAttemptedWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mAttemptedWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;->getSsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;->getConnectionState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;

    move-result-object v0

    return-object v0
.end method

.method public getWifiConnectionDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 74
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    .line 75
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mAttemptedWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    .line 76
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 77
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 82
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    const-string v2, "mWifiConnectionDetails"

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mAttemptedWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    const-string v2, "mAttemptedWifiConfiguration"

    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 85
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->mAttemptedWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
