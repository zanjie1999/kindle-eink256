.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$2;
.super Ljava/lang/Object;
.source "ControlledSetupWorkflow.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getLastWJResult()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;->accumulate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    if-eqz p1, :cond_0

    .line 90
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->never()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$2;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
