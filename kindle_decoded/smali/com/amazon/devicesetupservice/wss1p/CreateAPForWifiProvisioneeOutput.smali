.class public Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;
.super Ljava/lang/Object;
.source "CreateAPForWifiProvisioneeOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private blacklistTimeout:Ljava/lang/String;

.field private canProceed:Z

.field private deviceId:Ljava/lang/String;

.field private endpointToUse:Ljava/lang/String;

.field private hostPortList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private passphrase:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field private timeout:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.wss1p.CreateAPForWifiProvisioneeOutput"

    aput-object v2, v0, v1

    .line 83
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->classNameHashCode:I

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
    instance-of v0, p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;

    .line 113
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->blacklistTimeout:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->blacklistTimeout:Ljava/lang/String;

    .line 114
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->canProceed:Z

    .line 115
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->canProceed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->deviceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->deviceId:Ljava/lang/String;

    .line 116
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->endpointToUse:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->endpointToUse:Ljava/lang/String;

    .line 117
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->hostPortList:Ljava/util/List;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->hostPortList:Ljava/util/List;

    .line 118
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->passphrase:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->passphrase:Ljava/lang/String;

    .line 119
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->ssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->ssid:Ljava/lang/String;

    .line 120
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->timeout:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->timeout:Ljava/lang/String;

    .line 121
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBlacklistTimeout()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->blacklistTimeout:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEndpointToUse()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->endpointToUse:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPortList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->hostPortList:Ljava/util/List;

    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->passphrase:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->timeout:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    sget v1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->classNameHashCode:I

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->blacklistTimeout:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->canProceed:Z

    .line 93
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->deviceId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->endpointToUse:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->hostPortList:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->passphrase:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->ssid:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->timeout:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 90
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanProceed()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->canProceed:Z

    return v0
.end method

.method public setBlacklistTimeout(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->blacklistTimeout:Ljava/lang/String;

    return-void
.end method

.method public setCanProceed(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->canProceed:Z

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setEndpointToUse(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->endpointToUse:Ljava/lang/String;

    return-void
.end method

.method public setHostPortList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->hostPortList:Ljava/util/List;

    return-void
.end method

.method public setPassphrase(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->passphrase:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->timeout:Ljava/lang/String;

    return-void
.end method
