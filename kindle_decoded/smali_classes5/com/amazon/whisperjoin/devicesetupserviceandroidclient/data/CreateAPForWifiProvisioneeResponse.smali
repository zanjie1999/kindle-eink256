.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;
.super Ljava/lang/Object;
.source "CreateAPForWifiProvisioneeResponse.java"


# instance fields
.field private mBlacklistTimeout:Ljava/lang/String;

.field private mCanProceed:Z

.field private mDeviceId:Ljava/lang/String;

.field private mHostPortList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPassphrase:Ljava/lang/String;

.field private mSSID:Ljava/lang/String;

.field private mTimeoutMs:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mCanProceed:Z

    .line 25
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mSSID:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mPassphrase:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mDeviceId:Ljava/lang/String;

    .line 28
    iput p5, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mTimeoutMs:I

    .line 29
    iput-object p6, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mHostPortList:Ljava/util/List;

    .line 30
    iput-object p7, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mBlacklistTimeout:Ljava/lang/String;

    return-void
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

    .line 107
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;

    .line 111
    iget-boolean v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mCanProceed:Z

    iget-boolean v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mCanProceed:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mTimeoutMs:I

    iget v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mTimeoutMs:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mSSID:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mSSID:Ljava/lang/String;

    .line 113
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mPassphrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mPassphrase:Ljava/lang/String;

    .line 114
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mDeviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mDeviceId:Ljava/lang/String;

    .line 115
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mHostPortList:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mHostPortList:Ljava/util/List;

    .line 116
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mBlacklistTimeout:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mBlacklistTimeout:Ljava/lang/String;

    .line 117
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public getBlacklistTimeout()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mBlacklistTimeout:Ljava/lang/String;

    return-object v0
.end method

.method public getCanProceed()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mCanProceed:Z

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mDeviceId:Ljava/lang/String;

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

    .line 87
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mHostPortList:Ljava/util/List;

    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeoutMs()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mTimeoutMs:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mCanProceed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mSSID:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mPassphrase:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mDeviceId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mTimeoutMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mHostPortList:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mBlacklistTimeout:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBlacklistTimeout(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mBlacklistTimeout:Ljava/lang/String;

    return-void
.end method

.method public setCanProceed(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mCanProceed:Z

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mDeviceId:Ljava/lang/String;

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

    .line 91
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mHostPortList:Ljava/util/List;

    return-void
.end method

.method public setPassphrase(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mPassphrase:Ljava/lang/String;

    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mSSID:Ljava/lang/String;

    return-void
.end method

.method public setTimeoutMs(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mTimeoutMs:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 35
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mCanProceed:Z

    const-string v2, "canProceed"

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mSSID:Ljava/lang/String;

    const-string/jumbo v2, "ssid"

    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mPassphrase:Ljava/lang/String;

    const-string/jumbo v2, "passphrase"

    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mDeviceId:Ljava/lang/String;

    const-string v2, "deviceId"

    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mTimeoutMs:I

    const-string/jumbo v2, "timeoutMs"

    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mHostPortList:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "hostPortList"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;->mBlacklistTimeout:Ljava/lang/String;

    const-string v2, "blacklistTimeout"

    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 43
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
