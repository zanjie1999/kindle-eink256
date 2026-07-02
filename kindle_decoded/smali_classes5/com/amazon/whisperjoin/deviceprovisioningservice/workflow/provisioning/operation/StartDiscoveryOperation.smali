.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
.source "StartDiscoveryOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$DiscoveryEventHandler;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$LimitOfSuccessResultsReached;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$StartDiscoveryOnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$StartDiscovery;",
        ">;"
    }
.end annotation


# static fields
.field private static final DSS_FAILED_MONITOR_WINDOW_MS:J

.field private static final DSS_FAILED_TRESHOLD:J = 0x4L

.field private static final TAG:Ljava/lang/String; = "StartDiscoveryOperation"


# instance fields
.field private final mBluetoothSupportProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;

.field private final mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private mDiscoveryEventHandler:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$DiscoveryEventHandler;

.field final mDiscoveryFilter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

.field private mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

.field private final mFFSArcusSettingsSingle:Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mFailedDSSCallTracker:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

.field private final mLocationPermissionsHelper:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

.field private final mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

.field private final mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

.field private final mProvisioningManager:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

.field private final mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

.field private final mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->DSS_FAILED_MONITOR_WINDOW_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lio/reactivex/Single;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 98
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;-><init>()V

    move-object v1, p1

    .line 99
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisioningManager:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    move-object v1, p2

    .line 100
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    move-object v1, p3

    .line 101
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-object v1, p4

    .line 102
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    move-object v1, p7

    .line 103
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    move-object/from16 v1, p9

    .line 104
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mBluetoothSupportProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;

    move-object/from16 v1, p8

    .line 105
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mLocationPermissionsHelper:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    move-object/from16 v1, p10

    .line 106
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mDiscoveryFilter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    move-object v1, p5

    .line 107
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    move-object/from16 v1, p11

    .line 108
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    .line 109
    new-instance v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

    sget-wide v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->DSS_FAILED_MONITOR_WINDOW_MS:J

    const-wide/16 v5, 0x4

    move-object v1, v7

    move-object v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;JJ)V

    iput-object v7, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mFailedDSSCallTracker:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

    move-object/from16 v1, p12

    .line 110
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mFFSArcusSettingsSingle:Lio/reactivex/Single;

    .line 112
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$DiscoveryEventHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$DiscoveryEventHandler;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$1;)V

    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mDiscoveryEventHandler:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$DiscoveryEventHandler;

    .line 113
    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisioningManager:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    invoke-virtual {v2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->addDiscoveryEventObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$DiscoveryEventHandler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mDiscoveryEventHandler:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$DiscoveryEventHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lio/reactivex/Single;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mFFSArcusSettingsSingle:Lio/reactivex/Single;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mBluetoothSupportProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mLocationPermissionsHelper:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->isManualSetup()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mFailedDSSCallTracker:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->handleDssBlessedProvisionable(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->handleDssDiscoveryDeferment(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisioningManager:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lio/reactivex/Observable;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->startDiscovery()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lio/reactivex/Completable;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->verifySetupPreconditions()Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lio/reactivex/Observable;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->discoverDSSBlessedDevices()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lio/reactivex/ObservableSource;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->reportDiscoveryToDSS(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method private discoverBarcodeDevice()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->getBarcodeString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->getRegistrationStatus(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$3;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$3;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)V

    .line 183
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$2;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)V

    .line 210
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private discoverDSSBlessedDevices()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$StartDiscoveryOnSubscribe;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$StartDiscoveryOnSubscribe;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mDiscoveryFilter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    .line 229
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$4;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$4;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)V

    .line 230
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getDiscoveredDistressedProvisioneeRequest(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;
    .locals 13

    .line 401
    new-instance v5, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    invoke-direct {v5}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;-><init>()V

    .line 402
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setSoftwareVersionIndex(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;->setDeviceName(Ljava/lang/String;)V

    .line 405
    new-instance v12, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->FFS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->AUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->UNAUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    :goto_0
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 407
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;->getDistressErrorCode()Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getRadios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getSignalStrength()I

    move-result v6

    .line 412
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v7

    .line 413
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v8

    .line 415
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->getProvisionerInfoForDSSRequest()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v10

    .line 416
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getAdvertisedSdkVersionIndex()I

    move-result v11

    const-string v9, "BluetoothLowEnergy"

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;I)V

    return-object v12
.end method

.method private getDiscoveredProvisionableDeviceRequest(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;
    .locals 3

    .line 374
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 375
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setProvisionerApplicationName(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 376
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setProvisionerApplicationVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getRadios()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getSignalStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setRssi(I)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setDeviceName(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 379
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setNonce(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setAuthMaterialIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 382
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setSoftwareVersionIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 383
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->FFS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->AUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->UNAUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    :goto_0
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setTrustMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 385
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->getProvisionerInfoForDSSRequest()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object v0

    .line 386
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getAdvertisedSdkVersionIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->setAdvertisedSdkVersionIndex(I)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;

    move-result-object p1

    .line 387
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest$Builder;->createRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    move-result-object p1

    return-object p1
.end method

.method private getProvisionerInfoForDSSRequest()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 2

    .line 391
    new-instance v0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;-><init>()V

    .line 392
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setManufacturer(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setFirmwareVersion(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setApplication(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->getClientAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;->setApplicationVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method private handleDssBlessedProvisionable(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 425
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->TAG:Ljava/lang/String;

    const-string v1, "Blessed by DSS to setup wjProvisionee"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisioningManager:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->createWJProvsionee(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p1

    .line 428
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;

    .line 430
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;->getProvisionerEventReportUrl()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;->getProvisionableEventReportUrl()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;->getSessionToken()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;->success(Ljava/util/List;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    move-result-object p1

    .line 436
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private handleDssDiscoveryDeferment(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GenericDSSDiscoveryResponse;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 444
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->TAG:Ljava/lang/String;

    const-string p2, "Deferring discovery event based on DSS response"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private isManualSetup()Z
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->MANUAL:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private reportDiscoveryToDSS(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->isDistressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->TAG:Ljava/lang/String;

    const-string v1, "Discovered a distressed beacon"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move-object v0, p1

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;

    .line 326
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->getDiscoveredDistressedProvisioneeRequest(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->discoveredDistressedProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->TAG:Ljava/lang/String;

    const-string v1, "Discovered a setup beacon"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->getDiscoveredProvisionableDeviceRequest(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->discoveredProvisionableDevice(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;)Lio/reactivex/Single;

    move-result-object v0

    .line 337
    :goto_0
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$7;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$7;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)V

    .line 338
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$6;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$6;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)V

    .line 353
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private startDiscovery()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->hasBarcodeData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->discoverBarcodeDevice()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->discoverDSSBlessedDevices()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private verifySetupPreconditions()Lio/reactivex/Completable;
    .locals 1

    .line 286
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$5;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$5;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)V

    invoke-static {v0}, Lio/reactivex/Completable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$StartDiscovery;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
