.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;
.super Ljava/lang/Object;
.source "WorkflowStateAccumulator.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WorkflowStateAccumulator"


# instance fields
.field private final mDeviceEventWorkflowStateAccumulator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/DeviceEventWorkflowStateAccumulator;

.field private final mInitialWorkflowState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    .line 25
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;->success()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->setLastResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 26
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/DeviceEventWorkflowStateAccumulator;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/DeviceEventWorkflowStateAccumulator;-><init>()V

    .line 24
    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/DeviceEventWorkflowStateAccumulator;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/DeviceEventWorkflowStateAccumulator;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;->mInitialWorkflowState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    .line 32
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;->mDeviceEventWorkflowStateAccumulator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/DeviceEventWorkflowStateAccumulator;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/DeviceEventWorkflowStateAccumulator;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;->mDeviceEventWorkflowStateAccumulator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/DeviceEventWorkflowStateAccumulator;

    return-object p0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;->mInitialWorkflowState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator$2;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->scan(Ljava/lang/Object;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/WorkflowStateAccumulator;)V

    .line 56
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
