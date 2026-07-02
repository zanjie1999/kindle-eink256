.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;
.super Ljava/lang/Object;
.source "FFSArcusClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FFSArcusClient"


# instance fields
.field private final mRemoteConfigurationManager:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->mRemoteConfigurationManager:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->getSettingsFromConfiguration(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->mRemoteConfigurationManager:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    return-object p0
.end method

.method private getSettingsFromConfiguration(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 2

    .line 123
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getAsJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->TAG:Ljava/lang/String;

    const-string v1, "A JSONException occurred parsing Arcus JSONObject, using default"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    invoke-direct {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;-><init>()V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getStoredConfiguration()Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$2;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;)V

    invoke-static {v0}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->TAG:Ljava/lang/String;

    const-string v2, "Getting Stored Configuration"

    .line 112
    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/util/rx/RxLog;->doOnSubscribe(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public initWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 3

    .line 35
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->TAG:Ljava/lang/String;

    const-string v1, "initWithClientData"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->mRemoteConfigurationManager:Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->openAttributes()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application"

    invoke-interface {v0, v2, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationVersion"

    invoke-interface {v0, v2, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceModel"

    invoke-interface {v0, v2, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firmwareVersion"

    invoke-interface {v0, v2, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "manufacturer"

    invoke-interface {v0, v2, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dsn"

    invoke-interface {v0, v2, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getCustomerEcid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "directedId"

    invoke-interface {v0, v2, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getMarketplace()Ljava/lang/String;

    move-result-object p1

    const-string v1, "marketplace"

    invoke-interface {v0, v1, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configured Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public syncWithArcus()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
