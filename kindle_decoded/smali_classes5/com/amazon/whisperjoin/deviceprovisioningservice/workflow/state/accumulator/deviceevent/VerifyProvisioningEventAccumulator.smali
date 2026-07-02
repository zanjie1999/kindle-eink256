.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/VerifyProvisioningEventAccumulator;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;
.source "VerifyProvisioningEventAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;-><init>()V

    return-void
.end method


# virtual methods
.method protected error(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 5

    .line 59
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 61
    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->isWorkflowActive(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 65
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->sessionExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 69
    :cond_1
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    invoke-virtual {p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)V

    .line 70
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object v2

    .line 71
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    .line 72
    invoke-virtual {v1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->setState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    new-instance v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-direct {v3, v2, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;-><init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)V

    .line 73
    invoke-virtual {v1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->setLastSetupError(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    .line 75
    instance-of v3, v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    if-eqz v3, :cond_2

    .line 76
    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->setLastWifiConnectionError(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    .line 79
    :cond_2
    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    invoke-direct {v2, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    .line 80
    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->setLastResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 81
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->updateSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 82
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic error(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/VerifyProvisioningEventAccumulator;->error(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 3

    .line 14
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 16
    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->isWorkflowActive(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 20
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->sessionExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 24
    :cond_1
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    invoke-virtual {p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)V

    .line 26
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->setState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    .line 28
    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    invoke-direct {v2, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    .line 29
    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->setLastResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 30
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->updateSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 31
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/VerifyProvisioningEventAccumulator;->inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected success(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 3

    .line 36
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 38
    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->isWorkflowActive(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 42
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->sessionExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 46
    :cond_1
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    invoke-virtual {p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)V

    .line 48
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->VERIFIED_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    .line 49
    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->setState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    .line 51
    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    invoke-direct {v2, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    .line 52
    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->setLastResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 53
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->updateSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 54
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic success(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/VerifyProvisioningEventAccumulator;->success(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method
