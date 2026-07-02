.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;
.super Ljava/lang/Object;
.source "DeviceSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mutator"
.end annotation


# instance fields
.field private mChosenWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

.field private mConnected:Z

.field private mDeviceConnectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

.field private final mDeviceIdentity:Ljava/lang/String;

.field private final mDiscoverySessionToken:Ljava/lang/String;

.field private mLastSetupError:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

.field private mLastWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

.field private final mProductIndex:Ljava/lang/String;

.field private final mProvisionableReportUrl:Ljava/lang/String;

.field private final mProvisionerReportUrl:Ljava/lang/String;

.field private mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

.field private mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)V
    .locals 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mDeviceIdentity:Ljava/lang/String;

    .line 245
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mProductIndex:Ljava/lang/String;

    .line 246
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mProvisionerReportUrl:Ljava/lang/String;

    .line 247
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mProvisionableReportUrl:Ljava/lang/String;

    .line 248
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    .line 249
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mConnected:Z

    .line 250
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mDeviceConnectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    .line 251
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    .line 252
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mChosenWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    .line 253
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$900(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mLastWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    .line 254
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$1000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mLastSetupError:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

    .line 255
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->access$1100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mDiscoverySessionToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;
    .locals 15

    .line 259
    new-instance v14, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mDeviceIdentity:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mProductIndex:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mProvisionerReportUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mProvisionableReportUrl:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mConnected:Z

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mDeviceConnectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    iget-object v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    iget-object v9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mChosenWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    iget-object v10, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mLastWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    iget-object v11, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mLastSetupError:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

    iget-object v12, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mDiscoverySessionToken:Ljava/lang/String;

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;Ljava/lang/String;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$1;)V

    return-object v14
.end method

.method public setChosenWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mChosenWifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    return-object p0
.end method

.method public setConnected(Z)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mConnected:Z

    return-object p0
.end method

.method public setDeviceConnectionConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mDeviceConnectionConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    return-object p0
.end method

.method public setLastSetupError(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mLastSetupError:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

    return-object p0
.end method

.method public setLastWifiConnectionError(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mLastWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    return-object p0
.end method

.method public setProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    return-object p0
.end method

.method public setState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->mState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    return-object p0
.end method
