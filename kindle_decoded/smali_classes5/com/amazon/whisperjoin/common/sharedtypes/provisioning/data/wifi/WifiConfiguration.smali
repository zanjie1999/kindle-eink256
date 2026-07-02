.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
.super Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;
.source "WifiConfiguration.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPsk:Ljava/lang/String;

.field private mWepKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mWepKey:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mPsk:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->validate()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;IZ)V

    .line 50
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    if-ne p2, p1, :cond_0

    .line 51
    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mWepKey:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    if-ne p2, p1, :cond_1

    .line 53
    iput-object p4, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mPsk:Ljava/lang/String;

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->validate()V

    return-void
.end method

.method public static createOpenWifiConfiguration(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 8

    .line 24
    new-instance v7, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v7
.end method

.method public static createOpenWifiConfiguration(Ljava/lang/String;IZ)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 8

    .line 28
    new-instance v7, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v7
.end method

.method public static createWepWifiConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 8

    .line 32
    new-instance v7, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v7
.end method

.method public static createWepWifiConfiguration(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 8

    .line 36
    new-instance v7, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v7
.end method

.method public static createWpaWifiConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 8

    .line 40
    new-instance v7, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v7
.end method

.method public static createWpaWifiConfiguration(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 8

    .line 44
    new-instance v7, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 156
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 157
    move-object v0, p1

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    .line 158
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mPsk:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 159
    invoke-super {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mPsk:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mPsk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mWepKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 161
    invoke-super {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mWepKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mWepKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 163
    :cond_3
    invoke-super {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public getPsk()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mPsk:Ljava/lang/String;

    return-object v0
.end method

.method public getWepKey()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mWepKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 148
    invoke-super {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->hashCode()I

    move-result v0

    const/16 v1, 0x29

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 149
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mWepKey:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x29

    .line 150
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mPsk:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConfiguration [ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key-mgmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->mWifiKeyManagement:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->validate()V

    .line 125
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mPsk:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mWepKey:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wifi configuration cannot have both WEP-key and PSK. Please use com.amazon.whisperjoin.common.sharedtypes.utility.InputValidator to validate wifi parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mPsk:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->mWifiKeyManagement:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/InputValidator;->isValidWPAWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 128
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid PSK in wifi configuration. Please use com.amazon.whisperjoin.common.sharedtypes.utility.InputValidator to validate wifi parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mWepKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->mWifiKeyManagement:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/InputValidator;->isValidWEPWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 130
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid WEP-key in wifi configuration. Please use com.amazon.whisperjoin.common.sharedtypes.utility.InputValidator to validate wifi parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mPsk:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mWepKey:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->mWifiKeyManagement:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/InputValidator;->isValidOpenWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 132
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid open wifi configuration. Please use com.amazon.whisperjoin.common.sharedtypes.utility.InputValidator to validate wifi parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 182
    invoke-super {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiBaseConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mWepKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->mPsk:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
