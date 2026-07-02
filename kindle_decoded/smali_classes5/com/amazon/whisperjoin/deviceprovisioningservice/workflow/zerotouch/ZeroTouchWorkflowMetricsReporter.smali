.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;
.super Ljava/lang/Object;
.source "ZeroTouchWorkflowMetricsReporter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFFSProvisioningServiceMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;->mFFSProvisioningServiceMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$ZeroTouchWorkflowUpdate$State:[I

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;->mFFSProvisioningServiceMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->onWorkflowSetupFailure()V

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;->mFFSProvisioningServiceMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->onWorkflowSetupSuccess()V

    goto :goto_0

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;->mFFSProvisioningServiceMetricsRecorder:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->onWorkflowSetupAttemptStart()V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;->accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;)V

    return-void
.end method
