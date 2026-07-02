.class public Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;
.super Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;
.source "ReportWifiProvisionerEventInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private accessPointSsid:Ljava/lang/String;

.field private errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

.field private eventType:Ljava/lang/String;

.field private probeRequest:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

.field private provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.wss1p.ReportWifiProvisionerEventInput"

    aput-object v2, v0, v1

    .line 58
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 80
    instance-of v0, p1, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;

    .line 87
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->accessPointSsid:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->accessPointSsid:Ljava/lang/String;

    .line 88
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    .line 89
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->eventType:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->eventType:Ljava/lang/String;

    .line 90
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->probeRequest:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->probeRequest:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

    .line 91
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v0, v0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 92
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAccessPointSsid()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->accessPointSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorInfo()Lcom/amazon/devicesetup/common/v1/ErrorInfo;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getProbeRequest()Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->probeRequest:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

    return-object v0
.end method

.method public getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    invoke-super {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->classNameHashCode:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->accessPointSsid:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->eventType:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->probeRequest:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 65
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAccessPointSsid(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->accessPointSsid:Ljava/lang/String;

    return-void
.end method

.method public setErrorInfo(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->errorInfo:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->eventType:Ljava/lang/String;

    return-void
.end method

.method public setProbeRequest(Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->probeRequest:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

    return-void
.end method

.method public setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/ReportWifiProvisionerEventInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-void
.end method
