.class public Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;
.super Lcom/amazon/devicesetup/common/v1/SignedOutput;
.source "ComputeConfigurationOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private canProceed:Z

.field private configuration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    const-string v2, "com.amazon.devicesetup.common.v1.ComputeConfigurationOutput"

    aput-object v2, v0, v1

    .line 74
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/devicesetup/common/v1/SignedOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 98
    instance-of v0, p1, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;

    .line 105
    invoke-super {p0, p1}, Lcom/amazon/devicesetup/common/v1/SignedOutput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->canProceed:Z

    .line 106
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-boolean v2, v0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->canProceed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->configuration:Ljava/util/Map;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->configuration:Ljava/util/Map;

    .line 107
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->nextProvisioningState:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->nextProvisioningState:Ljava/lang/String;

    .line 108
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->nonce:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->nonce:Ljava/lang/String;

    .line 109
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->reason:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->reason:Ljava/lang/String;

    .line 110
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->sessionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->sessionId:Ljava/lang/String;

    .line 111
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->waitTime:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->waitTime:Ljava/lang/String;

    .line 112
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getConfiguration()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->configuration:Ljava/util/Map;

    return-object v0
.end method

.method public getNextProvisioningState()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->nextProvisioningState:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->waitTime:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    invoke-super {p0}, Lcom/amazon/devicesetup/common/v1/SignedOutput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->classNameHashCode:I

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->canProceed:Z

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->configuration:Ljava/util/Map;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->nextProvisioningState:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->nonce:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->reason:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->sessionId:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->waitTime:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 81
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanProceed()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->canProceed:Z

    return v0
.end method

.method public setCanProceed(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->canProceed:Z

    return-void
.end method

.method public setConfiguration(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->configuration:Ljava/util/Map;

    return-void
.end method

.method public setNextProvisioningState(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->nextProvisioningState:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->reason:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setWaitTime(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ComputeConfigurationOutput;->waitTime:Ljava/lang/String;

    return-void
.end method
