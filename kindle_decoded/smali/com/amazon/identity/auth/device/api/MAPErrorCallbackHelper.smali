.class public final Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;)Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v1

    const-string v2, "com.amazon.map.error.errorCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.amazon.map.error.errorMessage"

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.amazon.map.error.errorType"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/fl$a;)Landroid/os/Bundle;
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 78
    invoke-interface {p2}, Lcom/amazon/identity/auth/device/fl$a;->eE()Lcom/amazon/identity/auth/device/fl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 88
    :cond_0
    instance-of p1, p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    if-eqz p1, :cond_1

    .line 90
    check-cast p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->fW()Z

    move-result p1

    const-string p2, "com.amazon.map.error.shouldClearAuthCookies"

    .line 91
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-object p0
.end method

.method public static getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 3

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v1

    const-string v2, "com.amazon.map.error.errorCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.amazon.map.error.errorMessage"

    .line 102
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.amazon.map.error.errorType"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "retryable"

    .line 104
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 26
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public static onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 39
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method
