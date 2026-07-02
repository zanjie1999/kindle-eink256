.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;
.super Ljava/lang/Object;
.source "DeviceSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;
    }
.end annotation


# instance fields
.field private final mChosenWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

.field private final mConnected:Z

.field private final mDeviceConnectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

.field private final mDeviceIdentity:Ljava/lang/String;

.field private final mDiscoverySessionToken:Ljava/lang/String;

.field private final mLastSetupError:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

.field private final mLastWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

.field private final mProductIndex:Ljava/lang/String;

.field private final mProvisionableReportUrl:Ljava/lang/String;

.field private final mProvisionerReportUrl:Ljava/lang/String;

.field private final mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

.field private final mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;)V
    .locals 14

    .line 44
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->WJ_DEVICE_DISCOVERED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    .line 47
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getProvisionerReportingUrl()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getProvisionableReportingUrl()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getDiscoverySessionToken()Ljava/lang/String;

    move-result-object v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    .line 44
    invoke-direct/range {v1 .. v13}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 71
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mDeviceIdentity:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProductIndex:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProvisionerReportUrl:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProvisionableReportUrl:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    .line 78
    iput-boolean p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mConnected:Z

    .line 79
    iput-object p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mDeviceConnectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    .line 80
    iput-object p8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    .line 81
    iput-object p9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mChosenWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    .line 82
    iput-object p10, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mLastWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    .line 83
    iput-object p11, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mLastSetupError:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

    .line 84
    iput-object p12, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mDiscoverySessionToken:Ljava/lang/String;

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Device State can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Product Index can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Device Identity can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;Ljava/lang/String;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$1;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p12}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mDeviceIdentity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProductIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mLastSetupError:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mDiscoverySessionToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProvisionerReportUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProvisionableReportUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mConnected:Z

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mDeviceConnectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mChosenWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mLastWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    return-object p0
.end method


# virtual methods
.method public getDeviceConnectionConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mDeviceConnectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    return-object v0
.end method

.method public getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDiscoverySessionToken()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mDiscoverySessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWifiConnectionError()Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mLastWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    return-object v0
.end method

.method public getProvisionableReportUrl()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProvisionableReportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    return-object v0
.end method

.method public getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    return-object v0
.end method

.method public isState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 146
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mDeviceIdentity:Ljava/lang/String;

    const-string v2, "mDeviceIdentity"

    .line 147
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProductIndex:Ljava/lang/String;

    const-string v2, "mProductIndex"

    .line 148
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProvisionerReportUrl:Ljava/lang/String;

    const-string v2, "mProvisionerReportUrl"

    .line 149
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProvisionableReportUrl:Ljava/lang/String;

    const-string v2, "mProvisionableReportUrl"

    .line 150
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    const-string v2, "mState"

    .line 151
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mConnected:Z

    const-string v2, "mConnected"

    .line 152
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mDeviceConnectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    const-string v2, "mDeviceConnectionConfiguration"

    .line 153
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    const-string v2, "mProvisioningDetails"

    .line 154
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mChosenWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    const-string v2, "mChosenWifiConfiguration"

    .line 155
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mLastWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    const-string v2, "mLastWifiConnectionError"

    .line 156
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mLastSetupError:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

    const-string v2, "mLastSetupError"

    .line 157
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->mDiscoverySessionToken:Ljava/lang/String;

    const-string v2, "mDiscoverySessionToken"

    .line 158
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 159
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
