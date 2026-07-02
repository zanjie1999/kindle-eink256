.class public Lcom/amazon/devicesetup/common/v1/ReportOutput;
.super Lcom/amazon/devicesetup/common/v1/SignedOutput;
.source "ReportOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private canProceed:Z

.field private nextProvisioningState:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private waitTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetup.common.v1.ReportOutput"

    aput-object v2, v0, v1

    .line 63
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->classNameHashCode:I

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

    .line 86
    instance-of v0, p1, Lcom/amazon/devicesetup/common/v1/ReportOutput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 90
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetup/common/v1/ReportOutput;

    .line 93
    invoke-super {p0, p1}, Lcom/amazon/devicesetup/common/v1/SignedOutput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->canProceed:Z

    .line 94
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-boolean v2, v0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->canProceed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->nextProvisioningState:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->nextProvisioningState:Ljava/lang/String;

    .line 95
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->nonce:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->nonce:Ljava/lang/String;

    .line 96
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->reason:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->reason:Ljava/lang/String;

    .line 97
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->sessionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->sessionId:Ljava/lang/String;

    .line 98
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->waitTime:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->waitTime:Ljava/lang/String;

    .line 99
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getNextProvisioningState()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->nextProvisioningState:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->waitTime:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    invoke-super {p0}, Lcom/amazon/devicesetup/common/v1/SignedOutput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetup/common/v1/ReportOutput;->classNameHashCode:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->canProceed:Z

    .line 73
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->nextProvisioningState:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->nonce:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->reason:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->sessionId:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->waitTime:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 70
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanProceed()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->canProceed:Z

    return v0
.end method

.method public setCanProceed(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->canProceed:Z

    return-void
.end method

.method public setNextProvisioningState(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->nextProvisioningState:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->reason:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setWaitTime(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportOutput;->waitTime:Ljava/lang/String;

    return-void
.end method
