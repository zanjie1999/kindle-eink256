.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator$2;
.super Ljava/lang/Object;
.source "WorkflowStateAccumulator.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/DeviceEventWorkflowStateAccumulator;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;->accumulate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    if-nez p2, :cond_0

    .line 48
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Received null state, passing on unchanged workflow update to be ignored."

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    invoke-direct {p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->setLastResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 51
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator$2;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method
