.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;
.super Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;
.source "WifiBaseConfiguration.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mIsHiddenNetwork:Z

.field protected mNetworkPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mNetworkPriority:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mIsHiddenNetwork:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;IZ)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)V

    .line 53
    iput p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mNetworkPriority:I

    .line 54
    iput-boolean p4, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mIsHiddenNetwork:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 91
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;

    .line 93
    invoke-super {p0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mNetworkPriority:I

    iget v2, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mNetworkPriority:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mIsHiddenNetwork:Z

    iget-boolean p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mIsHiddenNetwork:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getNetworkPriority()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mNetworkPriority:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 83
    invoke-super {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->hashCode()I

    move-result v0

    const/16 v1, 0x29

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 84
    iget v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mNetworkPriority:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x29

    .line 85
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mIsHiddenNetwork:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isHiddenNetwork()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mIsHiddenNetwork:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiBaseConfiguration [ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key-mgmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->mWifiKeyManagement:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mNetworkPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mIsHiddenNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    iget p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mNetworkPriority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-boolean p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->mIsHiddenNetwork:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
