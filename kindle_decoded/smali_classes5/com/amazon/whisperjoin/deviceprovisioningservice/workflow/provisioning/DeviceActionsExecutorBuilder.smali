.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;
.super Ljava/lang/Object;
.source "DeviceActionsExecutorBuilder.java"


# instance fields
.field private mBlessDiscoveredDeviceDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$BlessDiscoveredDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectToDeviceDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ConnectToDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDisconnectFromDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$Disconnect;",
            ">;"
        }
    .end annotation
.end field

.field private mGetProvisioningDetailsDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$GetProvisioningDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mProvisionDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ProvisionDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDiscoveryOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$StartDiscovery;",
            ">;"
        }
    .end annotation
.end field

.field private mStopDiscoveryOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$StopDiscovery;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminateSetupDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$TerminateSetup;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifyProvisioningOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$VerifyProvisioning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeviceActionsExecutor()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;
    .locals 11

    .line 20
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mStartDiscoveryOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    if-eqz v0, :cond_8

    .line 21
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mStopDiscoveryOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    if-eqz v0, :cond_7

    .line 22
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mBlessDiscoveredDeviceDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mConnectToDeviceDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    if-eqz v0, :cond_5

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mDisconnectFromDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mGetProvisioningDetailsDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mProvisionDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mVerifyProvisioningOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mTerminateSetupDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mStartDiscoveryOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mStopDiscoveryOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mBlessDiscoveredDeviceDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mConnectToDeviceDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mGetProvisioningDetailsDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mProvisionDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    iget-object v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mVerifyProvisioningOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    iget-object v9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mTerminateSetupDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    iget-object v10, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mDisconnectFromDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)V

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mTerminateSetupDeviceOperation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mVerifyProvisioningOperation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mProvisionDeviceOperation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mGetProvisioningDetailsDeviceOperation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mDisconnectFromDeviceOperation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mConnectToDeviceDeviceOperation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mBlessDiscoveredDeviceOperation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mStopDiscoveryOperation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mStartDiscoveryOperation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBlessDiscoveredDeviceOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$BlessDiscoveredDevice;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mBlessDiscoveredDeviceDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    return-object p0
.end method

.method public setConnectToDeviceDeviceOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ConnectToDevice;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mConnectToDeviceDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    return-object p0
.end method

.method public setDisconnectFromDeviceOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$Disconnect;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mDisconnectFromDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    return-object p0
.end method

.method public setGetProvisioningDetailsOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$GetProvisioningDetails;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mGetProvisioningDetailsDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    return-object p0
.end method

.method public setProvisionDeviceOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ProvisionDevice;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mProvisionDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    return-object p0
.end method

.method public setStartDiscoveryOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$StartDiscovery;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mStartDiscoveryOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    return-object p0
.end method

.method public setStopDiscoveryOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$StopDiscovery;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mStopDiscoveryOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    return-object p0
.end method

.method public setTerminateSetupDeviceOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$TerminateSetup;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mTerminateSetupDeviceOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    return-object p0
.end method

.method public setVerifyProvisioningOperation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$VerifyProvisioning;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutorBuilder;->mVerifyProvisioningOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;

    return-object p0
.end method
