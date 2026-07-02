.class public Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;
.super Lcom/amazon/devicesetup/common/v1/SignedOutput;
.source "GetWifiCredentialsOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private allCredentialsReturned:Z

.field private canProceed:Z

.field private nextProvisioningState:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private sequenceNumber:I

.field private sessionId:Ljava/lang/String;

.field private waitTime:Ljava/lang/String;

.field private wifiCredentialsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiCredentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetup.common.v1.GetWifiCredentialsOutput"

    aput-object v2, v0, v1

    .line 92
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->classNameHashCode:I

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

    .line 118
    instance-of v0, p1, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;

    .line 125
    invoke-super {p0, p1}, Lcom/amazon/devicesetup/common/v1/SignedOutput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->allCredentialsReturned:Z

    .line 126
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-boolean v2, v0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->allCredentialsReturned:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->canProceed:Z

    .line 127
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-boolean v2, v0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->canProceed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->nextProvisioningState:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->nextProvisioningState:Ljava/lang/String;

    .line 128
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->nonce:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->nonce:Ljava/lang/String;

    .line 129
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->reason:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->reason:Ljava/lang/String;

    .line 130
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->sequenceNumber:I

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, v0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->sequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->sessionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->sessionId:Ljava/lang/String;

    .line 132
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->waitTime:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->waitTime:Ljava/lang/String;

    .line 133
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->wifiCredentialsList:Ljava/util/List;

    iget-object v0, v0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->wifiCredentialsList:Ljava/util/List;

    .line 134
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getNextProvisioningState()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->nextProvisioningState:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->sequenceNumber:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->waitTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiCredentialsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiCredentials;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->wifiCredentialsList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    invoke-super {p0}, Lcom/amazon/devicesetup/common/v1/SignedOutput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->classNameHashCode:I

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->allCredentialsReturned:Z

    .line 102
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->canProceed:Z

    .line 103
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->nextProvisioningState:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->nonce:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->reason:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->sequenceNumber:I

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->sessionId:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->waitTime:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->wifiCredentialsList:Ljava/util/List;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 99
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAllCredentialsReturned()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->allCredentialsReturned:Z

    return v0
.end method

.method public isCanProceed()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->canProceed:Z

    return v0
.end method

.method public setAllCredentialsReturned(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->allCredentialsReturned:Z

    return-void
.end method

.method public setCanProceed(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->canProceed:Z

    return-void
.end method

.method public setNextProvisioningState(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->nextProvisioningState:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->reason:Ljava/lang/String;

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->sequenceNumber:I

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setWaitTime(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->waitTime:Ljava/lang/String;

    return-void
.end method

.method public setWifiCredentialsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiCredentials;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/GetWifiCredentialsOutput;->wifiCredentialsList:Ljava/util/List;

    return-void
.end method
