.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;
.super Ljava/lang/Object;
.source "DiscoveredWifiProvisionee.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mEncodedSsid:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mRssi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 34
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mMacAddress:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mEncodedSsid:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mRssi:Ljava/lang/String;

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "rssi cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encodedSsid cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "macAddress cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 77
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    .line 81
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mEncodedSsid:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->getEncodedSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mRssi:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->getRssi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getEncodedSsid()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mEncodedSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mRssi:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mMacAddress:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mEncodedSsid:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mRssi:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setEncodedSsid(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mEncodedSsid:Ljava/lang/String;

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public setRssi(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mRssi:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mMacAddress:Ljava/lang/String;

    const-string v2, "macAddress"

    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mEncodedSsid:Ljava/lang/String;

    const-string v2, "encodedSsid"

    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->mRssi:Ljava/lang/String;

    const-string/jumbo v2, "rssi"

    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 45
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
