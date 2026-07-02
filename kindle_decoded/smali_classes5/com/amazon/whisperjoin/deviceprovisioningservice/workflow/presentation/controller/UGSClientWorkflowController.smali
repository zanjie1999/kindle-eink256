.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;
.super Ljava/lang/Object;
.source "UGSClientWorkflowController.java"


# instance fields
.field private final mConnectToDevice:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscoverDevices:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshAvailableNetworks:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mSendProvisioningData:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mTerminateSetup:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Function;Lcom/google/common/base/Function;Lcom/google/common/base/Function;Lcom/google/common/base/Function;Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/common/base/Function<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/common/base/Function<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/common/base/Function<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/common/base/Function<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->mDiscoverDevices:Lcom/google/common/base/Function;

    .line 24
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->mConnectToDevice:Lcom/google/common/base/Function;

    .line 25
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->mSendProvisioningData:Lcom/google/common/base/Function;

    .line 26
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->mRefreshAvailableNetworks:Lcom/google/common/base/Function;

    if-eqz p5, :cond_0

    .line 31
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->mTerminateSetup:Lcom/google/common/base/Function;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Terminate Setup can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public chooseDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->mConnectToDevice:Lcom/google/common/base/Function;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ConnectToDevice to Device is not supported in this state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public discoverDevices()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->mDiscoverDevices:Lcom/google/common/base/Function;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Discover Devices is not supported in this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshAvailableNetworks()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->mRefreshAvailableNetworks:Lcom/google/common/base/Function;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Refresh Available Networks is not supported in this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendProvisioningData(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->mSendProvisioningData:Lcom/google/common/base/Function;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Send Provisioning Data is not supported in this state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public terminateSetup()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/UGSClientWorkflowController;->mTerminateSetup:Lcom/google/common/base/Function;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
