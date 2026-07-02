.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;
.source "ControlledSetupWorkflow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;",
        ">;"
    }
.end annotation


# static fields
.field protected static final NO_UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate; = null

.field private static final TAG:Ljava/lang/String; = "ControlledSetupWorkflow"


# instance fields
.field protected final mActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private final mDssClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private mPresentationStream:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

.field private final mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

.field protected final mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

.field private final mWorkflowStateStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowStateStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;

    .line 65
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    .line 66
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    .line 67
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    .line 68
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mDssClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 69
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private getLastKnownWorkflowStep(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;
    .locals 1

    .line 201
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;

    if-nez v0, :cond_0

    .line 202
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->SETUP_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-object p1

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;

    .line 206
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;->getDeviceSession()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    .line 207
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$DeviceSession$DeviceState:[I

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 222
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->SETUP_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-object p1

    .line 220
    :pswitch_0
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-object p1

    .line 217
    :pswitch_1
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->PROVISIONING_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-object p1

    .line 214
    :pswitch_2
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->AWAITING_PROVISIONING_DATA:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-object p1

    .line 212
    :pswitch_3
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->GETTING_PROVISIONING_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-object p1

    .line 210
    :pswitch_4
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->CONNECTING_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private recordBarcodePossesionIntentIfExists()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->getBarcodeString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->TAG:Ljava/lang/String;

    const-string v1, "Calling RecordDevicePossessionIntent for 2D Barcode"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    .line 291
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->getBarcodeString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;-><init>(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mDssClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->recordDevicePossessionIntentInnerBarcode(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$3;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$3;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/CompletableObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPresentationStream()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mPresentationStream:Lio/reactivex/Observable;

    return-object v0
.end method

.method protected handleConnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 2

    .line 162
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 169
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->NO_UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    return-object p1

    .line 184
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    const/4 p1, 0x0

    throw p1

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p2

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->CONNECTING_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->setupFailure(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1

    .line 171
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getDiscoverySessionToken()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object p1

    .line 175
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p2

    .line 176
    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->getAllDetails(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;

    move-result-object p1

    .line 175
    invoke-virtual {v1, p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->getProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;)V

    .line 178
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->NO_UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    return-object p1

    .line 165
    :cond_3
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->stopDiscovery()V

    .line 166
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->CONNECTING_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleConnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->handleConnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected handleDisconnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 2

    .line 190
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->getLastKnownWorkflowStep(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->setupFailure(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1

    .line 196
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    const/4 p1, 0x0

    throw p1

    .line 192
    :cond_1
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->NO_UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    return-object p1
.end method

.method protected bridge synthetic handleDisconnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->handleDisconnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 2

    .line 121
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 144
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object v0

    .line 146
    instance-of v1, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$OveractivityDetected;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/HighRateOfDssRequestFailures;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->stopDiscovery()V

    .line 153
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p2

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->SETUP_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->setupFailure(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1

    .line 148
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->TAG:Ljava/lang/String;

    const-string p2, "Ignoring OveractivityDetected & HighRateOfDssRequestFailures events"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->NO_UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    return-object p1

    .line 156
    :cond_2
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    const/4 p1, 0x0

    throw p1

    .line 128
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->hasBarcodeData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->TAG:Ljava/lang/String;

    const-string v0, "Barcode setup. Connecting to device."

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;->builder()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    .line 134
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->withTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    .line 135
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->getPin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->withPin(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    .line 136
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->withPublicKey(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;

    .line 137
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->build()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->connectToDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)V

    .line 139
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->NO_UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    return-object p1

    .line 142
    :cond_4
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mTrustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->awaitingDeviceSelection(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1

    .line 126
    :cond_5
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->DISCOVERING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1

    .line 123
    :cond_6
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->TAG:Ljava/lang/String;

    const-string p2, "Ignoring idle event"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->NO_UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    return-object p1
.end method

.method protected bridge synthetic handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected handleGetProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 2

    .line 228
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->disconnect(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 235
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p2

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->GETTING_PROVISIONING_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->setupFailure(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1

    .line 237
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    const/4 p1, 0x0

    throw p1

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->awaitingProvisioningData(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1

    .line 230
    :cond_2
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->GETTING_PROVISIONING_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleGetProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->handleGetProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected handleProvisionDeviceEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 2

    .line 243
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->disconnect(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 251
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p2

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->PROVISIONING_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->setupFailure(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1

    .line 253
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    const/4 p1, 0x0

    throw p1

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->verifyProvisioning(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)V

    .line 248
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->NO_UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    return-object p1

    .line 245
    :cond_2
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->PROVISIONING_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleProvisionDeviceEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->handleProvisionDeviceEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected handleVerifyProvisioningEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 2

    .line 259
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$4;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 269
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p2

    .line 271
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->fixupWifiConnectionError(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->disconnect(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 276
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p2

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->setupFailure(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1

    .line 279
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    const/4 p1, 0x0

    throw p1

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mActionCreator:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->disconnect(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 265
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    invoke-virtual {p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->setupSuccess(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1

    .line 261
    :cond_3
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleVerifyProvisioningEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->handleVerifyProvisioningEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected handleWorkflowIdle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 0

    .line 116
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowProducer:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;

    invoke-virtual {p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowUpdateProducer;->idle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic handleWorkflowIdle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->handleWorkflowIdle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;

    move-result-object p1

    return-object p1
.end method

.method protected onUnhandledEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/WorkflowPresentationUpdate;
    .locals 3

    .line 284
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

.method public start()V
    .locals 3

    .line 77
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->TAG:Ljava/lang/String;

    const-string v1, "Starting Workflow"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->recordBarcodePossesionIntentIfExists()V

    .line 81
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mWorkflowStateStream:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowStateStream;->getStream()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$2;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;)V

    .line 82
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->replay(I)Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$1;

    invoke-direct {v2, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;)V

    .line 94
    invoke-virtual {v0, v1, v2}, Lio/reactivex/observables/ConnectableObservable;->autoConnect(ILio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mPresentationStream:Lio/reactivex/Observable;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 105
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->TAG:Ljava/lang/String;

    const-string v1, "Stopping Workflow"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->TAG:Ljava/lang/String;

    const-string v1, "Disposing of Presentation Stream"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->mDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
