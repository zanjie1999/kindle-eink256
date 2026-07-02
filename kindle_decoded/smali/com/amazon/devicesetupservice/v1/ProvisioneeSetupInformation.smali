.class public Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;
.super Ljava/lang/Object;
.source "ProvisioneeSetupInformation.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private authMaterialIdentifier:Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;

.field private errorCode:Ljava/lang/String;

.field private lastUpdatedTime:Ljava/lang/String;

.field private provisioneeIdentifier:Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;

.field private provisionerInformation:Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;

.field private provisioningMethod:Ljava/lang/String;

.field private provisioningState:Ljava/lang/String;

.field private provisioningStatus:Ljava/lang/String;

.field private wifiNetworkInfo:Lcom/amazon/devicesetup/common/v1/WifiScanData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.ProvisioneeSetupInformation"

    aput-object v2, v0, v1

    .line 93
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 118
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;

    .line 124
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->authMaterialIdentifier:Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->authMaterialIdentifier:Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;

    .line 125
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->errorCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->errorCode:Ljava/lang/String;

    .line 126
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->lastUpdatedTime:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->lastUpdatedTime:Ljava/lang/String;

    .line 127
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioneeIdentifier:Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioneeIdentifier:Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;

    .line 128
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisionerInformation:Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisionerInformation:Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;

    .line 129
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningMethod:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningMethod:Ljava/lang/String;

    .line 130
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningState:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningState:Ljava/lang/String;

    .line 131
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningStatus:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningStatus:Ljava/lang/String;

    .line 132
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->wifiNetworkInfo:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->wifiNetworkInfo:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    .line 133
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAuthMaterialIdentifier()Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->authMaterialIdentifier:Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->lastUpdatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioneeIdentifier()Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioneeIdentifier:Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;

    return-object v0
.end method

.method public getProvisionerInformation()Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisionerInformation:Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;

    return-object v0
.end method

.method public getProvisioningMethod()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioningState()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningState:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioningStatus()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiNetworkInfo()Lcom/amazon/devicesetup/common/v1/WifiScanData;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->wifiNetworkInfo:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    sget v1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->classNameHashCode:I

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->authMaterialIdentifier:Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->errorCode:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->lastUpdatedTime:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioneeIdentifier:Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisionerInformation:Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningMethod:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningState:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningStatus:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->wifiNetworkInfo:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 100
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAuthMaterialIdentifier(Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->authMaterialIdentifier:Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdatedTime(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->lastUpdatedTime:Ljava/lang/String;

    return-void
.end method

.method public setProvisioneeIdentifier(Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioneeIdentifier:Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;

    return-void
.end method

.method public setProvisionerInformation(Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisionerInformation:Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;

    return-void
.end method

.method public setProvisioningMethod(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningMethod:Ljava/lang/String;

    return-void
.end method

.method public setProvisioningState(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningState:Ljava/lang/String;

    return-void
.end method

.method public setProvisioningStatus(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->provisioningStatus:Ljava/lang/String;

    return-void
.end method

.method public setWifiNetworkInfo(Lcom/amazon/devicesetup/common/v1/WifiScanData;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->wifiNetworkInfo:Lcom/amazon/devicesetup/common/v1/WifiScanData;

    return-void
.end method
