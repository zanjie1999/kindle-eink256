.class public Lcom/amazon/whisperjoin/wifi/WifiNetwork;
.super Ljava/lang/Object;
.source "WifiNetwork.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected keyMgmt:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

.field protected ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "\""

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->ssid:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->keyMgmt:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    .line 34
    invoke-direct {p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->validateInternal()V

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid wifi network. SSID is not quoted. Please use com.amazon.whisperjoin.utils.InputValidator to validate wifi parameters."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateInternal()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/utils/InputValidator;->isValidSsid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->keyMgmt:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    invoke-static {v0}, Lcom/amazon/whisperjoin/utils/InputValidator;->isValidWifiKeyManagement(Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid wifi network. Please use com.amazon.whisperjoin.utils.InputValidator to validate wifi parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    instance-of p1, p1, Lcom/amazon/whisperjoin/wifi/WifiNetwork;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 20
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/wifi/WifiNetwork;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/wifi/WifiNetwork;

    invoke-virtual {p1, p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getKeyMgmt()Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getKeyMgmt()Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    move-result-object p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public getKeyMgmt()Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->keyMgmt:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 20
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getKeyMgmt()Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiNetwork(ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyMgmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->getKeyMgmt()Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->validateInternal()V

    return-void
.end method
