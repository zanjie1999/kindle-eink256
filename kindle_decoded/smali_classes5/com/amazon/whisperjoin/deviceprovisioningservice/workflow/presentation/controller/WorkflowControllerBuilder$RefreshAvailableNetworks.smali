.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;
.super Ljava/lang/Object;
.source "WorkflowControllerBuilder.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshAvailableNetworks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

.field private final mWorkflowState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;->mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    .line 148
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;->mWorkflowState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;->apply(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 154
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;->mWorkflowState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;->mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getDiscoverySessionToken()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object p1

    .line 158
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$RefreshAvailableNetworks;->mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    .line 159
    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->refreshAvailableNetworks(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;

    move-result-object p1

    .line 158
    invoke-virtual {v1, v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->getProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;)V

    const/4 p1, 0x0

    return-object p1
.end method
