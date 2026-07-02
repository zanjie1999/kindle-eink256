.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;
.source "WifiSimpleSetupZeroTouchWorkflow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$TerminalWorkflowUpdateStateDetected;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator<",
        "Lio/reactivex/Observable<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
        ">;>;",
        "Ljava/lang/Object<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiSimpleSetupZeroTouchWorkflow"


# instance fields
.field protected final mDeviceActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

.field private final mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

.field private final mWorkflowId:Ljava/lang/String;

.field private final mWorkflowStateStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;

.field private mWorkflowStateStreamDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/WorkflowIdProvider;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mWorkflowStateStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;

    .line 45
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mDeviceActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    .line 46
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    .line 48
    invoke-virtual {p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/WorkflowIdProvider;->createWorkflowId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mWorkflowId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$102(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mWorkflowStateStreamDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-object p0
.end method

.method private createWorkflowUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->createWorkflowUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;

    move-result-object p1

    return-object p1
.end method

.method private createWorkflowUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;
    .locals 2

    .line 259
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mWorkflowId:Ljava/lang/String;

    .line 260
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;->setLocalWorkflowIdentifier(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;->WSS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;

    .line 261
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;->setWorkflowType(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$WorkflowType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Radio;->BLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Radio;

    .line 262
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;->setRadio(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Radio;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;

    .line 263
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;->setState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;

    .line 264
    invoke-virtual {v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;->setThrowable(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;

    .line 265
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$Builder;->createZeroTouchWorkflowUpdate()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;

    move-result-object p1

    return-object p1
.end method

.method private emitUpdateAndThenPerformNextAction(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;",
            "Lio/reactivex/functions/Consumer<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 281
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->createWorkflowUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 282
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doAfterNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected handleConnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$5;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    const/4 p1, 0x0

    throw p1

    .line 147
    :cond_1
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->TAG:Ljava/lang/String;

    const-string v0, "An error occurred while connecting"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->workflowFailureUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 132
    :cond_2
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$4;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->emitUpdateAndThenPerformNextAction(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 152
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->noUpdate()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleConnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->handleConnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected handleDisconnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 157
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$5;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 161
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->TAG:Ljava/lang/String;

    const-string v0, "A unexpected disconnection occurred"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->workflowFailureUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 164
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    const/4 p1, 0x0

    throw p1

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->noUpdate()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleDisconnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->handleDisconnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$5;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 115
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->workflowFailureUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    const/4 p1, 0x0

    throw p1

    .line 103
    :cond_1
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->CONNECTING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$3;

    invoke-direct {v0, p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$3;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->emitUpdateAndThenPerformNextAction(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->noUpdate()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected handleGetProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$5;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mDeviceActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->disconnect(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 189
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->workflowFailureUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 191
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    const/4 p1, 0x0

    throw p1

    .line 175
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 176
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getProvisionableReportUrl()Ljava/lang/String;

    move-result-object p1

    .line 178
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;-><init>()V

    .line 179
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setAvailableNetworks(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    .line 180
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setDeviceDetails(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    new-instance p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest;

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;->CODE_BASED_LINKING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;

    invoke-direct {p2, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;)V

    .line 181
    invoke-virtual {v1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setRegistrationRequest(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    .line 182
    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setProvisionableReportUrl(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    .line 183
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    move-result-object p1

    .line 185
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mDeviceActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->provisionDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)V

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->noUpdate()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleGetProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->handleGetProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected handleProvisionDeviceEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 199
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$5;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 206
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mDeviceActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->disconnect(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 207
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->workflowFailureUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 209
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    const/4 p1, 0x0

    throw p1

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mDeviceActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->verifyProvisioning(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)V

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->noUpdate()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleProvisionDeviceEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->handleProvisionDeviceEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected handleVerifyProvisioningEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 216
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$5;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 223
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mDeviceActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->disconnect(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 224
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->workflowFailureUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 226
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    const/4 p1, 0x0

    throw p1

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mDeviceActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->disconnect(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 221
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->createWorkflowUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->noUpdate()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleVerifyProvisioningEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->handleVerifyProvisioningEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected handleWorkflowIdle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->noUpdate()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleWorkflowIdle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->handleWorkflowIdle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected noUpdate()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 272
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V
    .locals 3

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->TAG:Ljava/lang/String;

    const-string v1, "Starting Workflow"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 58
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mWorkflowStateStreamDisposable:Lio/reactivex/disposables/Disposable;

    const-string v1, "Already disposed"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mWorkflowStateStreamDisposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->mWorkflowStateStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->getStream()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)V

    .line 68
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;)V

    .line 75
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->PREPARING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    .line 85
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->createWorkflowUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$TerminalWorkflowUpdateStateDetected;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$TerminalWorkflowUpdateStateDetected;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow$1;)V

    .line 86
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 63
    :cond_2
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->TAG:Ljava/lang/String;

    const-string v0, "Already started"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device details can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected workflowFailureUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p1

    .line 240
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WifiSimpleSetupZeroTouchWorkflow;->createWorkflowUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
