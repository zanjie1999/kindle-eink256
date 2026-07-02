.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;
.super Ljava/lang/Object;
.source "ProvisioningServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDebugEnabled:Z

.field private mDssServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

.field private mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

.field private mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

.field private mProvisionerApplicationName:Ljava/lang/String;

.field private mProvisionerDeviceGroup:Ljava/lang/String;

.field private mProvisionerVersionNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->access$000()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mDssServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mDebugEnabled:Z

    .line 159
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->OOBE:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-void
.end method


# virtual methods
.method public createProvisioningServiceConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 10

    .line 197
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mDssServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionerApplicationName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionerVersionNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionerDeviceGroup:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mDssServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionerApplicationName:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionerVersionNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionerDeviceGroup:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    iget-boolean v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mDebugEnabled:Z

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;ZLcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$1;)V

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mProvisionerDeviceGroup can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mProvisionerVersionNumber can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mProvisionerApplicationName can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mLocaleConfiguration can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mDssServiceConfiguration can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDebugEnabled(Z)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mDebugEnabled:Z

    return-object p0
.end method

.method public setDssServiceConfiguration(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mDssServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    return-object p0
.end method

.method public setLocaleConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mLocaleConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    return-object p0
.end method

.method public setProvisionableBeaconType(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionableBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-object p0
.end method

.method public setProvisionerApplicationName(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionerApplicationName:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisionerDeviceGroup(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionerDeviceGroup:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisionerVersionNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->mProvisionerVersionNumber:Ljava/lang/String;

    return-object p0
.end method
