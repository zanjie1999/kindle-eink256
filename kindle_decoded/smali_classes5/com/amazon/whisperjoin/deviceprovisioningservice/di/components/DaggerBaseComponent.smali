.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;
.super Ljava/lang/Object;
.source "DaggerBaseComponent.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;
    }
.end annotation


# instance fields
.field private mapAuthModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;

.field private providesBluetoothSupportProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private providesContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private providesDefaultArcuConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private providesFFSArcusSyncClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;",
            ">;"
        }
    .end annotation
.end field

.field private providesFFSArcusSyncCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private providesGsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private providesJobInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesJobSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/job/JobScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private providesRemoteConfigurationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesWifiManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field

.field private utilModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;
    .locals 2

    .line 78
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)V
    .locals 8

    .line 84
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesContextFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 88
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 87
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesJobSchedulerFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesJobSchedulerProvider:Ljavax/inject/Provider;

    .line 89
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->mapAuthModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;

    .line 93
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 92
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesSharedPreferencesProviderFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 91
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 95
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesGsonFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesGsonProvider:Ljavax/inject/Provider;

    .line 97
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesJobInfoProviderFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesJobInfoProvider:Ljavax/inject/Provider;

    .line 98
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesClockFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesClockProvider:Ljavax/inject/Provider;

    .line 101
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesDefaultArcuConfigurationFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 100
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesDefaultArcuConfigurationProvider:Ljavax/inject/Provider;

    .line 105
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesDefaultArcuConfigurationProvider:Ljavax/inject/Provider;

    .line 104
    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesRemoteConfigurationManagerFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 103
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesRemoteConfigurationManagerProvider:Ljavax/inject/Provider;

    .line 111
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesRemoteConfigurationManagerProvider:Ljavax/inject/Provider;

    .line 110
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncClientFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 109
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesFFSArcusSyncClientProvider:Ljavax/inject/Provider;

    .line 115
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesJobSchedulerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesJobInfoProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesSharedPreferencesProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesClockProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesFFSArcusSyncClientProvider:Ljavax/inject/Provider;

    .line 114
    invoke-static/range {v1 .. v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 113
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesFFSArcusSyncCoordinatorProvider:Ljavax/inject/Provider;

    .line 122
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->utilModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    .line 126
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 125
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesBluetoothSupportProviderFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 124
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesBluetoothSupportProvider:Ljavax/inject/Provider;

    .line 130
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 129
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule_ProvidesWifiManagerFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    .line 128
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesWifiManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getBluetoothSupportProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesBluetoothSupportProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;

    return-object v0
.end method

.method public getClock()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->utilModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    .line 169
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesClockFactory;->proxyProvidesClock(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 168
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentWifiNetworkProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->utilModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesWifiManagerProvider:Ljavax/inject/Provider;

    .line 210
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesCurrentWifiNetworkProviderFactory;->proxyProvidesCurrentWifiNetworkProvider(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;Landroid/net/wifi/WifiManager;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 208
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    return-object v0
.end method

.method public getDevicePowerStatusProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->utilModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 202
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 201
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesDevicePowerStatsProviderFactory;->proxyProvidesDevicePowerStatsProvider(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 200
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    return-object v0
.end method

.method public getFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesFFSArcusSyncCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    return-object v0
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesGsonProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method public getJobInfoProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->utilModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    .line 176
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesJobInfoProviderFactory;->proxyProvidesJobInfoProvider(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 175
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    return-object v0
.end method

.method public getJobScheduler()Landroid/app/job/JobScheduler;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesJobSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public getLocationPermissionHelper()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->utilModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 184
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 183
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule_ProvidesLocationPermissionsHelperFactory;->proxyProvidesLocationPermissionsHelper(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 182
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    return-object v0
.end method

.method public getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->mapAuthModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 147
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 146
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule_ProvidesMapProviderFactory;->proxyProvidesMapProvider(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 145
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    return-object v0
.end method

.method public getSharedPreferencesProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;->providesSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    return-object v0
.end method
