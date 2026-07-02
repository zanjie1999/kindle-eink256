.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;
.super Ljava/lang/Object;
.source "WorkflowStateStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WorkflowStateStream"


# instance fields
.field private final mActionExecutor:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;

.field private final mActionsStream:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceEventStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;

.field private final mWorkflowEventReporter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;

.field private final mWorkflowResultLogger:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;

.field private mWorkflowStateStream:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mActionsStream:Lio/reactivex/Observable;

    .line 39
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mActionExecutor:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;

    .line 40
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mDeviceEventStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;

    .line 41
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mWorkflowEventReporter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;

    .line 42
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mWorkflowResultLogger:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;

    .line 44
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->buildWorkflowStream()Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mWorkflowStateStream:Lio/reactivex/Observable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildWorkflowStream()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mActionsStream:Lio/reactivex/Observable;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mActionExecutor:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mDeviceEventStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;->getStream()Lio/reactivex/Observable;

    move-result-object v1

    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;-><init>()V

    .line 56
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mWorkflowResultLogger:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;

    .line 57
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mWorkflowEventReporter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;

    .line 58
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream$1;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;)V

    .line 59
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStream()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->mWorkflowStateStream:Lio/reactivex/Observable;

    return-object v0
.end method
