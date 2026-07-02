.class public Lcom/amazon/identity/auth/device/gu;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/he;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.gu"


# instance fields
.field private B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    .line 44
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gu;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/gu;)Lcom/amazon/identity/auth/device/ed;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/gu;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Lcom/amazon/identity/auth/device/ej;)V
    .locals 8

    .line 2194
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v4

    .line 2196
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/gt;->ae(Landroid/content/Context;)Lcom/amazon/identity/auth/device/gt;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/gt;->b(Landroid/accounts/Account;)Lcom/amazon/identity/auth/device/hb;

    move-result-object p1

    .line 2330
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p2

    const-string v0, "force_refresh_dms_to_oauth_done_once"

    .line 2333
    invoke-virtual {p2, p3, v0}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "true"

    .line 2332
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/lit8 v7, p2, 0x1

    .line 3282
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v7, :cond_1

    if-eqz p4, :cond_0

    const-string p2, "com.amazon.identity.auth.device.api.TokenKeys.Options.ForceRefreshDMSTokenForOAuthToken"

    .line 3290
    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3295
    :cond_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gu;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-virtual {p2, p3, v4, p4, p6}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3297
    invoke-direct {p0, p3, p1}, Lcom/amazon/identity/auth/device/gu;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/hb;)V

    goto :goto_1

    .line 3292
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/amazon/identity/auth/device/gu;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/hb;)V

    const-string p2, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 3313
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/hb;->bY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3315
    iget-object p4, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p4, p3, p2}, Lcom/amazon/identity/auth/device/hr;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v3

    new-array p2, v0, [Ljava/lang/String;

    const/4 p4, 0x0

    aput-object v3, p2, p4

    .line 2207
    new-instance p4, Lcom/amazon/identity/auth/device/gu$2;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/gu$2;-><init>(Lcom/amazon/identity/auth/device/gu;Lcom/amazon/identity/auth/device/hb;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;Z)V

    invoke-virtual {p1, p2, p4}, Lcom/amazon/identity/auth/device/hb;->a([Ljava/lang/String;Lcom/amazon/identity/auth/device/hb$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/amazon/identity/auth/device/hb;)V
    .locals 1

    const-string v0, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    .line 305
    invoke-virtual {p2, v0}, Lcom/amazon/identity/auth/device/hb;->bY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 307
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, p1, p2}, Lcom/amazon/identity/auth/device/hr;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance p1, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p1, p7}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 102
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->FEATURE_NOT_IMPLEMENTED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p3, "getTokenForActor is not supported in pre-merge devices"

    const/4 p4, 0x6

    invoke-static {p1, p2, p3, p4, p3}, Lcom/amazon/identity/auth/device/hc;->d(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/gv;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance p1, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p1, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 130
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->FEATURE_NOT_IMPLEMENTED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance p1, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p1, p5}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 116
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->FEATURE_NOT_IMPLEMENTED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p3, "getCookiesForActor is not supported in pre-merge devices"

    const/4 p4, 0x6

    invoke-static {p1, p2, p3, p4, p3}, Lcom/amazon/identity/auth/device/hc;->d(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1341
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "authorizationCode"

    .line 1343
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1348
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    .line 1349
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/ib;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 64
    sget-object v0, Lcom/amazon/identity/auth/device/gu;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2145
    new-instance v0, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 2147
    iget-object p4, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p4, p1}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v4

    if-nez v4, :cond_2

    .line 2152
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 2154
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2155
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p3

    const-string p4, "Given Customer Does not exist"

    .line 2153
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 2157
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-object v0

    .line 2161
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 2166
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/16 p2, 0x8

    const-string p3, "Token key was empty."

    .line 2167
    invoke-static {p1, p3, p2, p3}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 2171
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-object v0

    .line 2175
    :cond_3
    new-instance p4, Lcom/amazon/identity/auth/device/gu$1;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, v0

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/gu$1;-><init>(Lcom/amazon/identity/auth/device/gu;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Lcom/amazon/identity/auth/device/ej;)V

    invoke-static {p4}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-object v0

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hg;->ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/hg;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hg;->ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/hg;->f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gu;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hg;->ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/hg;->g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method
