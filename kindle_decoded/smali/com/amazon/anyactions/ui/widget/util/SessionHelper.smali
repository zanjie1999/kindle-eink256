.class public Lcom/amazon/anyactions/ui/widget/util/SessionHelper;
.super Ljava/lang/Object;
.source "SessionHelper.java"


# static fields
.field private static final COOKIE_FUTURE_TIMEOUT_MS:J = 0x7530L


# direct methods
.method public static buildCookieString([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 57
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    const-string v5, ";"

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 59
    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAccountId()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCookieString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException;
        }
    .end annotation

    const-string v0, "Error fetching cookies."

    .line 22
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    invoke-static {}, Lcom/amazon/ea/util/MarketplaceUtil;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Lcom/amazon/identity/auth/device/api/TokenManagement;

    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/amazon/anyactions/ui/widget/util/SessionHelper;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/amazon/ea/util/MarketplaceUtil;->getDomain()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getCookies(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v1

    const-wide/16 v2, 0x7530

    .line 38
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "com.amazon.dcp.sso.ErrorCode"

    .line 44
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "com.amazon.identity.auth.device.api.cookiekeys.all"

    .line 49
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/anyactions/ui/widget/util/SessionHelper;->buildCookieString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    new-instance v1, Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException;

    invoke-direct {v1, v0}, Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    .line 41
    new-instance v2, Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException;

    invoke-direct {v2, v0, v1}, Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 28
    :cond_1
    new-instance v0, Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException;

    const-string v1, "Cannot retrieve domain for current user\'s PFM."

    invoke-direct {v0, v1}, Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_2
    new-instance v0, Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException;

    const-string v1, "Wireless connection required."

    invoke-direct {v0, v1}, Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
