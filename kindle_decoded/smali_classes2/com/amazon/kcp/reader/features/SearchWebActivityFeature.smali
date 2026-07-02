.class public Lcom/amazon/kcp/reader/features/SearchWebActivityFeature;
.super Ljava/lang/Object;
.source "SearchWebActivityFeature.java"


# direct methods
.method public static isSupported(Lcom/amazon/kcp/application/IAuthenticationManager;)Z
    .locals 0

    .line 16
    invoke-interface {p0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->isRestrictedAccount()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
