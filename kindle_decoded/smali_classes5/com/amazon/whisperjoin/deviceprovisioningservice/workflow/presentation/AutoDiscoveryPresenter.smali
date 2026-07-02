.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;
.source "AutoDiscoveryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoDiscoveryPresenter"


# instance fields
.field mAutoDiscoverySyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;

.field private final mContext:Landroid/content/Context;

.field mDeviceDiscoveryStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

.field private mDeviceDiscoveryStreamSubscription:Lio/reactivex/disposables/Disposable;

.field mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

.field private final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field mDssClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

.field private final mKnownDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;",
            ">;"
        }
    .end annotation
.end field

.field mMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

.field mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

.field private mReportedDevicesForControlledSetup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedDevicesIneligibleForAutomatedSetup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnblessedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            ">;"
        }
    .end annotation
.end field

.field mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;-><init>()V

    .line 108
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mKnownDevices:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mUnblessedDevices:Ljava/util/Set;

    .line 110
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesForControlledSetup:Ljava/util/List;

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesIneligibleForAutomatedSetup:Ljava/util/List;

    .line 147
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    .line 149
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDeviceDiscoveryStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    .line 150
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDssClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 151
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;-><init>()V

    .line 108
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mKnownDevices:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mUnblessedDevices:Ljava/util/Set;

    .line 110
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesForControlledSetup:Ljava/util/List;

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesIneligibleForAutomatedSetup:Ljava/util/List;

    .line 120
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->initializeBaseComponent(Landroid/content/Context;)V

    .line 123
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;

    .line 124
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper;->getBaseComponent()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v0

    .line 126
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getProvisionableBeaconType()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfigurationFactory;->createWorkflowConfigurationForAllDevices(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object v1

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->MANUAL:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-direct {p1, v0, p2, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)V

    .line 128
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->HIGH_POWER_LOW_LATENCY:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;-><init>()V

    .line 129
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ThrottleSettings;->getOveractiveConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    .line 128
    invoke-virtual {p1, v0, v2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->initProvisioningComponent(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;ZLcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 130
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->getProvisioningDependencyInjector()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningDependencyInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningDependencyInjector;->inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)V

    .line 133
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/PresenterValidator;->validatePreconditions(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 135
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mAutoDiscoverySyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;

    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->initializeWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 136
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->initializeWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 137
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDeviceDiscoveryStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;->getStreamDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->handleAttach()V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)Lio/reactivex/SingleSource;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->discoverLocalNotificationDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->reportSetupStatusResponse(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->reportDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Ljava/lang/Throwable;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->reportFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->getDeviceDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->getDiscoveredDevice(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)Ljava/util/Map;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mKnownDevices:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)Ljava/util/Set;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mUnblessedDevices:Ljava/util/Set;

    return-object p0
.end method

.method private discoverLocalNotificationDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)Lio/reactivex/SingleSource;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;",
            ")",
            "Lio/reactivex/SingleSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 265
    invoke-direct/range {p0 .. p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->getDeviceDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getRadios()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 267
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    .line 272
    new-instance v9, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    invoke-direct {v9}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;-><init>()V

    .line 273
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setSoftwareVersionIndex(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setDeviceName(Ljava/lang/String;)V

    .line 276
    new-instance v15, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;

    .line 279
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getSignalStrength()I

    move-result v6

    .line 280
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v7

    .line 281
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v8

    .line 283
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->isDistressed()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;->getDistressErrorCode()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v10, v3

    .line 284
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object v11

    .line 285
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getAuthenticationMode()I

    move-result v12

    .line 286
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->isDistressed()Z

    move-result v13

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v14

    .line 288
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getAdvertisedSdkVersionIndex()I

    move-result v2

    const-string v5, "BluetoothLowEnergy"

    move-object v4, v15

    move-object v3, v15

    move v15, v2

    invoke-direct/range {v4 .. v15}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Ljava/lang/String;Ljava/lang/String;IILcom/amazon/devicesetupservice/v1/ProvisionerInfo;I)V

    const-wide/16 v4, 0x1

    .line 291
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v2}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object v2

    iget-object v4, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDssClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 292
    invoke-interface {v4, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->discoveredLocalNotificationProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;)Lio/reactivex/Single;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->andThen(Lio/reactivex/SingleSource;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$6;

    invoke-direct {v3, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$6;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)V

    .line 293
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v2

    .line 300
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$5;

    invoke-direct {v3, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$5;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)V

    .line 301
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    return-object v1

    .line 268
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discovered device missing radio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getDeviceDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;
    .locals 0

    .line 399
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    return-object p1
.end method

.method private getDiscoveredDevice(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;
    .locals 7

    .line 403
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->isDistressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;

    .line 405
    new-instance v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;->getDistressErrorObject()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V

    return-object v6

    .line 408
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    .line 409
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 2

    .line 429
    new-instance v0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;-><init>()V

    .line 430
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setManufacturer(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setFirmwareVersion(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setApplication(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setApplicationVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method private handleAttach()V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesForControlledSetup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesForControlledSetup:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->showDevicesForControlledSetup(Ljava/util/List;)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesIneligibleForAutomatedSetup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesIneligibleForAutomatedSetup:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->showDevicesIneligibleForAutomatedSetup(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private maybeShowDevicesForControlledSetup()V
    .locals 4

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mKnownDevices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;

    invoke-static {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->access$1100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesForControlledSetup:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 423
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->showDevicesForControlledSetup(Ljava/util/List;)V

    .line 424
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesForControlledSetup:Ljava/util/List;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 421
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private maybeShowDevicesIneligibleForAutomatedSetup()V
    .locals 4

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mKnownDevices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 452
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;

    invoke-static {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->access$1000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesIneligibleForAutomatedSetup:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 458
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->showDevicesIneligibleForAutomatedSetup(Ljava/util/List;)V

    .line 459
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mReportedDevicesIneligibleForAutomatedSetup:Ljava/util/List;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 456
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private reportDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;)V
    .locals 5

    .line 371
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->getDeviceDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    .line 372
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->getDiscoveredDevice(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-result-object v1

    .line 373
    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->canProceed()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;ZLcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$1;)V

    .line 375
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->canProceed()Z

    move-result p2

    if-nez p2, :cond_0

    .line 376
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring device due to canProceed=false "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mUnblessedDevices:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 386
    :cond_0
    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    monitor-enter p0

    .line 388
    :try_start_1
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mKnownDevices:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->maybeShowDevicesForControlledSetup()V

    .line 391
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->maybeShowDevicesIneligibleForAutomatedSetup()V

    return-void

    :catchall_1
    move-exception p1

    .line 389
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private reportFailure(Ljava/lang/Throwable;)V
    .locals 4

    .line 357
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 358
    instance-of v1, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$OveractivityDetected;

    if-eqz v1, :cond_0

    return-void

    .line 361
    :cond_0
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->TAG:Ljava/lang/String;

    const-string v2, "There was error calling GetCustomerProvisioneesSetupStatusResponse"

    invoke-static {v1, v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    invoke-interface {v2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    .line 365
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;

    new-instance v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/FailureViewModel;

    invoke-direct {v3, p1, v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/FailureViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V

    invoke-interface {v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;->showFailure(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/FailureViewModel;)V

    .line 366
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->onFailureReport()V

    return-void
.end method

.method private reportSetupStatusResponse(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;)V
    .locals 2

    .line 347
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 349
    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;-><init>()V

    .line 350
    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;->setGetCustomerProvisioneesSetupStatusResponse(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;

    .line 351
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;

    move-result-object v1

    .line 349
    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;->showRecentlySetupDevices(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;)V

    .line 352
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;->getProvisioneeSetupStatuses()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->onRecentlySetupDevicesReport(I)V

    :cond_0
    return-void
.end method

.method private showDevicesForControlledSetup(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            ">;)V"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 442
    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;

    invoke-direct {v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;)V

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;->showDevicesForControlledSetup(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;)V

    .line 444
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->onControlledSetupReport(I)V

    :cond_0
    return-void
.end method

.method private showDevicesIneligibleForAutomatedSetup(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            ">;)V"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 466
    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;

    invoke-direct {v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;)V

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;->showDevicesIneligibleForAutomatedSetup(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;)V

    .line 468
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->onDevicesIneligibleForAutomatedSetupReport(I)V

    :cond_0
    return-void
.end method

.method private stopDiscovery()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDeviceDiscoveryStreamSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDeviceDiscoveryStreamSubscription:Lio/reactivex/disposables/Disposable;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDeviceDiscoveryStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;->stop()V

    .line 319
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->onAutoDiscoveryStop()V

    return-void
.end method


# virtual methods
.method public attachView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->attachView(Ljava/lang/Object;)V

    .line 159
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 167
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public bridge synthetic attachView(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->attachView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenterContract$View;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 180
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Destroy"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->stopDiscovery()V

    .line 182
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->mView:Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->onDestroy()V

    return-void
.end method

.method public detachView()V
    .locals 0

    .line 173
    invoke-super {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/BasePresenter;->detachView()V

    return-void
.end method

.method public getCustomerProvisioneesSetupStatus()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->onGetCustomerProvisioneesSetupStatus()V

    .line 325
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mAutoDiscoverySyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->getData()Lio/reactivex/Single;

    move-result-object v1

    .line 326
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$7;

    invoke-direct {v2, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$7;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)V

    .line 327
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    check-cast v2, Lio/reactivex/disposables/Disposable;

    .line 325
    invoke-virtual {v0, v2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public startDiscovery()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->onAutoDiscoveryStart()V

    .line 190
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDeviceDiscoveryStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;->getEventStream()Lio/reactivex/Observable;

    move-result-object v0

    .line 191
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$4;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$4;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)V

    .line 192
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 235
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$2;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)V

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$3;

    invoke-direct {v2, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$3;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)V

    .line 236
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDeviceDiscoveryStreamSubscription:Lio/reactivex/disposables/Disposable;

    .line 254
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 255
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDeviceDiscoveryStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;->start(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;)V

    return-void
.end method

.method public terminate()V
    .locals 0

    .line 343
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->stopDiscovery()V

    return-void
.end method
