.class public final Lcom/amazon/identity/auth/device/hc;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.hc"

.field private static final aQ:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 23
    sput-object v0, Lcom/amazon/identity/auth/device/hc;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 24
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x7

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    sget-object v0, Lcom/amazon/identity/auth/device/hc;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 26
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/16 v2, 0x8

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 27
    sget-object v0, Lcom/amazon/identity/auth/device/hc;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 28
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x4

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/device/hc;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 30
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x5

    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 31
    sget-object v0, Lcom/amazon/identity/auth/device/hc;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 32
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x3

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 33
    sget-object v0, Lcom/amazon/identity/auth/device/hc;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 34
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 35
    sget-object v0, Lcom/amazon/identity/auth/device/hc;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 36
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x6

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.amazon.dcp.sso.ErrorCode"

    .line 234
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "com.amazon.dcp.sso.ErrorMessage"

    .line 235
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result p2

    const-string p3, "com.amazon.map.error.errorCode"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "com.amazon.map.error.errorMessage"

    .line 238
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.amazon.map.error.errorType"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1185
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/hc;->aQ:Landroid/util/SparseIntArray;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1191
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1170
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_2

    .line 1173
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p2, v0, p4}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :cond_2
    const-string p1, "errorCode"

    .line 1176
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMessage"

    .line 1177
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {p0, v1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/fl$a;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    .line 101
    sget-object p0, Lcom/amazon/identity/auth/device/hc;->TAG:Ljava/lang/String;

    const-string p1, "Cannot callback error because no callback was given"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 104
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/amazon/identity/auth/device/hc;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/fl$a;)Landroid/os/Bundle;

    move-result-object p1

    .line 105
    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    .line 66
    sget-object p0, Lcom/amazon/identity/auth/device/hc;->TAG:Ljava/lang/String;

    const-string p1, "Cannot callback success because no callback was given"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1123
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "value_key"

    .line 1124
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.amazon.identity.auth.device.api.TokenKeys.Options.OAuthAccessTokenTTLInMilliSec"

    .line 1125
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 70
    invoke-interface {p0, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    .line 54
    sget-object p0, Lcom/amazon/identity/auth/device/hc;->TAG:Ljava/lang/String;

    const-string p1, "Cannot callback success because no callback was given"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/hc;->d(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public static b(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, p1, v0}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "value_key"

    .line 112
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 115
    sget-object p0, Lcom/amazon/identity/auth/device/hc;->TAG:Ljava/lang/String;

    const-string p1, "This valid token is from cache while service returns error."

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    const-string p1, "access_token_from_cache"

    .line 116
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object v0
.end method

.method public static d(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    .line 89
    sget-object p0, Lcom/amazon/identity/auth/device/hc;->TAG:Ljava/lang/String;

    const-string p1, "Cannot callback error because no callback was given"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public static getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/fl$a;)Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    invoke-interface {p2}, Lcom/amazon/identity/auth/device/fl$a;->bD()I

    move-result v0

    invoke-interface {p2}, Lcom/amazon/identity/auth/device/fl$a;->bE()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 199
    invoke-interface {p2}, Lcom/amazon/identity/auth/device/fl$a;->eE()Lcom/amazon/identity/auth/device/fl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 209
    :cond_0
    instance-of p1, p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    if-eqz p1, :cond_1

    .line 211
    check-cast p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->fW()Z

    move-result p1

    const-string p2, "com.amazon.map.error.shouldClearAuthCookies"

    .line 212
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-object p0
.end method
