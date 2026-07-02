.class public Lcom/amazon/kindle/services/authentication/KSDKOAuthTokenProvider;
.super Lcom/amazon/ksdk/oauth/TokenProvider;
.source "KSDKOAuthTokenProvider.java"


# static fields
.field private static final EXTRA_RESPONSE_HEADERS:Ljava/lang/String; = "auth.headers"

.field private static final HEADER_ACCESS_TOKEN:Ljava/lang/String; = "x-amz-access-token"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kindle/services/authentication/KSDKOAuthTokenProvider;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/authentication/KSDKOAuthTokenProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/ksdk/oauth/TokenProvider;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KSDKOAuthTokenProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static getHeadersInBundle(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "auth.headers"

    .line 68
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAccessToken(Lcom/amazon/ksdk/oauth/TokenRequest;)Ljava/lang/String;
    .locals 9

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 35
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KSDKOAuthTokenProvider;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "empty"

    if-eqz v1, :cond_1

    return-object v2

    .line 42
    :cond_1
    new-instance v1, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/KSDKOAuthTokenProvider;->context:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 43
    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v3

    .line 46
    invoke-virtual {p1}, Lcom/amazon/ksdk/oauth/TokenRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 47
    invoke-virtual {p1}, Lcom/amazon/ksdk/oauth/TokenRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {p1}, Lcom/amazon/ksdk/oauth/TokenRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v6

    .line 49
    invoke-virtual {p1}, Lcom/amazon/ksdk/oauth/TokenRequest;->getBody()[B

    move-result-object v7

    const/4 v8, 0x0

    .line 45
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->getAuthenticationHeadersForRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/amazon/kindle/services/authentication/KSDKOAuthTokenProvider;->getHeadersInBundle(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "x-amz-access-token"

    .line 57
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 59
    :catch_0
    sget-object v0, Lcom/amazon/kindle/services/authentication/KSDKOAuthTokenProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KSDKOAuth retrieve access token failed for request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/ksdk/oauth/TokenRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    return-object v2
.end method
