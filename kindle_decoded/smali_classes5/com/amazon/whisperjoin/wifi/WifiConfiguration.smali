.class public Lcom/amazon/whisperjoin/wifi/WifiConfiguration;
.super Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;
.source "WifiConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private psk:Ljava/lang/String;

.field private wepKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;IZ)V

    .line 53
    sget-object p1, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    if-ne p2, p1, :cond_0

    .line 54
    invoke-direct {p0, p3}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getValidWepKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->wepKey:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_0
    sget-object p1, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    if-ne p2, p1, :cond_1

    .line 56
    invoke-direct {p0, p4}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getValidPsk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->psk:Ljava/lang/String;

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->validate()V

    return-void
.end method

.method public static createOpenWifiConfiguration(Ljava/lang/String;IZ)Lcom/amazon/whisperjoin/wifi/WifiConfiguration;
    .locals 8

    .line 31
    new-instance v7, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    sget-object v2, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v7
.end method

.method public static createWepWifiConfiguration(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/amazon/whisperjoin/wifi/WifiConfiguration;
    .locals 8

    .line 39
    new-instance v7, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    sget-object v2, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v7
.end method

.method public static createWpaWifiConfiguration(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/amazon/whisperjoin/wifi/WifiConfiguration;
    .locals 8

    .line 47
    new-instance v7, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    sget-object v2, Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v7
.end method

.method private getValidPsk(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "\""

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid wifi configuration. PSK is not quoted. Please use com.amazon.whisperjoin.utils.InputValidator to validate wifi parameters."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getValidWepKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "\""

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, p1, v2

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    instance-of p1, p1, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 21
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;

    invoke-virtual {v1, p0}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getWepKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getWepKey()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_6

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public getPsk()Ljava/lang/String;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->psk:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->psk:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWepKey()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->wepKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 21
    invoke-super {p0}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getWepKey()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    const/16 v2, 0x2b

    if-nez v1, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConfiguration(wepKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getWepKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", psk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 2

    .line 91
    invoke-super {p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->validate()V

    .line 95
    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->psk:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->wepKey:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wifi configuration cannot have both WEP-key and PSK. Please use com.amazon.whisperjoin.utils.InputValidator to validate wifi parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->psk:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->keyMgmt:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/utils/InputValidator;->isValidWPAWifiConfiguration(Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 98
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid PSK in wifi configuration. Please use com.amazon.whisperjoin.utils.InputValidator to validate wifi parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->wepKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->keyMgmt:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/utils/InputValidator;->isValidWEPWifiConfiguration(Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 100
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid WEP-key in wifi configuration. Please use com.amazon.whisperjoin.utils.InputValidator to validate wifi parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->psk:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiConfiguration;->wepKey:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->keyMgmt:Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;

    invoke-static {v0}, Lcom/amazon/whisperjoin/utils/InputValidator;->isValidOpenWifiConfiguration(Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 102
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid open wifi configuration. Please use com.amazon.whisperjoin.utils.InputValidator to validate wifi parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    return-void
.end method
