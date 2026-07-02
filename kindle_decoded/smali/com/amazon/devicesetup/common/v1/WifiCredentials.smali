.class public Lcom/amazon/devicesetup/common/v1/WifiCredentials;
.super Ljava/lang/Object;
.source "WifiCredentials.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private frequency:I

.field private key:Ljava/lang/String;

.field private keyIndex:I

.field private priority:I

.field private securityProtocol:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetup.common.v1.WifiCredentials"

    aput-object v2, v0, v1

    .line 63
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->classNameHashCode:I

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

    .line 85
    instance-of v0, p1, Lcom/amazon/devicesetup/common/v1/WifiCredentials;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 89
    :cond_0
    check-cast p1, Lcom/amazon/devicesetup/common/v1/WifiCredentials;

    .line 91
    iget v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->frequency:I

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->frequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->key:Ljava/lang/String;

    .line 93
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->keyIndex:I

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->keyIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->priority:I

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->securityProtocol:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->securityProtocol:Ljava/lang/String;

    .line 96
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->ssid:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->ssid:Ljava/lang/String;

    .line 97
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getFrequency()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->frequency:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyIndex()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->keyIndex:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->priority:I

    return v0
.end method

.method public getSecurityProtocol()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->securityProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    sget v1, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->classNameHashCode:I

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->frequency:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->key:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->keyIndex:I

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->priority:I

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->securityProtocol:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->ssid:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 70
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setFrequency(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->frequency:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->key:Ljava/lang/String;

    return-void
.end method

.method public setKeyIndex(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->keyIndex:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->priority:I

    return-void
.end method

.method public setSecurityProtocol(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->securityProtocol:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/devicesetup/common/v1/WifiCredentials;->ssid:Ljava/lang/String;

    return-void
.end method
