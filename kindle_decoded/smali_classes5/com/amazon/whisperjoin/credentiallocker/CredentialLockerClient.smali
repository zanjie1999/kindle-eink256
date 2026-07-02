.class public Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;
.super Ljava/lang/Object;
.source "CredentialLockerClient.java"


# static fields
.field private static final CRED_LOCKER_ENDPOINT:Ljava/lang/String; = "https://credential-locker-service.amazon.com"

.field private static final TAG:Ljava/lang/String; = "CredentialLockerClient"


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private mClientManufacturer:Ljava/lang/String;

.field private mClientModel:Ljava/lang/String;

.field private mClientName:Ljava/lang/String;

.field private mClientOs:Ljava/lang/String;

.field private mClientOsVersion:Ljava/lang/String;

.field private mClientProduct:Ljava/lang/String;

.field private mClientVersion:Ljava/lang/String;

.field private final mConnectionFactory:Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;

.field private mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

.field private final mSetupAttemptMetricHelper:Lcom/amazon/whisperjoin/credentiallocker/SetupAttemptMetricHelper;

.field private final mUrlBuilder:Lcom/amazon/whisperjoin/credentiallocker/CredLockerUrlBuilder;

.field private final wifiConfigurationTypeAdapter:Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->wifiConfigurationTypeAdapter:Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;

    .line 62
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->wifiConfigurationTypeAdapter:Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    const-class v1, Lcom/amazon/credentiallocker/WifiConfiguration;

    iget-object v2, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->wifiConfigurationTypeAdapter:Lcom/amazon/whisperjoin/credentiallocker/WifiConfigurationTypeAdapter;

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->gson:Lcom/google/gson/Gson;

    .line 80
    invoke-static {p2}, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->defaultConnectionFactory(Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->mConnectionFactory:Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;

    .line 81
    invoke-static {p2}, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->defaultConnectionFactory(Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->defaultUrlBuilder(Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;)Lcom/amazon/whisperjoin/credentiallocker/CredLockerUrlBuilder;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->mUrlBuilder:Lcom/amazon/whisperjoin/credentiallocker/CredLockerUrlBuilder;

    .line 82
    invoke-static {}, Lcom/amazon/whisperjoin/credentiallocker/SetupAttemptMetricHelper;->getInstance()Lcom/amazon/whisperjoin/credentiallocker/SetupAttemptMetricHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->mSetupAttemptMetricHelper:Lcom/amazon/whisperjoin/credentiallocker/SetupAttemptMetricHelper;

    .line 84
    invoke-static {p1}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/provisioning/metrics/internal/operational/InternalMetricsHelper;->init(Landroid/content/Context;Lcom/amazon/client/metrics/common/MetricsFactory;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->mClientName:Ljava/lang/String;

    .line 90
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->mClientVersion:Ljava/lang/String;

    .line 92
    sget-object p2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->mClientProduct:Ljava/lang/String;

    .line 93
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->mClientModel:Ljava/lang/String;

    .line 94
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->mClientManufacturer:Ljava/lang/String;

    const-string p2, "Android"

    .line 95
    iput-object p2, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->mClientOs:Ljava/lang/String;

    .line 96
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->mClientOsVersion:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    return-void
.end method

.method private static defaultConnectionFactory(Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;
    .locals 1

    .line 202
    new-instance v0, Lcom/amazon/whisperjoin/credentiallocker/AuthenticatedUrlConnectionFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/credentiallocker/AuthenticatedUrlConnectionFactory;-><init>(Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V

    return-object v0
.end method

.method private static defaultEndpointResolver(Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;)Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolver;
    .locals 2

    .line 210
    new-instance v0, Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolverImpl;

    const-string v1, "https://credential-locker-service.amazon.com"

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolverImpl;-><init>(Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;Ljava/lang/String;)V

    return-object v0
.end method

.method private static defaultUrlBuilder(Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;)Lcom/amazon/whisperjoin/credentiallocker/CredLockerUrlBuilder;
    .locals 1

    .line 206
    new-instance v0, Lcom/amazon/whisperjoin/credentiallocker/CredLockerUrlBuilderImpl;

    invoke-static {p0}, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;->defaultEndpointResolver(Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;)Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolver;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/credentiallocker/CredLockerUrlBuilderImpl;-><init>(Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolver;)V

    return-object v0
.end method
