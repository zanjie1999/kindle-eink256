.class public Lcom/amazon/kcp/reader/features/SearchBaiduActivityFeature;
.super Ljava/lang/Object;
.source "SearchBaiduActivityFeature.java"


# direct methods
.method public static isSupported(Lcom/amazon/kcp/application/IAuthenticationManager;)Z
    .locals 4

    .line 20
    invoke-interface {p0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->isRestrictedAccount()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 21
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-interface {p0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserCOR()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-interface {p0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserPFM()Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-virtual {v2, v3, p0}, Lcom/amazon/kcp/application/Marketplace;->marketplaceContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
