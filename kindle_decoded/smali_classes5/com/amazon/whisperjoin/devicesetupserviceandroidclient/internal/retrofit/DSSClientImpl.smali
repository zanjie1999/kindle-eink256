.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;
.super Ljava/lang/Object;
.source "DSSClientImpl.java"

# interfaces
.implements Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$CallDssOnSubscribe;,
        Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;
    }
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x5

.field private static final NEXT_CONTACT_TIMESTAMP_MS_KEY:Ljava/lang/String; = "NextContactTimestampMs"

.field private static final RETRY_DELAY_SEC:I = 0x1e

.field private static final SHARED_PREFERENCES_SCOPE:Ljava/lang/String; = "DssClient"

.field private static final TAG:Ljava/lang/String;

.field private static sStaticInstance:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;


# instance fields
.field jacksonConverterFactory:Lretrofit2/converter/jackson/JacksonConverterFactory;

.field mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

.field mBackgroundScheduler:Lio/reactivex/Scheduler;

.field mClock:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;

.field mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

.field mFFSApiGatewayInterface:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;

.field mMainThreadScheduler:Lio/reactivex/Scheduler;

.field mRegionSpecificUrl:Ljava/lang/String;

.field mSharedPreferencesProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WJ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)V
    .locals 7

    .line 179
    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    invoke-direct {v1, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    invoke-direct {v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;-><init>()V

    new-instance v3, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    invoke-direct {v3, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)V

    new-instance v4, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

    invoke-direct {v4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;-><init>()V

    new-instance v5, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    invoke-direct {v5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;-><init>()V

    new-instance v6, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    invoke-direct {v6}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;)V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mRegionSpecificUrl:Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->builder()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->contextModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->authModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;

    move-result-object p1

    .line 206
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->networkingModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->rxModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;

    move-result-object p1

    .line 208
    invoke-virtual {p1, p5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->clockModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1, p6}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->sharedPreferencesModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DSSComponent;

    move-result-object p1

    .line 211
    invoke-interface {p1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DSSComponent;->inject(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->setRegionSpecificUrlIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getRegionalizedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getDiscoveredDistressedProvisioneeInput(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getDiscoveredLocalNotificatioinProvisioneeInput(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getDiscoveredSmartHomeProvisioneeInput(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusOutput;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getGetRegistrationStatusResponse(Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusOutput;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;)Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getGetRegistrationStatusInput(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;)Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->createProvisioneeSetupStatus(Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 145
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
    .locals 1

    .line 174
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)V

    return-object v0
.end method

.method public static createOrGetStaticInstance(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
    .locals 1

    .line 191
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->sStaticInstance:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    if-eqz v0, :cond_0

    .line 193
    sget-object p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->sStaticInstance:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-object p0

    .line 196
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->sStaticInstance:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-object v0
.end method

.method private createProvisioneeSetupStatus(Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;
    .locals 4

    .line 892
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;-><init>()V

    .line 894
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->setErrorCode(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;

    move-result-object v0

    .line 895
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->setLastUpdatedTime(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;

    move-result-object v0

    .line 896
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->getProvisioningMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;

    move-result-object v0

    .line 897
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->getProvisioningState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->setProvisioningState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;

    move-result-object v0

    .line 898
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->getProvisioningStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->setProvisioningStatus(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;

    move-result-object v0

    .line 899
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->getAuthMaterialIdentifier()Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 901
    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;

    invoke-direct {v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;-><init>()V

    .line 903
    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;->getAuthMaterialIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->setAuthMaterialIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;

    move-result-object v2

    .line 904
    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;->getProductIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;

    move-result-object v1

    .line 905
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    move-result-object v1

    .line 901
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->setAuthMaterialIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;

    .line 907
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->getProvisionerInformation()Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 909
    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;

    invoke-direct {v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;-><init>()V

    .line 911
    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->setDeviceType(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;

    move-result-object v2

    .line 912
    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;->getDsn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->setDsn(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;

    move-result-object v1

    .line 913
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    move-result-object v1

    .line 909
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->setProvisionerInformation(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;

    .line 915
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;->getProvisioneeIdentifier()Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;

    move-result-object p1

    .line 916
    instance-of v1, p1, Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;

    if-eqz v1, :cond_2

    .line 917
    check-cast p1, Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;

    .line 918
    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;-><init>()V

    .line 920
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;->getAuthMaterialIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->setAuthMaterialIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;

    move-result-object v1

    .line 921
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;->getProductIndex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;

    move-result-object p1

    .line 922
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    move-result-object p1

    .line 918
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->setProvisioneeAuthMaterialIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;

    goto :goto_0

    .line 923
    :cond_2
    instance-of v1, p1, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;

    if-eqz v1, :cond_3

    .line 924
    check-cast p1, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;

    .line 925
    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;-><init>()V

    .line 927
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;->getBarcodeData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;->setBarcodeData(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;

    move-result-object p1

    .line 928
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;->build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    move-result-object p1

    .line 925
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->setProvisioneeBarcodeIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;

    goto :goto_0

    .line 930
    :cond_3
    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized ProvisioneeIdentifier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;

    move-result-object p1

    return-object p1
.end method

.method static createReportSmartHomeEventInput(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;
    .locals 4

    .line 1285
    new-instance v0, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;-><init>()V

    .line 1287
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->setEvent(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->setState(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->setSequenceNumber(I)V

    .line 1290
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V

    .line 1291
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getErrorInfo()Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V

    .line 1292
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getProductIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->setProductIndex(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getRadio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->setRadio(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getProvisioningMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->setProvisioningMethod(Ljava/lang/String;)V

    .line 1296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getBleMac()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1298
    new-instance v2, Lcom/amazon/devicesetupservice/smarthome/MacIdentifier;

    invoke-direct {v2}, Lcom/amazon/devicesetupservice/smarthome/MacIdentifier;-><init>()V

    const-string v3, "BLE"

    .line 1299
    invoke-virtual {v2, v3}, Lcom/amazon/devicesetupservice/smarthome/MacIdentifier;->setProtocolType(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getBleMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/devicesetupservice/smarthome/MacIdentifier;->setMacAddress(Ljava/lang/String;)V

    .line 1301
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getZigbeeMac()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1305
    new-instance v2, Lcom/amazon/devicesetupservice/smarthome/MacIdentifier;

    invoke-direct {v2}, Lcom/amazon/devicesetupservice/smarthome/MacIdentifier;-><init>()V

    const-string v3, "ZIGBEE"

    .line 1306
    invoke-virtual {v2, v3}, Lcom/amazon/devicesetupservice/smarthome/MacIdentifier;->setProtocolType(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;->getZigbeeMac()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/amazon/devicesetupservice/smarthome/MacIdentifier;->setMacAddress(Ljava/lang/String;)V

    .line 1308
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    :cond_1
    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/ReportSmartHomeEventInput;->setProvisioneeMacIdentifiers(Ljava/util/List;)V

    return-object v0
.end method

.method private getDiscoveredDistressedProvisioneeInput(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;
    .locals 5

    .line 344
    new-instance v0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;-><init>()V

    .line 346
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getProvisionerDetails(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;

    move-result-object v1

    .line 348
    new-instance v2, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;

    invoke-direct {v2}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;-><init>()V

    .line 349
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;->getTrustMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->setTrustMethod(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;->getProvisioningMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->setProvisioningMethod(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;->getNonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressDiscoveryInputParameters;->setNonce(Ljava/lang/String;)V

    .line 353
    new-instance v3, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;

    invoke-direct {v3}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;-><init>()V

    .line 354
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;->getConnectivityErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->setConnectivityErrorCode(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;->getProvisioneeInfo()Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->setProvisioneeInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V

    .line 356
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->setRssi(I)V

    .line 357
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;->getProductIndex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->setProductIndex(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;->getAuthMaterialIndex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->setAuthMaterialIndex(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;->getRadio()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->setRadio(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;->getAdvertisedSdkVersionIndex()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->setAdvertisedSdkVersionIndex(I)V

    .line 362
    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->setProvisionerDetails(Lcom/amazon/devicesetupservice/ProvisionerDetails;)V

    .line 363
    invoke-virtual {v0, v3}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->setProvisioneeDetails(Lcom/amazon/devicesetupservice/ProvisioneeDetails;)V

    .line 364
    invoke-virtual {v0, v2}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->setDiscoveryInputParameters(Lcom/amazon/devicesetupservice/DiscoveryInputParameters;)V

    return-object v0
.end method

.method private getDiscoveredLocalNotificatioinProvisioneeInput(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;
    .locals 5

    .line 430
    new-instance v0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;-><init>()V

    .line 432
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getProvisionerDetails(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;

    move-result-object v1

    .line 434
    new-instance v2, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationInputParameters;

    invoke-direct {v2}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationInputParameters;-><init>()V

    .line 436
    new-instance v3, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;

    invoke-direct {v3}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;-><init>()V

    .line 437
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;->getRadio()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->setRadio(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->setRssi(I)V

    .line 439
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;->getProductIndex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->setProductIndex(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;->getAuthMaterialIndex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->setAuthMaterialIndex(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;->getProvisioneeInfo()Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->setProvisioneeInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V

    .line 442
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;->getConnectivityErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->setConnectivityErrorCode(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->setNonce(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;->getAuthenticationMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->setAuthenticationMode(I)V

    .line 445
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;->getAdvertisementVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->setAdvertisementVersion(I)V

    .line 446
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;->getAdvertisedSdkVersionIndex()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->setAdvertisedSdkVersionIndex(I)V

    .line 448
    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->setProvisionerDetails(Lcom/amazon/devicesetupservice/ProvisionerDetails;)V

    .line 449
    invoke-virtual {v0, v3}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->setProvisioneeDetails(Lcom/amazon/devicesetupservice/ProvisioneeDetails;)V

    .line 450
    invoke-virtual {v0, v2}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->setDiscoveryInputParameters(Lcom/amazon/devicesetupservice/DiscoveryInputParameters;)V

    return-object v0
.end method

.method private getDiscoveredSmartHomeProvisioneeInput(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;
    .locals 5

    .line 494
    new-instance v0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;-><init>()V

    .line 496
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getProvisionerDetails(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;

    move-result-object v1

    .line 498
    new-instance v2, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDiscoveryInputParameters;

    invoke-direct {v2}, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDiscoveryInputParameters;-><init>()V

    .line 499
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->getProtocolType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/devicesetupservice/smarthome/SmartHomeDiscoveryInputParameters;->setProtocolType(Ljava/lang/String;)V

    .line 501
    new-instance v3, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;

    invoke-direct {v3}, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;-><init>()V

    .line 502
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->setMac(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;->getRssi()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/amazon/devicesetupservice/smarthome/SmartHomeProvisioneeDetails;->setRssi(I)V

    .line 505
    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->setProvisionerDetails(Lcom/amazon/devicesetupservice/ProvisionerDetails;)V

    .line 506
    invoke-virtual {v0, v3}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->setProvisioneeDetails(Lcom/amazon/devicesetupservice/ProvisioneeDetails;)V

    .line 507
    invoke-virtual {v0, v2}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeInput;->setDiscoveryInputParameters(Lcom/amazon/devicesetupservice/DiscoveryInputParameters;)V

    return-object v0
.end method

.method private getFFSWhiteListPolicyBasedOnDeviceVersion(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;",
            ">;"
        }
    .end annotation

    .line 676
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 677
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getPolicyForOldDevices(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;

    const/4 v1, 0x5

    const/16 v2, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/RetryWithDelay;-><init>(IILjava/util/concurrent/TimeUnit;)V

    .line 678
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 680
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getPolicyForNewDevices(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private getGetRegistrationStatusInput(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;)Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;
    .locals 3

    .line 1320
    new-instance v0, Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;-><init>()V

    .line 1321
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;->getBarcodeIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1322
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;->getBarcodeIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;->setBarcodeIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 1323
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;->getAuthMaterialIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest$AuthMaterialIdentifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1324
    new-instance v1, Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;

    invoke-direct {v1}, Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;-><init>()V

    .line 1325
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;->getAuthMaterialIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest$AuthMaterialIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;->getAuthMaterialIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;->setAuthMaterialIndex(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;->getAuthMaterialIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest$AuthMaterialIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;->getProductIndex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;->setProductIndex(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusInput;->setAuthMaterialIdentifier(Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;)V

    goto :goto_0

    .line 1328
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;->getLegacyIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest$LegacyIdentifierData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1329
    new-instance v1, Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;

    invoke-direct {v1}, Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;-><init>()V

    .line 1330
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;->getLegacyIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest$LegacyIdentifierData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;->setDeviceType(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;->getLegacyIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest$LegacyIdentifierData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;->getDsn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;->setDsn(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getGetRegistrationStatusResponse(Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusOutput;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;
    .locals 5

    .line 1344
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusOutput;->getRegistrationState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x53b88207

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x1f5fec72

    if-eq v1, v2, :cond_1

    const v2, 0x36fa24cf

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "PAST_REGISTERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "NOT_REGISTERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "RECENTLY_REGISTERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-ne v0, v3, :cond_4

    .line 1352
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->NOT_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    goto :goto_2

    .line 1355
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected DSS registration state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusOutput;->getRegistrationState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1349
    :cond_5
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->RECENTLY_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    goto :goto_2

    .line 1346
    :cond_6
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->PAST_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    .line 1358
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusOutput;->getDurationToWait()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v1

    .line 1360
    new-instance v3, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/GetDeviceRegistrationStatusOutput;->getLastRegisteredTime()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;JLjava/lang/String;)V

    return-object v3
.end method

.method private getPolicyForNewDevices(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;)Lio/reactivex/Single;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;",
            ">;"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mFFSApiGatewayInterface:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;

    .line 701
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    .line 703
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    .line 704
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->getPlatform()Ljava/lang/String;

    move-result-object v4

    .line 705
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->getApplication()Ljava/lang/String;

    move-result-object v5

    .line 706
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->getApplicationVersion()Ljava/lang/String;

    move-result-object v6

    .line 707
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->getMarketplace()Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;->getCustomerId()Ljava/lang/String;

    move-result-object v8

    .line 700
    invoke-interface/range {v0 .. v8}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;->getFFSWhiteListPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 712
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$CallDssOnSubscribe;

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_FFS_WHITELIST_POLICY:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$CallDssOnSubscribe;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lretrofit2/Call;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$15;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$15;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 713
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private getPolicyForOldDevices(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;",
            ">;"
        }
    .end annotation

    .line 691
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$14;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$14;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;)V

    invoke-static {v0}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private getProvisionerDetails(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;)Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;
    .locals 2

    .line 512
    new-instance v0, Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;-><init>()V

    .line 513
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->getApplication()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;->setApplication(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;->setApplicationVersion(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;->setDeviceModel(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;->setFirmwareVersion(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->getManufacturer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/devicesetupservice/v1/FirstPartyProvisionerDetails;->setManufacturer(Ljava/lang/String;)V

    return-object v0
.end method

.method private getRegionalizedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mRegionSpecificUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setRegionSpecificUrlIfNecessary(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "/"

    .line 1246
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mRegionSpecificUrl:Ljava/lang/String;

    goto :goto_0

    .line 1251
    :cond_1
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mRegionSpecificUrl:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public computeConfigurationData(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 765
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->COMPUTE_CONFIGURATION_DATA:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 767
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$19;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$19;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 768
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$18;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$18;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 787
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 795
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 796
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 797
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 763
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createAPForWifiProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1015
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->CREATE_AP_FOR_WIFI_PROVISIONEE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 1017
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1018
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$31;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$31;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 1040
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$30;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$30;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 1056
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1062
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 1063
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 1064
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 1012
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public discoveredDistressedProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 297
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->DISCOVERED_PROVISIONEE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 299
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$4;

    invoke-direct {v2, p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$4;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;)V

    .line 300
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$3;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$3;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 314
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 338
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 339
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 340
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 294
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public discoveredLocalNotificationProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 379
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->DISCOVERED_PROVISIONEE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 381
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$6;

    invoke-direct {v2, p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$6;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;)V

    .line 382
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$5;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$5;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 397
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 423
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 424
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 425
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 376
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public discoveredProvisionableDevice(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 234
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 237
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 238
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$1;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$1;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 268
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 279
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 280
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 281
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public discoveredSmartHomeProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 460
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->DISCOVERED_PROVISIONEE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 462
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$8;

    invoke-direct {v2, p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$8;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;)V

    .line 463
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$7;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$7;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 477
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 488
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 489
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 490
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 457
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finalizeEcdheAuthenticationSession(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 585
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->FINALIZE_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 588
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$12;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 589
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$11;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$11;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 607
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 613
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 614
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 615
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 583
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCustomerDevicesCredentials(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1072
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_CUSTOMER_DEVICES_CREDENTIALS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 1073
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1074
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$33;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$33;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 1090
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1101
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 1102
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 1103
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 1070
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCustomerDevicesCredentialsV2(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsV2Output;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1207
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_CUSTOMER_DEVICES_CREDENTIALS_V2:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 1208
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$40;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$40;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1209
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$39;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$39;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 1225
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1235
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 1236
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 1237
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 1205
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCustomerProvisioneesSetupStatus(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Request can not be null"

    .line 837
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 838
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_CUSTOMER_PROVISIONEES_SETUP_STATUS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 840
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$23;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$23;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 841
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$22;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$22;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 872
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 886
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 887
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 888
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getFFSWhiteListPolicy(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 665
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_FFS_WHITELIST_POLICY:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 667
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getFFSWhiteListPolicyBasedOnDeviceVersion(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 668
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 669
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 670
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 663
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRegistrationStatus(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 806
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_DEVICE_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 809
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$21;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$21;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 810
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$20;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$20;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 823
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 829
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 830
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 831
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 804
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWiFiSyncAuthToken(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1117
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 1118
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$36;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$36;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1119
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$35;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$35;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 1138
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1148
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 1149
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 1150
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 1115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWifiNetworks(Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 940
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_WIFI_NETWORKS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 942
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 943
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$25;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$25;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 955
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$24;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$24;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 961
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 967
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 968
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 969
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 938
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public recordDevicePossessionIntentInnerBarcode(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;)Lio/reactivex/Completable;
    .locals 3

    if-eqz p1, :cond_0

    .line 726
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->RECORD_DEVICE_POSSESSION_INTENT_WITH_INNER_BARCODE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 729
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$17;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$17;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 730
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 748
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$16;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$16;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 749
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 755
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 756
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    .line 724
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;)Lio/reactivex/Completable;
    .locals 3

    if-eqz p1, :cond_0

    .line 627
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->REPORT_EVENT:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 629
    new-instance v1, Lcom/amazon/devicesetupservice/v1/ReportEventInput;

    invoke-direct {v1}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;-><init>()V

    .line 631
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setEvent(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setState(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setSequenceNumber(I)V

    .line 634
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getProvisioningMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setProvisioningMethod(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getKeyExchangeMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setKeyExchangeMethod(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getTrustMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setTrustMethod(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getRadio()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setRadio(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getProvisionableInfo()Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setProvisionableInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V

    .line 639
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V

    .line 640
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getRegistrationState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setRegistrationState(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getWifiNetworkInfo()Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setWifiNetworkInfo(Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;)V

    .line 642
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getErrorInfo()Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V

    .line 643
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getCredentialLockerUsageInfo()Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/v1/ReportEventInput;->setCredentialLockerUsageInfo(Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;)V

    .line 645
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportEventRequest;->getReportingUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;->reportEvent(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ReportEventInput;)Lretrofit2/Call;

    move-result-object p1

    .line 647
    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$CallDssOnSubscribe;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$CallDssOnSubscribe;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lretrofit2/Call;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    invoke-static {v1}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 648
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$13;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$13;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 649
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 656
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 657
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    .line 625
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportSmartHomeEvent(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;)Lio/reactivex/Completable;
    .locals 3

    if-eqz p1, :cond_0

    .line 1260
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->REPORT_SMART_HOME_EVENT:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 1262
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$42;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$42;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ReportSmartHomeEventRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1263
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1272
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$41;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$41;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 1273
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 1280
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 1281
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    .line 1258
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveWifiNetwork(Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 977
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->SAVE_WIFI_NETWORK:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 979
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$29;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$29;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkInput;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 980
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$28;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$28;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 992
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$27;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$27;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 998
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1004
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 1005
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 1006
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 975
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDssApi(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)V
    .locals 1

    .line 216
    sget-object p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->TAG:Ljava/lang/String;

    const-string v0, "The setDssApi method may only be called in a debug build. Please remove any references to this method that are used in release builds."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startEcdheAuthenticationSession(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 536
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->START_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 539
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$10;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 540
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$9;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$9;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 561
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 569
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 570
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 571
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 534
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateWiFiSyncAuthToken(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenResponse;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1167
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->VALIDATE_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 1168
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mAccessTokenProvider:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$38;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$38;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1169
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$37;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$37;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V

    .line 1187
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$WrapFailureCauseWithDSSClientError;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    .line 1197
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mBackgroundScheduler:Lio/reactivex/Scheduler;

    .line 1198
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mMainThreadScheduler:Lio/reactivex/Scheduler;

    .line 1199
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 1165
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
