.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/DisconnectionEventAccumulator;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;
.source "DisconnectionEventAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisconnectionEventAccumulator"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;-><init>()V

    return-void
.end method


# virtual methods
.method protected error(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 4

    .line 34
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 36
    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->isWorkflowActive(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 40
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->sessionExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object v1

    .line 51
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->CONNECTING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;->isState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/DisconnectionEventAccumulator;->TAG:Ljava/lang/String;

    const-string p2, "Ignoring disconnection error since device is still Connecting, waiting for Connection WJResult"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 57
    :cond_2
    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ConnectionFailureDuringSetup;-><init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)V

    .line 58
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;->error(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;

    move-result-object p1

    .line 60
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/DisconnectionEventAccumulator;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected Disconnection, removing session"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    invoke-direct {v1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    .line 62
    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->setLastResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 63
    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->removeSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 64
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic error(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/DisconnectionEventAccumulator;->error(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected success(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 3

    .line 15
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 17
    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->isWorkflowActive(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 21
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->sessionExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 25
    :cond_1
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/DisconnectionEventAccumulator;->TAG:Ljava/lang/String;

    const-string v2, "Disconnection Occurred, removing session"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    invoke-direct {v1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    .line 27
    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->setLastResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 28
    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->removeSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 29
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic success(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/DisconnectionEventAccumulator;->success(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method
