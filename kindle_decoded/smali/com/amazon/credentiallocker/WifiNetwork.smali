.class public Lcom/amazon/credentiallocker/WifiNetwork;
.super Ljava/lang/Object;
.source "WifiNetwork.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private bssid:Ljava/lang/String;

.field private keyManagement:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.credentiallocker.WifiNetwork"

    aput-object v2, v0, v1

    .line 36
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/credentiallocker/WifiNetwork;->classNameHashCode:I

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
    instance-of v0, p1, Lcom/amazon/credentiallocker/WifiNetwork;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    check-cast p1, Lcom/amazon/credentiallocker/WifiNetwork;

    .line 61
    iget-object v0, p0, Lcom/amazon/credentiallocker/WifiNetwork;->bssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/credentiallocker/WifiNetwork;->bssid:Ljava/lang/String;

    .line 62
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/credentiallocker/WifiNetwork;->keyManagement:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/credentiallocker/WifiNetwork;->keyManagement:Ljava/lang/String;

    .line 63
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/credentiallocker/WifiNetwork;->ssid:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/credentiallocker/WifiNetwork;->ssid:Ljava/lang/String;

    .line 64
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getKeyManagement()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/credentiallocker/WifiNetwork;->keyManagement:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/credentiallocker/WifiNetwork;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    sget v1, Lcom/amazon/credentiallocker/WifiNetwork;->classNameHashCode:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/credentiallocker/WifiNetwork;->bssid:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/credentiallocker/WifiNetwork;->keyManagement:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/credentiallocker/WifiNetwork;->ssid:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 43
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/credentiallocker/WifiNetwork;->bssid:Ljava/lang/String;

    return-void
.end method

.method public setKeyManagement(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/credentiallocker/WifiNetwork;->keyManagement:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/credentiallocker/WifiNetwork;->ssid:Ljava/lang/String;

    return-void
.end method
