.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;
.super Ljava/lang/Object;
.source "FFSProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$ArcusBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FFSProvisioningService"


# instance fields
.field private mArcusBroadcastReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$ArcusBroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mControllerDisposable:Lio/reactivex/disposables/Disposable;

.field private mDebugEnabled:Z

.field mDevicePowerMonitor:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

.field private mDevicePowerStatus:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

.field private mDevicePowerUpdateListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;

.field private mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

.field mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

.field mFFSServiceMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

.field private mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;

.field mLocationPermissionsHelper:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

.field mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

.field private mProvisionerServices:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;

.field private mProvisioningDisposable:Lio/reactivex/disposables/Disposable;

.field private final mProvisioningEventListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ProvisioningEventListener;

.field private mServiceRunning:Z

.field mSharedPreferencesProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

.field private mWhiteListPolicy:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

.field mWhiteListPolicyCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

.field private mWhiteListPolicyUpdateCallback:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;

.field mWhiteListPolicyUpdateListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;

.field private mZeroTouchWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ProvisioningEventListener;)V
    .locals 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$8;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$8;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mWhiteListPolicyUpdateCallback:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;

    .line 342
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$9;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$9;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDevicePowerUpdateListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 112
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;

    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v1

    .line 113
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getProvisionableBeaconType()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfigurationFactory;->createWorkflowConfigurationForAllDevices(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object v2

    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->FFS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mProvisionerServices:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;

    .line 115
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->getDependencyInjector()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;->inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    .line 118
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mProvisioningEventListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ProvisioningEventListener;

    .line 119
    new-instance p2, Lcom/amazon/whisperjoin/util/FireOSUtil;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/amazon/whisperjoin/util/FireOSUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;

    .line 120
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->isDebugEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDebugEnabled:Z

    .line 121
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->persistProvisioningServiceConfiguration(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)V

    .line 122
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->initializeWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eventListener can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "provisioningServiceConfiguration can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mWhiteListPolicy:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->createNewWorkflowFactory()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mWhiteListPolicy:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->restartWorkflowController()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDevicePowerStatus:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDevicePowerStatus:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->updateWorkflowActivityStateBasedOnConstraints(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->stopWorkflowController()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mProvisionerServices:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ProvisioningEventListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mProvisioningEventListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ProvisioningEventListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mProvisioningDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mProvisioningDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mZeroTouchWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    return-object p0
.end method

.method static synthetic access$902(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mZeroTouchWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    return-object p1
.end method

.method private cleanupWorkflow()Lio/reactivex/functions/Action;
    .locals 1

    .line 281
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$7;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$7;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    return-object v0
.end method

.method private createNewWorkflowFactory()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;
    .locals 1

    .line 216
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$3;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$3;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    return-object v0
.end method

.method private isWorkflowActive()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mZeroTouchWorkflowController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private persistProvisioningServiceConfiguration(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mSharedPreferencesProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->getFFSConfigurationPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->writeToSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private recordPermissionsAndSettingsMetricsAtStart()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mLocationPermissionsHelper:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;->isLocationPermissionNeededForBLEScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFFSServiceMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mLocationPermissionsHelper:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    .line 444
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;->isAppLocationPermissionGranted()Z

    move-result v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mLocationPermissionsHelper:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    .line 445
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;->isSystemLocationServicesEnabled()Z

    move-result v2

    .line 443
    invoke-virtual {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->onApiRequireLocationPermissionForScan(ZZ)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFFSServiceMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->onApiDoesntRequireLocationPermissionForScan()V

    :goto_0
    return-void
.end method

.method private restartWorkflowController()V
    .locals 2

    .line 302
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string v1, "Restarting workflow - Arcus settings have changed"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->stopWorkflowController()V

    .line 304
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->startWorkflowController()V

    return-void
.end method

.method private startRecordingMetrics()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFFSServiceMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->onServiceStart()V

    .line 209
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->recordPermissionsAndSettingsMetricsAtStart()V

    return-void
.end method

.method private startWorkflowController()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mControllerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string v1, "Start workflow called but already started, ignoring"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 237
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$6;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$5;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$5;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    .line 254
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 260
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->cleanupWorkflow()Lio/reactivex/functions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$4;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$4;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    .line 261
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    check-cast v1, Lio/reactivex/disposables/Disposable;

    iput-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mControllerDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private stopRecordingMetrics()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFFSServiceMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->onServiceStop()V

    return-void
.end method

.method private stopWorkflowController()V
    .locals 2

    .line 294
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string v1, "Stopping workflow controller"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mControllerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mControllerDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private updateWorkflowActivityStateBasedOnConstraints(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V
    .locals 8

    if-nez p1, :cond_0

    .line 396
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string p2, "WhiteListPolicy is null, no update"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 401
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string p2, "PowerStats is null, no update"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 406
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string p2, "Service not running when update occurred ignoring."

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 410
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;->getBatteryPercentage()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->getMinBatteryLevel()I

    move-result p2

    int-to-double v2, p2

    const/4 p2, 0x1

    const/4 v4, 0x0

    cmpl-double v5, v0, v2

    if-ltz v5, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 411
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->allowedToScan()Z

    move-result v1

    .line 412
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->isWorkflowActive()Z

    move-result v2

    .line 414
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, p2

    const/4 p2, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, p2

    const-string p2, "UpdateWorkflowActivityState: batteryAboveMinThreshold: %b, allowedToScan: %b, workflowActive: %b"

    invoke-static {v5, p2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->isWorkflowActive()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 418
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->allowedToScan()Z

    move-result p1

    if-nez p1, :cond_4

    .line 419
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string p2, "Shutting down active workflow, no longer allowed to scan"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->stopWorkflowController()V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    .line 422
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string p2, "Shutting down active workflow, battery level below min threshold"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->stopWorkflowController()V

    goto :goto_1

    .line 425
    :cond_5
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string p2, "No action taken on active workflow, still allowed to continue"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 430
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->allowedToScan()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    .line 431
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string p2, "Starting workflow since allowed to scan and battery level above min threshold"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->startWorkflowController()V

    goto :goto_1

    .line 434
    :cond_7
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string p2, "No action taken on active workflow, constraints not met"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized isServiceRunning()Z
    .locals 1

    monitor-enter p0

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mServiceRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .line 311
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string v1, "Shutdown Service"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->stopWorkflowController()V

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mServiceRunning:Z

    .line 314
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mWhiteListPolicyCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->cancelAnyPendingRefreshJobs()V

    .line 315
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mWhiteListPolicyUpdateListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->unregisterForWhiteListPolicyUpdates()V

    .line 316
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDevicePowerMonitor:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->stopMonitoring()V

    .line 317
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mArcusBroadcastReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$ArcusBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mArcusBroadcastReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$ArcusBroadcastReceiver;

    .line 320
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->stopRecordingMetrics()V

    return-void
.end method

.method public start()V
    .locals 5

    .line 160
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string v1, "Start Service"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mServiceRunning:Z

    .line 165
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/util/FireOSUtil;->isPoweredDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string v1, "Power monitoring will not be started. Storing current power status."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDevicePowerMonitor:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->getCurrentDevicePowerStatus()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDevicePowerStatus:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    goto :goto_0

    .line 169
    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->TAG:Ljava/lang/String;

    const-string v1, "Starting power monitoring."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDevicePowerMonitor:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDevicePowerUpdateListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;->startMonitoring(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor$DevicePowerUpdateListener;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mDevicePowerStatus:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mWhiteListPolicyUpdateListener:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mWhiteListPolicyUpdateCallback:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->registerForWhiteListPolicyUpdates(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;)V

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.ArcusUpdate.Action"

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$ArcusBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$ArcusBroadcastReceiver;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    iput-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mArcusBroadcastReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$ArcusBroadcastReceiver;

    .line 178
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "com.amazon.whisperjoin.deviceprovisioningservice.ArcusUpdate.Permission"

    invoke-virtual {v2, v1, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 180
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->startRecordingMetrics()V

    .line 182
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getData()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$2;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    .line 183
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$1;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    .line 190
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    return-void
.end method
