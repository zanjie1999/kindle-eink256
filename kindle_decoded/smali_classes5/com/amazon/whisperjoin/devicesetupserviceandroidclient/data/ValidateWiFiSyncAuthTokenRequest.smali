.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;
.super Ljava/lang/Object;
.source "ValidateWiFiSyncAuthTokenRequest.java"


# instance fields
.field private final mAuthMaterialIndex:Ljava/lang/String;

.field private final mProductIndex:Ljava/lang/String;

.field private final mSessionToken:Ljava/lang/String;

.field private final mWifiSyncAuthToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mWifiSyncAuthToken:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mAuthMaterialIndex:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mProductIndex:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mSessionToken:Ljava/lang/String;

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

    .line 47
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;

    .line 51
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mWifiSyncAuthToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mWifiSyncAuthToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mAuthMaterialIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mAuthMaterialIndex:Ljava/lang/String;

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mProductIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mProductIndex:Ljava/lang/String;

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mSessionToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mSessionToken:Ljava/lang/String;

    .line 54
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

.method public getAuthMaterialIndex()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mAuthMaterialIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mProductIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSyncAuthToken()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mWifiSyncAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mWifiSyncAuthToken:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mAuthMaterialIndex:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mProductIndex:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mSessionToken:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mWifiSyncAuthToken:Ljava/lang/String;

    const-string v2, "mWifiSyncAuthToken"

    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mAuthMaterialIndex:Ljava/lang/String;

    const-string v2, "mAuthMaterialIndex"

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mProductIndex:Ljava/lang/String;

    const-string v2, "mProductIndex"

    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenRequest;->mSessionToken:Ljava/lang/String;

    const-string v2, "mSessionToken"

    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 69
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
