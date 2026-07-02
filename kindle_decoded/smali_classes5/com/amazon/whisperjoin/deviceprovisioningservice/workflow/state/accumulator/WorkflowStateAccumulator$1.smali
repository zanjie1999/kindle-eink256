.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator$1;
.super Ljava/lang/Object;
.source "WorkflowStateAccumulator.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getLastWJResult()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No Last WJResult, dropping workflow state update"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lio/reactivex/Observable;->never()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator$1;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
