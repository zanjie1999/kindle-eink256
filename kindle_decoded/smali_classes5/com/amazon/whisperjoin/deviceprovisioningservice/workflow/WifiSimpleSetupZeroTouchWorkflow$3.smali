.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$3;
.super Ljava/lang/Object;
.source "WifiSimpleSetupZeroTouchWorkflow.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;

.field final synthetic val$event:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$3;->val$event:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connecting to Device"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$3;->val$event:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mDeviceActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;->builder()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;

    .line 110
    invoke-static {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->withTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->build()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    move-result-object v1

    .line 109
    invoke-virtual {v0, p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->connectToDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$3;->accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;)V

    return-void
.end method
