.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;
.super Ljava/lang/Object;
.source "WorkflowUpdateProducer.java"


# instance fields
.field private final mActionController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

.field private final mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 53
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->mActionController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    .line 54
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wjErrorMapper can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DeviceActionCreator can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getWorkflowControllerBuilder(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;
    .locals 2

    .line 139
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->mActionController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    return-object v0
.end method


# virtual methods
.method public awaitingDeviceSelection(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 6

    .line 73
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getDiscoveredDevices()Ljava/util/List;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;

    .line 78
    new-instance v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 79
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;

    new-instance v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;

    invoke-direct {v3, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->getWorkflowControllerBuilder(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->connectToDiscoveredDevice(Ljava/util/Map;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    move-result-object p1

    .line 87
    new-instance p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    invoke-direct {p2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;)V

    return-object p2
.end method

.method public awaitingProvisioningData(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 2

    .line 91
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->getWorkflowControllerBuilder(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->sendProvisioningData(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    .line 97
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->refreshAvailableNetworks(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    .line 98
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    move-result-object p1

    .line 100
    new-instance p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    invoke-direct {p2, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;)V

    return-object p2
.end method

.method public fixupWifiConnectionError(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 4

    .line 105
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getLastWifiConnectionError()Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    invoke-interface {v2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v2

    .line 111
    new-instance v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    invoke-direct {v3, v1, v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->getWorkflowControllerBuilder(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    move-result-object p1

    .line 114
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->refreshAvailableNetworks(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    .line 115
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->sendProvisioningData(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    move-result-object p1

    .line 117
    new-instance p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    invoke-direct {p2, v3, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;)V

    return-object p2
.end method

.method public idle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 3

    .line 58
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/IdleViewModel;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/IdleViewModel;-><init>()V

    .line 59
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->mActionController:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-direct {v1, v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->discoverDevices()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    move-result-object p1

    .line 60
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    invoke-direct {v1, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;)V

    return-object v1
.end method

.method public inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 1

    .line 64
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/InProgressViewModel;

    invoke-direct {v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/InProgressViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->getWorkflowControllerBuilder(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    move-result-object p1

    .line 66
    new-instance p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    invoke-direct {p2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;)V

    return-object p2
.end method

.method public setupFailure(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 3

    .line 121
    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {p2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    invoke-interface {v2, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p2

    .line 127
    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;

    invoke-direct {v2, p3, v0, v1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->getWorkflowControllerBuilder(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    move-result-object p1

    .line 129
    new-instance p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    invoke-direct {p2, v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;)V

    return-object p2
.end method

.method public setupSuccess(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 2

    .line 133
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupCompleteViewModel;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupCompleteViewModel;-><init>()V

    .line 134
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->getWorkflowControllerBuilder(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;

    move-result-object p1

    .line 135
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    invoke-direct {v1, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;)V

    return-object v1
.end method
