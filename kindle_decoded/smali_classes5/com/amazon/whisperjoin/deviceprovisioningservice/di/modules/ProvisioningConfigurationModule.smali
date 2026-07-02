.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;
.super Ljava/lang/Object;
.source "ProvisioningConfigurationModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProvisioningConfigurationModule"


# instance fields
.field private final mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

.field private final mProvisioningServiceConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

.field private final mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 47
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->mProvisioningServiceConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    .line 48
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    .line 49
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 52
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->isDebugEnabled()Z

    move-result p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->setDebug(Z)V

    .line 53
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->TAG:Ljava/lang/String;

    const-string p2, "ProvisionerSDK Version: 1.15.4353.0"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->TAG:Ljava/lang/String;

    const-string p2, "ProvisionerSDK Runtime Dependencies"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->TAG:Ljava/lang/String;

    const-string p2, "WhisperJoinDeviceProvisioningServiceAndroid-1.15.4353.0,AWSRemoteConfigurationAndroidClient-1.2.229293.0,CredentialLockerAndroidClient-1.2.21176.0,CredentialLockerSharedTypesAndroid-1.0.209240.0,WhisperJoinProvisionerSDK-1.15.4549.0,WhisperBridgeBLE-1.15.4584.0,WhisperJoinCommon-1.15.4583.0,DeviceSetupServiceAndroidClient-1.15.4555.0,AndroidSupportPackage-annotations-24.2.1.205021.0,AndroidSupportPackage-v4-24.2.1.205195.0,AndroidSupportPackage-fragment-24.2.1.205424.0,AndroidSupportPackage-core-ui-24.2.1.205224.0,AndroidSupportPackage-core-utils-24.2.1.205406.0,AndroidSupportPackage-media-compat-24.2.1.205407.0,AndroidSupportPackage-compat-24.2.1.206167.0,DaggerRuntime-2.x.213534.0,AtInject-1.0.353051.0,DeviceSetupServiceCoralAndroidTypes-1.3.7739.0,AndroidSDK-default.215722.0,AndroidSDK28-default.7581.0,AndroidSDKBuildTools-28.0.3.7842.0,AndroidSDKPlatform-24.207253.0,AndroidSDKPlatformTools-28.0.0.6460.0,AndroidSDKTools-26.0.1.207997.0,CoralAndroidClientBase-2.0.1986.0,Base64-2.3.7.318191.0,MAPClientLib-1.3.268937.0,MAPClientLibJARS-1.3.266657.0,Maven-com-jakewharton_threetenabp-1.x.1234.0,Maven-org-json_json-20190722.2333.0,Maven-com-fasterxml_oss-parent-9.306083.0,Maven-org-threeten_threetenbp-1.4.x.1080.0,OkHttp3-Logging-Interceptor-3.x.2934.0,Retrofit-converter-jackson-2.5.0.1639.0,Jackson-databind-2.10.x.76840.0,Jackson-annotations-2.10.x.71004.0,Jackson-core-2.10.x.78216.0,Retrofit-2.5.x.2484.0,OkHttp3-3.12.x.4327.0,Okio-1.15.0.4687.0,AnimalSnifferAnnotations-1.11.216992.0,RxJava2-Android-2.x.206205.0,RxJava2-2.x.207365.0,Maven-org-reactivestreams_reactive-streams-1.x.236316.0,WhisperJoinProtobufJavaLib-1.0.9081.0,WhisperCloakProtocolBuffersJava-1.3.6653.0,WhisperJoinProtocolBuffersJava-1.3.6837.0,JDK8-1.0.305660.0,ProtocolBuffersJava-3.5.x.10879.0,GoogleGuava-20.x.373966.0,Maven-com-google-code-findbugs_jsr305-3.x.231974.0,WhisperJoinSharedTypes-1.2.16931.0,DeviceClientMetricsAndroidAdapter-1.0.26112.0,Gson-2.8.x.249678.0,JakartaCommons-lang-2.6.236475.0,Lombok-1.18.x.19404.0,WhisperCloakAndroidLib-1.0.216579.0,SpongyCastle-1.52.x.202939.0"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "provisioningMethod can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "workflowConfiguration cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Provisioning service configuration cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method providesDSSServiceConfiguration()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->mProvisioningServiceConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getDSSServiceConfiguration()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method providesIsDebugEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->mProvisioningServiceConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->isDebugEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method providesProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
    .locals 2

    .line 98
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;-><init>()V

    .line 99
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getProvisionerApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setClientAppName(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    .line 100
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getProvisionerVersionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setClientAppVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceManufacturer(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceModel(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceSerialNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setDeviceFirmwareVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    .line 105
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getLocaleConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->getMarketplace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setMarketplace(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    .line 106
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getProvisionerDeviceGroup()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setMetricsDeviceGroup(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    .line 107
    invoke-interface {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;->getAccount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->setCustomerEcid(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;

    .line 108
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData$Builder;->createProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object p1

    .line 110
    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->TAG:Ljava/lang/String;

    const-string v0, "ProvisionerClientData"

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method providesProvisionerInfo(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 2

    .line 118
    new-instance v0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;-><init>()V

    .line 119
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setManufacturer(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setFirmwareVersion(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setApplication(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setApplicationVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method providesProvisioningMethod()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    return-object v0
.end method

.method providesProvisioningServiceConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->mProvisioningServiceConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    return-object v0
.end method

.method providesTrustState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;
    .locals 1

    .line 131
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->FFS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 132
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->TRUSTED_ENCRYPTED:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-object p1

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->hasBarcodeData()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->UNTRUSTED_PIN:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-object p1

    .line 137
    :cond_1
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;->UNTRUSTED_ENCRYPTED:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-object p1
.end method

.method providesWorkflowConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    return-object v0
.end method
