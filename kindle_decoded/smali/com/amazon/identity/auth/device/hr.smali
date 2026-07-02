.class public final Lcom/amazon/identity/auth/device/hr;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.hr"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hr;->ak(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hn;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/hr;->a(Lcom/amazon/identity/auth/device/hn;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 202
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/gc;->eT()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x1

    move-object v1, p1

    const/4 v2, 0x1

    .line 205
    :goto_0
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "%s %d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Lcom/amazon/identity/auth/device/hn;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/hn;->d(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/hr;->b(Lcom/amazon/identity/auth/device/hn;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ak(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hn;
    .locals 1

    .line 247
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    const-string v0, "dcp_account_manager"

    .line 248
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/hn;

    return-object p0
.end method

.method private static b(Lcom/amazon/identity/auth/device/hn;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.amazon.dcp.sso.property.account.acctId"

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/hn;->c(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 133
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/identity/auth/device/hn;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public static b(Lcom/amazon/identity/auth/device/hn;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/hn;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    const-string v0, "com.amazon.account"

    .line 109
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/hn;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 113
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 115
    invoke-static {p0, v4}, Lcom/amazon/identity/auth/device/hr;->b(Lcom/amazon/identity/auth/device/hn;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "authAccount"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "accountType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.amazon.dcp.sso.property.account.acctId"

    .line 81
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 84
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {p0, v1, v0}, Lcom/amazon/identity/auth/device/hr;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/hr;->TAG:Ljava/lang/String;

    const-string p1, "Could not get directed id from android account"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1215
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1221
    :cond_0
    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 176
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/hr;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "authAccount"

    .line 185
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "accountType"

    const-string v0, "com.amazon.account"

    .line 187
    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.amazon.dcp.sso.property.account.acctId"

    .line 188
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static da(Ljava/lang/String;)Z
    .locals 2

    .line 275
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hr;->db(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.amazon.dcp.sso.token.cookie.xmain"

    .line 279
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.amazon.dcp.sso.token.cookie.xmainAndXabcCookies"

    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.amazon.dcp.sso.token.device"

    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.amazon.dcp.sso.property.account.extratokens"

    .line 282
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.amazon.identity.cookies.xfsn"

    .line 283
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static db(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.amazon.dcp.sso.token.device.adptoken"

    .line 288
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.amazon.dcp.sso.token.device.privatekey"

    .line 289
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.amazon.dcp.sso.token.device.credentialsmap"

    .line 290
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p2, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hr;->ak(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hn;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/hr;->a(Lcom/amazon/identity/auth/device/hn;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 253
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    const-string v0, "dcp_token_cache_holder"

    .line 262
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/gt;

    .line 264
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/gt;->b(Landroid/accounts/Account;)Lcom/amazon/identity/auth/device/hb;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 270
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/hb;->invalidateAuthToken(Ljava/lang/String;)V

    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 0

    .line 168
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/gc;->cc(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method
