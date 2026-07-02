.class public Lcom/amazon/devicesetupservice/v1/WifiState;
.super Ljava/lang/Object;
.source "WifiState.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private connectionState:Ljava/lang/String;

.field private securityProtocol:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.WifiState"

    aput-object v2, v0, v1

    .line 36
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/WifiState;->classNameHashCode:I

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

    .line 55
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/WifiState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/WifiState;

    .line 61
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->connectionState:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/WifiState;->connectionState:Ljava/lang/String;

    .line 62
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->securityProtocol:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/WifiState;->securityProtocol:Ljava/lang/String;

    .line 63
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->ssid:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/WifiState;->ssid:Ljava/lang/String;

    .line 64
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getConnectionState()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->connectionState:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityProtocol()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->securityProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    sget v1, Lcom/amazon/devicesetupservice/v1/WifiState;->classNameHashCode:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->connectionState:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->securityProtocol:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->ssid:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 43
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setConnectionState(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->connectionState:Ljava/lang/String;

    return-void
.end method

.method public setSecurityProtocol(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->securityProtocol:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/WifiState;->ssid:Ljava/lang/String;

    return-void
.end method
