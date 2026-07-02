.class public Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;
.super Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;
.source "CreateAPForWifiProvisioneeInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private activeConnectionsCount:I

.field private discoveredDevice:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

.field private provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.wss1p.CreateAPForWifiProvisioneeInput"

    aput-object v2, v0, v1

    .line 39
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 59
    instance-of v0, p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;

    .line 66
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->activeConnectionsCount:I

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, v0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->activeConnectionsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->discoveredDevice:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->discoveredDevice:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

    .line 68
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v0, v0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    .line 69
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getActiveConnectionsCount()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->activeConnectionsCount:I

    return v0
.end method

.method public getDiscoveredDevice()Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->discoveredDevice:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

    return-object v0
.end method

.method public getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    invoke-super {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->classNameHashCode:I

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->activeConnectionsCount:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->discoveredDevice:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 46
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setActiveConnectionsCount(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->activeConnectionsCount:I

    return-void
.end method

.method public setDiscoveredDevice(Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->discoveredDevice:Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

    return-void
.end method

.method public setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->provisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-void
.end method
