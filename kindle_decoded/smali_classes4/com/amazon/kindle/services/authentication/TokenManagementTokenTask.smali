.class final Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;
.super Ljava/lang/Object;
.source "TokenManagementTokenTask.java"

# interfaces
.implements Lcom/amazon/kindle/services/authentication/MAPTokenTask;


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String; = "www.amazon.com"

.field private static final TAG:Ljava/lang/String;

.field private static final XACB_COOKIE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mapCallback:Lcom/amazon/identity/auth/device/api/Callback;

.field private final tokenCache:Lcom/amazon/kindle/services/authentication/ITokenCache;

.field private tokenKey:Ljava/lang/String;

.field private tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->TAG:Ljava/lang/String;

    const-string v0, "^(x-[a-z]+)=([^;]+);.*domain=([a-z\\.]+);.*"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->XACB_COOKIE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/TokenManagement;Ljava/lang/String;Lcom/amazon/kindle/services/authentication/ITokenCache;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask$1;-><init>(Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;)V

    iput-object v0, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->mapCallback:Lcom/amazon/identity/auth/device/api/Callback;

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;

    .line 49
    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->tokenKey:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->tokenCache:Lcom/amazon/kindle/services/authentication/ITokenCache;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->tokenKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->onCallbackError(Landroid/os/Bundle;)V

    return-void
.end method

.method private getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->tokenCache:Lcom/amazon/kindle/services/authentication/ITokenCache;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/amazon/kindle/services/authentication/ITokenCache;->getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 81
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {p1, v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onCallbackError(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.amazon.dcp.sso.ErrorCode"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 64
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->fromValue(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenManagement with tokenKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->tokenKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed with error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private parseCookies([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 89
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 90
    sget-object v3, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->XACB_COOKIE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->tokenKey:Ljava/lang/String;

    const-string v1, "com.amazon.dcp.sso.token.cookie.xmainAndXabcCookies"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->mapCallback:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getCookies(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->tokenKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->mapCallback:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->tokenKey:Ljava/lang/String;

    const-string v1, "com.amazon.dcp.sso.token.cookie.xmainAndXabcCookies"

    if-ne v0, v1, :cond_0

    const-string v0, "com.amazon.identity.auth.device.api.cookiekeys.all"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->parseCookies([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "value_key"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
