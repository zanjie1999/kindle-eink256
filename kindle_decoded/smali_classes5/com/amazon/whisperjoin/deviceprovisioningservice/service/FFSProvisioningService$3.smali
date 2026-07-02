.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$3;
.super Ljava/lang/Object;
.source "FFSProvisioningService.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->createNewWorkflowFactory()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNewPhilipsZigbeeBleWorkflow()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    iget-object v1, v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->getFFSArcusSettings()Lio/reactivex/Single;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->createWorkflow(Lio/reactivex/Single;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;->getPhilipsZigbeeBleWorkflow()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    move-result-object v0

    return-object v0
.end method

.method public createNewWifiSimpleSetupWorkflow()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    iget-object v1, v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->getFFSArcusSettings()Lio/reactivex/Single;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/DaggerWrapper$ProvisionerServices;->createWorkflow(Lio/reactivex/Single;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;->getWifiSimpleSetupZeroTouchWorkflow()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;

    move-result-object v0

    return-object v0
.end method
