.class public Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;
.super Lcom/amazon/whisperjoin/wifi/WifiNetwork;
.source "WifiBaseConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected hidden:Z

.field protected priority:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;IZ)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/wifi/WifiKeyManagement;)V

    .line 60
    iput p3, p0, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->priority:I

    .line 61
    iput-boolean p4, p0, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->hidden:Z

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p1, p1, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;

    invoke-virtual {v1, p0}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->getPriority()I

    move-result p1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->getPriority()I

    move-result v3

    if-eq p1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->isHidden()Z

    move-result p1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->isHidden()Z

    move-result v1

    if-eq p1, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->priority:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 13
    invoke-super {p0}, Lcom/amazon/whisperjoin/wifi/WifiNetwork;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->getPriority()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4f

    goto :goto_0

    :cond_0
    const/16 v1, 0x61

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->hidden:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiBaseConfiguration(priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/wifi/WifiBaseConfiguration;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
