.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;
.super Ljava/lang/Object;
.source "GetWiFiSyncAuthTokenResponse.java"


# instance fields
.field private final mResponseCode:I

.field private final mRetryAfter:Ljava/lang/Long;

.field private final mWiFiSyncAuthToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xc8

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;-><init>(Ljava/lang/String;ILjava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Long;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mWiFiSyncAuthToken:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mResponseCode:I

    .line 17
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mRetryAfter:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 54
    const-class v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;

    .line 58
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mWiFiSyncAuthToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mWiFiSyncAuthToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getResponseCode()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mResponseCode:I

    return v0
.end method

.method public getRetryAfter()Ljava/lang/Long;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mRetryAfter:Ljava/lang/Long;

    return-object v0
.end method

.method public getWiFiSyncAuthToken()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mWiFiSyncAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mWiFiSyncAuthToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 37
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 42
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mWiFiSyncAuthToken:Ljava/lang/String;

    const-string v2, "mWiFiSyncAuthToken"

    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mResponseCode:I

    const-string v2, "mResponseCode"

    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetWiFiSyncAuthTokenResponse;->mRetryAfter:Ljava/lang/Long;

    const-string v2, "mRetryAfter"

    .line 45
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 46
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
