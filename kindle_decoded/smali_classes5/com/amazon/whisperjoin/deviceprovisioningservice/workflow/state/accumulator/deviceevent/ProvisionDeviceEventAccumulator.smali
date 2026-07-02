.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/ProvisionDeviceEventAccumulator;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;
.source "ProvisionDeviceEventAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;-><init>()V

    return-void
.end method


# virtual methods
.method protected error(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 5

    .line 56
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 58
    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->isWorkflowActive(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 62
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->sessionExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 66
    :cond_1
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    invoke-virtual {p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)V

    .line 67
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    .line 68
    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->setState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;

    .line 69
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object v3

    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    invoke-direct {v2, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;-><init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)V

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->setLastSetupError(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$SetupError;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    .line 71
    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    invoke-direct {v2, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    .line 72
    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->setLastResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 73
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->updateSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 74
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic error(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/ProvisionDeviceEventAccumulator;->error(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 3

    .line 12
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 14
    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->isWorkflowActive(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 18
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->sessionExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 22
    :cond_1
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    invoke-virtual {p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)V

    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    .line 23
    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->setState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    .line 25
    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    invoke-direct {v2, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    .line 26
    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->setLastResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 27
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->updateSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 28
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/ProvisionDeviceEventAccumulator;->inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected success(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 3

    .line 33
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 35
    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->isWorkflowActive(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 39
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->sessionExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 43
    :cond_1
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    invoke-virtual {p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)V

    .line 44
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;->PROVISIONED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;

    .line 45
    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->setState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$DeviceState;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    .line 46
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getChosenWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->setChosenWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;

    .line 48
    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    invoke-direct {v2, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    .line 49
    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->setLastResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 50
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->updateSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;

    .line 51
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic success(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/ProvisionDeviceEventAccumulator;->success(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method
