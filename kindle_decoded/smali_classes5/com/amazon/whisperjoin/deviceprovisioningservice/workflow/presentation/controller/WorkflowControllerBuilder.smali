.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;
.super Ljava/lang/Object;
.source "WorkflowControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$ConnectToDiscoveredDevice;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$DiscoverDevices;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$AbortSetup;
    }
.end annotation


# instance fields
.field private final mAbortSetup:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mActionController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

.field private mConnectToDevice:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscoverDevices:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshAvailableNetworks:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSendProvisioningData:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkflowState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mDiscoverDevices:Lcom/google/common/base/Function;

    .line 29
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mConnectToDevice:Lcom/google/common/base/Function;

    .line 30
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mSendProvisioningData:Lcom/google/common/base/Function;

    .line 31
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mRefreshAvailableNetworks:Lcom/google/common/base/Function;

    .line 38
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mActionController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    .line 39
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$AbortSetup;

    invoke-direct {p1, p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$AbortSetup;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$1;)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mAbortSetup:Lcom/google/common/base/Function;

    .line 40
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mWorkflowState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mWorkflowState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mActionController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;
    .locals 7

    .line 64
    new-instance v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mDiscoverDevices:Lcom/google/common/base/Function;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mConnectToDevice:Lcom/google/common/base/Function;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mSendProvisioningData:Lcom/google/common/base/Function;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mRefreshAvailableNetworks:Lcom/google/common/base/Function;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mAbortSetup:Lcom/google/common/base/Function;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;-><init>(Lcom/google/common/base/Function;Lcom/google/common/base/Function;Lcom/google/common/base/Function;Lcom/google/common/base/Function;Lcom/google/common/base/Function;)V

    return-object v6
.end method

.method public connectToDiscoveredDevice(Ljava/util/Map;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            ">;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$ConnectToDiscoveredDevice;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$ConnectToDiscoveredDevice;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;Ljava/util/Map;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mConnectToDevice:Lcom/google/common/base/Function;

    return-object p0
.end method

.method public discoverDevices()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;
    .locals 2

    .line 44
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$DiscoverDevices;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$DiscoverDevices;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$1;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mDiscoverDevices:Lcom/google/common/base/Function;

    return-object p0
.end method

.method public refreshAvailableNetworks(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;
    .locals 2

    .line 59
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mWorkflowState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mRefreshAvailableNetworks:Lcom/google/common/base/Function;

    return-object p0
.end method

.method public sendProvisioningData(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;
    .locals 2

    .line 54
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mWorkflowState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$SendProvisioningData;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->mSendProvisioningData:Lcom/google/common/base/Function;

    return-object p0
.end method
