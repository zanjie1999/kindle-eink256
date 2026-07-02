.class public Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;
.super Lcom/amazon/devicesetup/common/v1/SignedOutput;
.source "StartProvisioningSessionOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private canProceed:Z

.field private nextProvisioningState:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private salt:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private waitTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetup.common.v1.StartProvisioningSessionOutput"

    aput-object v2, v0, v1

    .line 72
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/amazon/devicesetup/common/v1/SignedOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 96
    instance-of v0, p1, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;

    .line 103
    invoke-super {p0, p1}, Lcom/amazon/devicesetup/common/v1/SignedOutput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->canProceed:Z

    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-boolean v2, v0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->canProceed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->nextProvisioningState:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->nextProvisioningState:Ljava/lang/String;

    .line 105
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->nonce:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->nonce:Ljava/lang/String;

    .line 106
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->reason:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->reason:Ljava/lang/String;

    .line 107
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->salt:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->salt:Ljava/lang/String;

    .line 108
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->sessionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->sessionId:Ljava/lang/String;

    .line 109
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->waitTime:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->waitTime:Ljava/lang/String;

    .line 110
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getNextProvisioningState()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->nextProvisioningState:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSalt()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->salt:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->waitTime:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 80
    invoke-super {p0}, Lcom/amazon/devicesetup/common/v1/SignedOutput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->classNameHashCode:I

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->canProceed:Z

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->nextProvisioningState:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->nonce:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->reason:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->salt:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->sessionId:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->waitTime:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 79
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanProceed()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->canProceed:Z

    return v0
.end method

.method public setCanProceed(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->canProceed:Z

    return-void
.end method

.method public setNextProvisioningState(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->nextProvisioningState:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->reason:Ljava/lang/String;

    return-void
.end method

.method public setSalt(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->salt:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setWaitTime(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/StartProvisioningSessionOutput;->waitTime:Ljava/lang/String;

    return-void
.end method
