.class public abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;
.super Ljava/lang/Object;
.source "AbstractDeviceEventAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accumulate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ")TR;"
        }
    .end annotation

    .line 9
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->isA(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    invoke-virtual {p0, p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;->handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->isA(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;

    invoke-virtual {p0, p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;->handleConnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->isA(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;

    invoke-virtual {p0, p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;->handleDisconnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_2
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->isA(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;

    invoke-virtual {p0, p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;->handleGetProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :cond_3
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->isA(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;

    invoke-virtual {p0, p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;->handleProvisionDeviceEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->isA(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;

    invoke-virtual {p0, p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;->handleVerifyProvisioningEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21
    :cond_5
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->isA(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;

    invoke-virtual {p0, p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/AbstractDeviceEventAccumulator;->handleWorkflowIdle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :cond_6
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled Device WJResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected abstract handleConnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;",
            ")TR;"
        }
    .end annotation
.end method

.method protected abstract handleDisconnectionEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;",
            ")TR;"
        }
    .end annotation
.end method

.method protected abstract handleDiscoveryEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;",
            ")TR;"
        }
    .end annotation
.end method

.method protected abstract handleGetProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;",
            ")TR;"
        }
    .end annotation
.end method

.method protected abstract handleProvisionDeviceEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;",
            ")TR;"
        }
    .end annotation
.end method

.method protected abstract handleVerifyProvisioningEvent(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;",
            ")TR;"
        }
    .end annotation
.end method

.method protected abstract handleWorkflowIdle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;",
            ")TR;"
        }
    .end annotation
.end method
