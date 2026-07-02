.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;
.super Ljava/lang/Object;
.source "ProvisioningManagerModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getProvisioningManagerDisposable(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 70
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;->getStreamDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 72
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;->getStreamDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-object v0
.end method

.method providesDeferredDiscoveryHandler(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;
    .locals 1

    .line 64
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;)V

    return-object v0
.end method

.method providesDeviceDiscoveryStream(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;
    .locals 1

    .line 58
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;)V

    return-object v0
.end method

.method providesDeviceEventStream(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;
    .locals 1

    .line 52
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;)V

    return-object v0
.end method

.method providesProvisioningManagerProvider(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Ljava/util/List;Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;"
        }
    .end annotation

    .line 39
    new-instance v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Ljava/util/List;Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)V

    return-object v6
.end method
