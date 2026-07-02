.class public Lcom/amazon/devicesetup/common/v1/WifiScanData;
.super Ljava/lang/Object;
.source "WifiScanData.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private bssid:Ljava/lang/String;

.field private frequency:I

.field private rssi:I

.field private securityProtocol:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetup.common.v1.WifiScanData"

    aput-object v2, v0, v1

    .line 54
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 75
    instance-of v0, p1, Lcom/amazon/devicesetup/common/v1/WifiScanData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    check-cast p1, Lcom/amazon/devicesetup/common/v1/WifiScanData;

    .line 81
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->bssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/WifiScanData;->bssid:Ljava/lang/String;

    .line 82
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->frequency:I

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetup/common/v1/WifiScanData;->frequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->rssi:I

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetup/common/v1/WifiScanData;->rssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->securityProtocol:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/WifiScanData;->securityProtocol:Ljava/lang/String;

    .line 85
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->ssid:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetup/common/v1/WifiScanData;->ssid:Ljava/lang/String;

    .line 86
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->frequency:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->rssi:I

    return v0
.end method

.method public getSecurityProtocol()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->securityProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    sget v1, Lcom/amazon/devicesetup/common/v1/WifiScanData;->classNameHashCode:I

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->bssid:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->frequency:I

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->rssi:I

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->securityProtocol:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->ssid:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 61
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->bssid:Ljava/lang/String;

    return-void
.end method

.method public setFrequency(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->frequency:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->rssi:I

    return-void
.end method

.method public setSecurityProtocol(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->securityProtocol:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/WifiScanData;->ssid:Ljava/lang/String;

    return-void
.end method
