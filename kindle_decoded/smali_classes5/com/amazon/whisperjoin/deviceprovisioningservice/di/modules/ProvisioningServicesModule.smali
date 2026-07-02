.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;
.super Ljava/lang/Object;
.source "ProvisioningServicesModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method providesAssociatedDeviceCredentialsSyncCoordinator(Landroid/content/Context;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/google/gson/Gson;)Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;
    .locals 10

    .line 109
    new-instance v9, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;

    move-object v0, v9

    move-object v1, p4

    move-object v2, p5

    move-object v3, p1

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move-object v6, p3

    move-object v7, p2

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;-><init>(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/google/gson/Gson;)V

    return-object v9
.end method

.method providesAutoDiscoverySyncCoordinator(Landroid/content/Context;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;
    .locals 7

    .line 131
    new-instance p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;

    move-object v0, p2

    move-object v1, p4

    move-object v2, p5

    move-object v3, p1

    move-object v4, p7

    move-object v5, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;-><init>(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)V

    return-object p2
.end method

.method providesCredentialSyncCoordinator(Landroid/content/Context;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;
    .locals 9

    .line 95
    new-instance v8, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;

    move-object v0, v8

    move-object v1, p4

    move-object v2, p5

    move-object v3, p1

    move-object/from16 v4, p7

    move-object v5, p6

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;-><init>(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V

    return-object v8
.end method

.method providesDSHSSetCredentialsAPI(Landroid/content/Context;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;)Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;
    .locals 1

    .line 81
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;)V

    return-object v0
.end method

.method providesDSSClient(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
    .locals 0

    .line 55
    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->createOrGetStaticInstance(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    move-result-object p1

    return-object p1
.end method

.method providesDevicePowerMonitor(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;
    .locals 1

    .line 148
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    return-object v0
.end method

.method providesFFSWhiteListPolicyCoordinator(Landroid/content/Context;Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;
    .locals 9

    .line 67
    new-instance v8, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;-><init>(Landroid/content/Context;Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    return-object v8
.end method

.method providesWhiteListPolicyUpdateListener(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;
    .locals 1

    .line 143
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    return-object v0
.end method

.method providesWifiLocker(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;Landroid/content/Context;)Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/WifiLocker;
    .locals 1

    .line 46
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/WifiLocker;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/WifiLocker;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;Landroid/content/Context;)V

    return-object v0
.end method
