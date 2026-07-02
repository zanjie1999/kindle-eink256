.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "AutoDiscoveryPresenter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAutoDiscoverySyncCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceDiscoveryStreamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscoverySettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mDssClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mFFSArcusSyncCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsRecorderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisionerClientDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;"
        }
    .end annotation
.end field

.field private final mWJErrorMapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static injectMAutoDiscoverySyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mAutoDiscoverySyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;

    return-void
.end method

.method public static injectMDeviceDiscoveryStream(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDeviceDiscoveryStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    return-void
.end method

.method public static injectMDiscoverySettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDiscoverySettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    return-void
.end method

.method public static injectMDssClient(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mDssClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-void
.end method

.method public static injectMFFSArcusSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    return-void
.end method

.method public static injectMMetricsRecorder(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    return-void
.end method

.method public static injectMProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    return-void
.end method

.method public static injectMWJErrorMapper(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    return-void
.end method
