.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee;
.source "WJProvisionee.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError;
    }
.end annotation


# static fields
.field private static final NETWORK_SCAN_COUNT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "WJProvisionee"


# instance fields
.field private final mDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

.field private mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

.field private final mSubcribeOnScheduler:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    .line 58
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    .line 59
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mSubcribeOnScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    return-object p0
.end method

.method private logStart(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V
    .locals 3

    .line 261
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public completeProvisioning()Lio/reactivex/Completable;
    .locals 4

    .line 155
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->logStart(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 156
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$6;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$6;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    invoke-static {v0}, Lio/reactivex/Completable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mSubcribeOnScheduler:Lio/reactivex/Scheduler;

    .line 162
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v3, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-direct {v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V

    .line 163
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->compose(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 164
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public connectToDevice(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Lio/reactivex/Completable;
    .locals 3

    .line 112
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->CONNECT:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->logStart(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 113
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$3;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)V

    invoke-static {v0}, Lio/reactivex/Completable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$2;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 119
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mSubcribeOnScheduler:Lio/reactivex/Scheduler;

    .line 125
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v2, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->CONNECT_TO_DEVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V

    .line 126
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->compose(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->CONNECT:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 127
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public disconnect()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->close()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 66
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v2

    .line 69
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object p1

    .line 71
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDeviceDetails()Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->logStart(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 99
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    invoke-static {v0}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mSubcribeOnScheduler:Lio/reactivex/Scheduler;

    .line 105
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v3, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_PROVISIONABLE_DEVICE_DETAILS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-direct {v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V

    .line 106
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->compose(Lio/reactivex/SingleTransformer;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Single;

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Single;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 108
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleNetworks()Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;",
            ">;"
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->logStart(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 170
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$7;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$7;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    invoke-static {v0}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mSubcribeOnScheduler:Lio/reactivex/Scheduler;

    .line 176
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v3, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-direct {v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V

    .line 177
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->compose(Lio/reactivex/SingleTransformer;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Single;

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Single;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 178
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    .line 83
    new-instance v1, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v2, 0x11

    const/16 v3, 0x25

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    .line 84
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 85
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 86
    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public initiateWifiScan()Lio/reactivex/Completable;
    .locals 4

    .line 182
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->INITIATE_WIFI_SCAN:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->logStart(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 183
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$8;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$8;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    invoke-static {v0}, Lio/reactivex/Completable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mSubcribeOnScheduler:Lio/reactivex/Scheduler;

    .line 189
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v3, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->INITIATE_WIFI_SCAN:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-direct {v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V

    .line 190
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->compose(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->INITIATE_WIFI_SCAN:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 191
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public saveConfigurationMap(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)Lio/reactivex/Completable;
    .locals 3

    .line 222
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SAVE_CONFIG_MAP:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->logStart(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 223
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$11;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$11;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)V

    invoke-static {v0}, Lio/reactivex/Completable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mSubcribeOnScheduler:Lio/reactivex/Scheduler;

    .line 229
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v2, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SAVE_CONFIGURATION_MAP:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V

    .line 230
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->compose(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SAVE_CONFIG_MAP:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 231
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public saveWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lio/reactivex/Completable;
    .locals 3

    .line 196
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SAVE_NETWORK:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->logStart(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 197
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$9;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$9;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)V

    invoke-static {v0}, Lio/reactivex/Completable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mSubcribeOnScheduler:Lio/reactivex/Scheduler;

    .line 203
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v2, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SAVE_WIFI_CONFIGURATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V

    .line 204
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->compose(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SAVE_NETWORK:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 205
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public setRegistrationToken(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;)Lio/reactivex/Completable;
    .locals 3

    .line 209
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->logStart(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 210
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$10;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$10;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;)V

    invoke-static {v0}, Lio/reactivex/Completable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mSubcribeOnScheduler:Lio/reactivex/Scheduler;

    .line 216
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v2, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V

    .line 217
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->compose(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 218
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public startProvisioning()Lio/reactivex/Completable;
    .locals 4

    .line 135
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->START_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->logStart(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 136
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$5;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$5;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    invoke-static {v0}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mSubcribeOnScheduler:Lio/reactivex/Scheduler;

    .line 142
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$4;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$4;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 143
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v3, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->START_PROVISIONING:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-direct {v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V

    .line 150
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->compose(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->START_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    .line 151
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 266
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->mDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    .line 267
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "WJProvisionee{mDevice.FriendlyName=%s}"

    .line 266
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
