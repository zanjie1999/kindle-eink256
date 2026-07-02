.class public Lcom/amazon/kindle/krx/application/UserAccount;
.super Lcom/amazon/kindle/krx/application/BaseUserAccount;
.source "UserAccount.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kindle/krx/application/UserAccount;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/application/UserAccount;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/kindle/krx/application/BaseUserAccount;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/krx/application/UserAccount;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    return-void
.end method

.method private fetchKrxRoleName(Lcom/amazon/kindle/services/authentication/IAccountInfo;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-interface {p1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->isRestrictedAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CHILD"

    goto :goto_0

    :cond_0
    const-string p1, "ADULT"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public allowsFeedback()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/UserAccount;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->isRestrictedAccount()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public allowsSharing()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/UserAccount;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->isRestrictedAccount()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getAccountProperty(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/application/UserAccount;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/application/UserAccount;->fetchKrxRoleName(Lcom/amazon/kindle/services/authentication/IAccountInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/application/UserAccount;->getCountryOfResidence()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/application/UserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCountryOfResidence()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/UserAccount;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserCOR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPFMDomain()Ljava/lang/String;
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/application/UserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MJ Marketplace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MJ Domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getPreferredMarketplace()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/UserAccount;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserPFM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/UserAccount;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/UserAccount;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/UserAccount;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/UserAccount;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    return v0
.end method
