.class public Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;
.super Lcom/amazon/devicesetup/common/v1/SignedOutput;
.source "PostWifiScanDataOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private allCredentialsFound:Z

.field private canProceed:Z

.field private nextProvisioningState:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private sequenceNumber:I

.field private sessionId:Ljava/lang/String;

.field private totalCredentialsFound:I

.field private unknownScanDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;"
        }
    .end annotation
.end field

.field private waitTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetup.common.v1.PostWifiScanDataOutput"

    aput-object v2, v0, v1

    .line 101
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->classNameHashCode:I

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

    .line 128
    instance-of v0, p1, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;

    .line 135
    invoke-super {p0, p1}, Lcom/amazon/devicesetup/common/v1/SignedOutput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->allCredentialsFound:Z

    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-boolean v2, v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->allCredentialsFound:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->canProceed:Z

    .line 137
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-boolean v2, v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->canProceed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->nextProvisioningState:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->nextProvisioningState:Ljava/lang/String;

    .line 138
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->nonce:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->nonce:Ljava/lang/String;

    .line 139
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->reason:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->reason:Ljava/lang/String;

    .line 140
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->sequenceNumber:I

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->sequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->sessionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->sessionId:Ljava/lang/String;

    .line 142
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->totalCredentialsFound:I

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->totalCredentialsFound:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->unknownScanDataList:Ljava/util/List;

    iget-object v2, v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->unknownScanDataList:Ljava/util/List;

    .line 144
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->waitTime:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->waitTime:Ljava/lang/String;

    .line 145
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getNextProvisioningState()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->nextProvisioningState:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->sequenceNumber:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCredentialsFound()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->totalCredentialsFound:I

    return v0
.end method

.method public getUnknownScanDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->unknownScanDataList:Ljava/util/List;

    return-object v0
.end method

.method public getWaitTime()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->waitTime:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    invoke-super {p0}, Lcom/amazon/devicesetup/common/v1/SignedOutput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->classNameHashCode:I

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->allCredentialsFound:Z

    .line 111
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->canProceed:Z

    .line 112
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->nextProvisioningState:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->nonce:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->reason:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->sequenceNumber:I

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->sessionId:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->totalCredentialsFound:I

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->unknownScanDataList:Ljava/util/List;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->waitTime:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 108
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAllCredentialsFound()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->allCredentialsFound:Z

    return v0
.end method

.method public isCanProceed()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->canProceed:Z

    return v0
.end method

.method public setAllCredentialsFound(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->allCredentialsFound:Z

    return-void
.end method

.method public setCanProceed(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->canProceed:Z

    return-void
.end method

.method public setNextProvisioningState(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->nextProvisioningState:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->reason:Ljava/lang/String;

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->sequenceNumber:I

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setTotalCredentialsFound(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->totalCredentialsFound:I

    return-void
.end method

.method public setUnknownScanDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->unknownScanDataList:Ljava/util/List;

    return-void
.end method

.method public setWaitTime(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataOutput;->waitTime:Ljava/lang/String;

    return-void
.end method
