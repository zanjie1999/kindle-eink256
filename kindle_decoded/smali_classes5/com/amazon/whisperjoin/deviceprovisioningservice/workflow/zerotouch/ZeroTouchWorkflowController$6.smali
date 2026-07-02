.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController$6;
.super Ljava/lang/Object;
.source "ZeroTouchWorkflowController.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;->flagUnfavorableWorkflowBehaviorErrorsToTriggerBackOff()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController$6;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/HighRateOfDssRequestFailures;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$OveractivityDetected;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/HighRateOfWorkflowFailures;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expected error occurred in controller"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->TERMINATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Terminating due to unhandled failure "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 224
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Known error encountered, triggering retry with backoff"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController$6;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;)Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->onWorkflowBackoff(Ljava/lang/String;)V

    .line 228
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/UnfavorableWorkflowBehavior;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/UnfavorableWorkflowBehavior;-><init>()V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;->BACKING_OFF:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Workflow is backing off for a period of time due to failures: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ControllerUpdate$Event;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

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

    .line 216
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController$6;->apply(Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
