.class public Lcom/amazon/devicesetup/common/v1/ReportInput;
.super Ljava/lang/Object;
.source "ReportInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private currentProvisioningState:Ljava/lang/String;

.field private deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

.field private nonce:Ljava/lang/String;

.field private registrationState:Ljava/lang/String;

.field private sequenceNumber:I

.field private sessionId:Ljava/lang/String;

.field private stateTransitionResult:Ljava/lang/String;

.field private wifiNetworkInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiReportData;",
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

    const-string v2, "com.amazon.devicesetup.common.v1.ReportInput"

    aput-object v2, v0, v1

    .line 83
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetup/common/v1/ReportInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 107
    instance-of v0, p1, Lcom/amazon/devicesetup/common/v1/ReportInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    check-cast p1, Lcom/amazon/devicesetup/common/v1/ReportInput;

    .line 113
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->currentProvisioningState:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/ReportInput;->currentProvisioningState:Ljava/lang/String;

    .line 114
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/ReportInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    .line 115
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->nonce:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/ReportInput;->nonce:Ljava/lang/String;

    .line 116
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->registrationState:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/ReportInput;->registrationState:Ljava/lang/String;

    .line 117
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->sequenceNumber:I

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetup/common/v1/ReportInput;->sequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->sessionId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/ReportInput;->sessionId:Ljava/lang/String;

    .line 119
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->stateTransitionResult:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/ReportInput;->stateTransitionResult:Ljava/lang/String;

    .line 120
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->wifiNetworkInfoList:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/devicesetup/common/v1/ReportInput;->wifiNetworkInfoList:Ljava/util/List;

    .line 121
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCurrentProvisioningState()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->currentProvisioningState:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceDetails()Lcom/amazon/devicesetup/common/v1/DeviceDetails;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationState()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->registrationState:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->sequenceNumber:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStateTransitionResult()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->stateTransitionResult:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiNetworkInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiReportData;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->wifiNetworkInfoList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    sget v1, Lcom/amazon/devicesetup/common/v1/ReportInput;->classNameHashCode:I

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->currentProvisioningState:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->nonce:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->registrationState:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->sequenceNumber:I

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->sessionId:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->stateTransitionResult:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->wifiNetworkInfoList:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 90
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCurrentProvisioningState(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->currentProvisioningState:Ljava/lang/String;

    return-void
.end method

.method public setDeviceDetails(Lcom/amazon/devicesetup/common/v1/DeviceDetails;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setRegistrationState(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->registrationState:Ljava/lang/String;

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->sequenceNumber:I

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setStateTransitionResult(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->stateTransitionResult:Ljava/lang/String;

    return-void
.end method

.method public setWifiNetworkInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiReportData;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/ReportInput;->wifiNetworkInfoList:Ljava/util/List;

    return-void
.end method
