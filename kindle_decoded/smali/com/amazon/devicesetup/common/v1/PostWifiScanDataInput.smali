.class public Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;
.super Ljava/lang/Object;
.source "PostWifiScanDataInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

.field private nonce:Ljava/lang/String;

.field private sequenceNumber:I

.field private sessionId:Ljava/lang/String;

.field private shouldReturnUnknownScanData:Z

.field private wifiScanDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
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

    const-string v2, "com.amazon.devicesetup.common.v1.PostWifiScanDataInput"

    aput-object v2, v0, v1

    .line 65
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->classNameHashCode:I

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

    .line 87
    instance-of v0, p1, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    check-cast p1, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;

    .line 93
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    .line 94
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->nonce:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->nonce:Ljava/lang/String;

    .line 95
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->sequenceNumber:I

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->sequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->sessionId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->sessionId:Ljava/lang/String;

    .line 97
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->shouldReturnUnknownScanData:Z

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p1, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->shouldReturnUnknownScanData:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->wifiScanDataList:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->wifiScanDataList:Ljava/util/List;

    .line 99
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDeviceDetails()Lcom/amazon/devicesetup/common/v1/DeviceDetails;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->sequenceNumber:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiScanDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->wifiScanDataList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    sget v1, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->classNameHashCode:I

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->nonce:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->sequenceNumber:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->sessionId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->shouldReturnUnknownScanData:Z

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->wifiScanDataList:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 72
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isShouldReturnUnknownScanData()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->shouldReturnUnknownScanData:Z

    return v0
.end method

.method public setDeviceDetails(Lcom/amazon/devicesetup/common/v1/DeviceDetails;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->deviceDetails:Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->sequenceNumber:I

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setShouldReturnUnknownScanData(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->shouldReturnUnknownScanData:Z

    return-void
.end method

.method public setWifiScanDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetup/common/v1/WifiScanData;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/PostWifiScanDataInput;->wifiScanDataList:Ljava/util/List;

    return-void
.end method
