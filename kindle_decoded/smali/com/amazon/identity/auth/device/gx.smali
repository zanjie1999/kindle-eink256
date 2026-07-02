.class public Lcom/amazon/identity/auth/device/gx;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/gx$a;,
        Lcom/amazon/identity/auth/device/gx$b;
    }
.end annotation


# static fields
.field private static final pb:J


# instance fields
.field private final B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

.field private final D:Lcom/amazon/identity/auth/device/fz;

.field private F:Lcom/amazon/identity/auth/device/eh;

.field private final dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field private final hM:Lcom/amazon/identity/auth/device/iv;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final pc:Lcom/amazon/identity/auth/device/hh;

.field private w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->d(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/gx;->pb:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_system"

    .line 85
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/eh;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gx;->F:Lcom/amazon/identity/auth/device/eh;

    .line 87
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gx;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    .line 89
    new-instance p1, Lcom/amazon/identity/auth/device/iv;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/iv;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gx;->hM:Lcom/amazon/identity/auth/device/iv;

    .line 91
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gx;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 93
    new-instance p1, Lcom/amazon/identity/auth/device/ga;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/ga;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ga;->fa()Lcom/amazon/identity/auth/device/fz;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gx;->D:Lcom/amazon/identity/auth/device/fz;

    .line 96
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gx;->w:Lcom/amazon/identity/auth/device/gc;

    .line 98
    invoke-static {}, Lcom/amazon/identity/auth/device/hh;->gm()Lcom/amazon/identity/auth/device/hh;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gx;->pc:Lcom/amazon/identity/auth/device/hh;

    return-void
.end method

.method private T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx;->D:Lcom/amazon/identity/auth/device/fz;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/fz;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static U(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/token/MAPCookie;
    .locals 10

    .line 1188
    new-instance v9, Lcom/amazon/identity/auth/device/token/MAPCookie;

    .line 1191
    invoke-static {}, Lcom/amazon/identity/auth/device/hx;->gB()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "sid"

    const-string v5, "/"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/amazon/identity/auth/device/token/MAPCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v9
.end method

.method private V(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    .line 1609
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MAPCookieManager"

    if-nez v0, :cond_2

    .line 1617
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1625
    iget-object p2, p0, Lcom/amazon/identity/auth/device/gx;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Given account is not registered"

    .line 1628
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    new-instance p2, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1630
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    .line 1629
    invoke-static {v0, p1, v1, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw p2

    :cond_1
    const-string p1, "Given actor is null"

    .line 1620
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    new-instance p2, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1622
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    .line 1621
    invoke-static {v0, p1, v1, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw p2

    :cond_2
    const-string p1, "Given account is null"

    .line 1612
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    new-instance p2, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1614
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    invoke-static {v0, p1, v1, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw p2
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 909
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 920
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 928
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gx;->b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hx;->i(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    .line 931
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.amazon.identity.auth.device.api.cookiekeys.ResponseUrl"

    .line 933
    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    const-string v0, "MAPCookieManager"

    .line 1418
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https"

    const-string v3, "key_sign_in_full_endpoint"

    .line 3536
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p2, "Using explicitly passed endpoint for cookie exchange : "

    .line 3539
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3543
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3545
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3550
    :cond_1
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3553
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/ho;->c(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3557
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p2, "Cookies exchange panda host: %s"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, p3, v3

    .line 3561
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3560
    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :goto_2
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    const/16 p2, 0x1bb

    const-string p3, "/ap/exchangetoken/cookies"

    invoke-direct {v1, v2, p1, p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string p2, "Error parsing URL"

    .line 1426
    invoke-static {v0, p2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1384
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1387
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1388
    new-instance v10, Lcom/amazon/identity/auth/device/token/MAPCookie;

    const-string v4, "Name"

    .line 1389
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "Value"

    .line 1390
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "Secure"

    .line 1393
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object v4, v10

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/identity/auth/device/token/MAPCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1397
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Domain"

    .line 1399
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/amazon/identity/auth/device/token/MAPCookie;->setDomain(Ljava/lang/String;)V

    :cond_0
    const-string v4, "Path"

    .line 1401
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/amazon/identity/auth/device/token/MAPCookie;->setPath(Ljava/lang/String;)V

    const-string v4, "Expires"

    .line 1402
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1404
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/amazon/identity/auth/device/token/MAPCookie;->cH(Ljava/lang/String;)V

    :cond_1
    const-string v4, "HttpOnly"

    .line 1406
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v10, v3}, Lcom/amazon/identity/auth/device/token/MAPCookie;->setHttpOnly(Z)V

    .line 1407
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    .line 1637
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1647
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1648
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/token/MAPCookie;

    .line 1650
    invoke-static {v3, p1}, Lcom/amazon/identity/auth/device/gx;->a(Lcom/amazon/identity/auth/device/token/MAPCookie;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1656
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string p0, "MAPCookieManager"

    const-string p1, "Cookies number not match! Return anyway..."

    .line 1663
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WRONG_ACTOR_COOKIES_NUMBER_DIFF:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    new-array p0, v1, [Ljava/lang/String;

    const-string p1, "NO_COOKIES_WHEN_REPLACE_ACTOR_COOKIES"

    .line 1639
    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1641
    new-instance p0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1642
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v0

    const-string v1, "No existing cookies, have you called getCookiesForActor before?"

    .line 1641
    invoke-static {p1, v1, v0, v1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw p0
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    .line 564
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 568
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 574
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/amazon/identity/auth/device/gx;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ji$b;)V
    .locals 2

    const-string/jumbo v0, "source_token_type"

    const-string/jumbo v1, "refresh_token"

    .line 1517
    invoke-virtual {p2, v0, v1}, Lcom/amazon/identity/auth/device/ji$b;->ar(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    const-string/jumbo v0, "source_token"

    .line 1518
    invoke-virtual {p2, v0, p1}, Lcom/amazon/identity/auth/device/ji$b;->ar(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;)V"
        }
    .end annotation

    .line 616
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gx;->D:Lcom/amazon/identity/auth/device/fz;

    invoke-virtual {p1, p2, p3, p5}, Lcom/amazon/identity/auth/device/fz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 623
    :cond_0
    invoke-virtual {p0, p5, p1}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx;->D:Lcom/amazon/identity/auth/device/fz;

    invoke-virtual {v0, p1, p2, p3, p5}, Lcom/amazon/identity/auth/device/fz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    if-nez p4, :cond_1

    .line 629
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gx;->D:Lcom/amazon/identity/auth/device/fz;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/fz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 630
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cleared non-auth cookies for domain:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "MAPCookieManager"

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "MAPCookieManager"

    if-eqz p3, :cond_1

    .line 311
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Expected url, but did not receive one from cookies request. Cannot proceed."

    .line 313
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/String;

    const-string p2, "fetchCookiesFromServerFailure:MissingExpectedResponseUrl"

    .line 314
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 317
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 319
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p3

    const-string v0, "Expected a URL, but did not receive one from the getCookies request"

    const-string v1, "Expected url, but did not receive one from getCookies request"

    .line 317
    invoke-static {p2, v0, p3, v1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 326
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "Expected cookies, but did not receive them from getCookies request"

    .line 329
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array p2, v0, [Ljava/lang/String;

    const-string p3, "fetchCookiesFromServerFailure:MissingExpectedCookies"

    .line 330
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 333
    new-instance p2, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 335
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v0

    const-string v1, "Expected cookies, but did not receive them from the getCookies request"

    .line 333
    invoke-static {p3, v1, v0, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 678
    invoke-static {p0}, Lcom/amazon/identity/auth/device/gx;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    invoke-static {p0}, Lcom/amazon/identity/auth/device/gx;->g(Ljava/util/List;)V

    const-string p0, "MAPCookieManager"

    .line 682
    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string p0, "com.amazon.dcp.sso.token.cookie.sid"

    .line 683
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Lcom/amazon/identity/auth/device/token/MAPCookie;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;)Z"
        }
    .end annotation

    .line 1672
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/token/MAPCookie;

    .line 1675
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/identity/auth/device/gx$a;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "MAPCookieManager"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 768
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 770
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gx;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 774
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 776
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-nez p4, :cond_2

    goto :goto_1

    .line 786
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/gx;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 792
    :cond_1
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 793
    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/gx;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 800
    :goto_1
    new-instance p2, Lcom/amazon/identity/auth/device/gx$a;

    invoke-direct {p2, p1, v0}, Lcom/amazon/identity/auth/device/gx$a;-><init>(Ljava/util/List;Z)V

    return-object p2
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/gx$b;
    .locals 5

    const-string v0, "MAPCookieManager"

    :try_start_0
    const-string/jumbo v1, "response"

    .line 1228
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string/jumbo v1, "uri"

    .line 1229
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string/jumbo v2, "tokens"

    .line 1231
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v2, "Parsing account cookies Response for id="

    .line 1242
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v2, "cookies"

    .line 1244
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1246
    invoke-direct {p0, p1, v2}, Lcom/amazon/identity/auth/device/gx;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1250
    :catch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_3
    const-string v3, "Parsing actorCookies Response for id="

    .line 1255
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v0, "actor_cookies"

    .line 1257
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 1259
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/gx;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1263
    :catch_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    :goto_1
    new-instance p2, Lcom/amazon/identity/auth/device/gx$b;

    invoke-direct {p2, v2, p1, v1}, Lcom/amazon/identity/auth/device/gx$b;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object p2

    :catch_2
    const/4 v1, 0x0

    .line 1235
    :catch_3
    new-instance p1, Lcom/amazon/identity/auth/device/gx$b;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p2, v0, v1}, Lcom/amazon/identity/auth/device/gx$b;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method

.method private b(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "MAPCookieManager"

    if-eqz p3, :cond_1

    .line 586
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Expected url, but did not receive one from getActorCookies request. Cannot proceed."

    .line 589
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array p2, v0, [Ljava/lang/String;

    const-string p3, "fetchActorCookiesFromServerFailure:MissingExpectedResponseUrl"

    .line 590
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 591
    new-instance p2, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->SERVER_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v0

    invoke-static {p3, p1, v0, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 600
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "Expected cookies, but did not receive them from getActorCookies request"

    .line 603
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array p2, v0, [Ljava/lang/String;

    const-string p3, "fetchActorCookiesFromServerFailure:MissingExpectedCookies"

    .line 604
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 605
    new-instance p2, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->SERVER_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 606
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v0

    .line 605
    invoke-static {p3, p1, v0, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1304
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1307
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1310
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1317
    invoke-direct {p0, p1, v3, v2}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static e(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 693
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 698
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/token/MAPCookie;

    .line 700
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 703
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MAPCookieManager"

    const-string v1, "The sid value inside the returned cookies is null or a empty string. There\'s a bug on server side!"

    .line 705
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EmptySidCookieValueInsideAuthCookiesFromServer"

    .line 707
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-object p0

    :cond_3
    return-object v1
.end method

.method private f(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 881
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 888
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/token/MAPCookie;

    .line 890
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    .line 891
    iget-object v3, p0, Lcom/amazon/identity/auth/device/gx;->F:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "MAPCookieManager"

    const/4 v6, 0x1

    if-nez v2, :cond_2

    new-array p1, v6, [Ljava/lang/Object;

    .line 894
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Cookie: %s has null expiry date."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 897
    :cond_2
    sget-wide v7, Lcom/amazon/identity/auth/device/gx;->pb:J

    add-long/2addr v3, v7

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v2, v3, v7

    if-ltz v2, :cond_1

    new-array p1, v6, [Ljava/lang/Object;

    .line 899
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Cookie: %s near expiry, refreshing"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_3
    :goto_0
    return v0
.end method

.method public static g(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;)V"
        }
    .end annotation

    .line 1203
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1208
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/token/MAPCookie;

    .line 1210
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "MAPCookieManager"

    .line 1212
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1213
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx;->D:Lcom/amazon/identity/auth/device/fz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/fz;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    .line 137
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v10, Lcom/amazon/identity/auth/device/gx;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MAPCookieManager"

    const-string v1, "Account not registered"

    .line 139
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 144
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v2

    const-string v3, "Given account is not registered or directedId is empty"

    const-string v4, "Given Account is currently not registered."

    .line 142
    invoke-static {v1, v3, v2, v4}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    move-object/from16 v13, p3

    goto :goto_1

    .line 148
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v13, v1

    :goto_1
    const-string v1, "com.amazon.identity.auth.device.api.cookiekeys.assoc_handle"

    .line 150
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 151
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Assoc handle for cookies is: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "MAPCookieManager"

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v15, 0x0

    const-string v1, "com.amazon.identity.auth.device.internal.cookiekeys.options.ignorefresh"

    .line 154
    invoke-virtual {v13, v1, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1724
    invoke-direct {v10, v0, v11, v14}, Lcom/amazon/identity/auth/device/gx;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1727
    invoke-static {v1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1729
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    :cond_3
    invoke-direct {v10, v1, v0, v11}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v1, "com.amazon.identity.auth.device.api.cookiekeys.options.SignInUrl"

    .line 162
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    .line 165
    new-instance v8, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, v10, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v2, "token_storage"

    invoke-direct {v8, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate-cookies"

    .line 2596
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-virtual {v8, v7}, Lcom/amazon/identity/auth/device/gm;->ct(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InvalidateCookiesKey and value: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MAPCookieManager"

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v2, "com.amazon.identity.auth.device.api.cookiekeys.options.forcerefresh"

    .line 173
    invoke-virtual {v13, v2, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v9, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x1

    :goto_3
    const-string v2, "com.amazon.identity.auth.device.api.cookiekeys.options.SignInUrl"

    .line 175
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "MAPCookieManager"

    .line 177
    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 178
    invoke-direct {v10, v0, v11, v14, v5}, Lcom/amazon/identity/auth/device/gx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/identity/auth/device/gx$a;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/gx$a;->getCookies()Ljava/util/List;

    move-result-object v4

    .line 184
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/gx$a;->fR()Z

    move-result v2

    .line 185
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "returnCachedCookies is "

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "MAPCookieManager"

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 186
    invoke-direct {v10, v4}, Lcom/amazon/identity/auth/device/gx;->f(Ljava/util/List;)Z

    move-result v3

    .line 190
    invoke-static {v4}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_7

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    const-string v1, "MAPCookieManager"

    .line 192
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 193
    invoke-direct {v10, v4, v0, v11}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 196
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "Fetching cookies from server due to "

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v10, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v12, v15}, Lcom/amazon/identity/auth/device/ej;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", for domain "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " and associate handle "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " with options forceRefresh="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " and with isCookiesInvalid="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " haveCookiesExpired="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " returnCachedCookies="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MAPCookieManager"

    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.amazon.identity.auth.device.api.cookiekeys.options.forcerefresh"

    const/4 v3, 0x0

    .line 201
    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    new-array v2, v3, [Ljava/lang/String;

    const-string v6, "getCookiesFromServerWithForceRefresh"

    .line 203
    invoke-static {v6, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_8
    if-eqz v1, :cond_9

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "getCookiesFromServerWithCookiesInvalidated"

    .line 208
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 214
    :cond_9
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_a

    .line 216
    iget-object v1, v10, Lcom/amazon/identity/auth/device/gx;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-virtual {v1, v0, v15, v12}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_4

    :cond_a
    move-object v6, v15

    :goto_4
    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v17, v4

    move-object v4, v6

    move/from16 v18, v5

    move-object/from16 v5, p2

    move-object/from16 v19, v6

    move-object v6, v14

    move-object/from16 v20, v7

    move-object/from16 v7, v16

    move-object/from16 v21, v8

    move-object/from16 v8, v17

    move v15, v9

    move-object/from16 v9, p4

    .line 221
    invoke-virtual/range {v1 .. v9}, Lcom/amazon/identity/auth/device/gx;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/gx$b;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$b;->fS()Ljava/util/List;

    move-result-object v7

    .line 231
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$b;->fU()Ljava/lang/String;

    move-result-object v9

    .line 233
    invoke-direct {v10, v7, v9, v15}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/lang/String;Z)V

    const-string v1, "fetchCookiesFromServerSuccess"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 235
    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 237
    invoke-static {v7}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "MAPCookieManager"

    .line 239
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 240
    iget-object v8, v10, Lcom/amazon/identity/auth/device/gx;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v8
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "MAPCookieManager"

    .line 245
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move/from16 v5, v18

    move-object v6, v7

    .line 247
    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_5

    .line 251
    :cond_b
    iget-object v1, v10, Lcom/amazon/identity/auth/device/gx;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v12}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, v19

    .line 252
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "MAPCookieManager"

    .line 254
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move/from16 v5, v18

    move-object v6, v7

    .line 255
    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    :goto_5
    move-object v13, v8

    move-object v14, v9

    goto :goto_6

    :cond_c
    const-string v1, "MAPCookieManager"

    .line 259
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v1, "MAP_CID_ATNR_Changed_CookiesExchange"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 260
    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 261
    invoke-direct {v10, v0, v11, v14, v2}, Lcom/amazon/identity/auth/device/gx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/identity/auth/device/gx$a;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$a;->fR()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "MAP_CID_ATNR_Changed_CookiesExchange_ReturnCached"

    new-array v4, v2, [Ljava/lang/String;

    .line 268
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$a;->getCookies()Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    goto :goto_5

    :cond_d
    const-string v2, "MAP_CID_ATNR_Changed_CookiesExchange_Refresh"

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/String;

    .line 273
    invoke-static {v2, v5}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$a;->getCookies()Ljava/util/List;

    move-result-object v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object v6, v14

    move-object/from16 v7, v16

    move-object v13, v8

    move-object/from16 v8, v17

    move-object v14, v9

    move-object/from16 v9, p4

    .line 275
    :try_start_2
    invoke-virtual/range {v1 .. v9}, Lcom/amazon/identity/auth/device/gx;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/gx$b;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$b;->fS()Ljava/util/List;

    move-result-object v2

    .line 284
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$b;->fU()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v2, v1, v15}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/lang/String;Z)V

    move-object v7, v2

    .line 288
    :goto_6
    monitor-exit v13

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v13, v8

    :goto_7
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_e
    move-object v14, v9

    :goto_8
    move-object/from16 v2, v20

    move-object/from16 v1, v21

    .line 291
    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/gm;->cv(Ljava/lang/String;)Z

    .line 292
    invoke-direct {v10, v7, v0, v11, v14}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_3
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 296
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->bE()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Get error when fetchAuthCookies: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAPCookieManager"

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "fetchCookiesFromServerFailure:OAuthTokenManagerException"

    .line 297
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 299
    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v2

    .line 300
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-static {v2, v3, v0}, Lcom/amazon/identity/auth/device/hc;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/fl$a;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    .line 361
    invoke-direct/range {p0 .. p2}, Lcom/amazon/identity/auth/device/gx;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    move-object/from16 v11, p4

    goto :goto_0

    .line 363
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v11, v1

    :goto_0
    const-string v1, "com.amazon.identity.auth.device.api.cookiekeys.assoc_handle"

    .line 365
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 366
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Assoc handle for actor cookies is: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "MAPCookieManager"

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v1, "com.amazon.identity.auth.device.api.cookiekeys.options.SignInUrl"

    .line 369
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    .line 371
    new-instance v8, Lcom/amazon/identity/auth/device/gm;

    iget-object v1, v12, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v2, "token_storage"

    invoke-direct {v8, v1, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate-cookies"

    .line 2603
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 373
    invoke-virtual {v8, v7}, Lcom/amazon/identity/auth/device/gm;->ct(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InvalidateCookiesKey and value: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] for getCookiesForActor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MAPCookieManager"

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string v1, "com.amazon.identity.auth.device.api.cookiekeys.options.forcerefresh"

    .line 377
    invoke-virtual {v11, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_2

    if-nez v9, :cond_2

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    const-string v1, "com.amazon.identity.auth.device.api.cookiekeys.options.SignInUrl"

    .line 379
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "MAPCookieManager"

    .line 382
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v12, v0, v14, v10, v3}, Lcom/amazon/identity/auth/device/gx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/identity/auth/device/gx$a;

    move-result-object v17

    .line 386
    invoke-virtual/range {v17 .. v17}, Lcom/amazon/identity/auth/device/gx$a;->getCookies()Ljava/util/List;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 p4, v7

    move-object v7, v2

    move-object/from16 v2, p1

    move/from16 v18, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v19, v9

    const/4 v9, 0x0

    move-object v5, v10

    move v9, v6

    move/from16 v6, v18

    .line 389
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/gx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/identity/auth/device/gx$a;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$a;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 392
    invoke-virtual/range {v17 .. v17}, Lcom/amazon/identity/auth/device/gx$a;->fR()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$a;->fR()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 393
    :goto_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "areBothCookiesValid from cache responses: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MAPCookieManager"

    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    .line 399
    invoke-static {v7, v2}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "MAPCookieManager"

    .line 400
    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 401
    invoke-direct {v12, v1, v0, v14}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 405
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Fetching actor cookies from server due to "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v15, v3}, Lcom/amazon/identity/auth/device/ej;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", for domain "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and associate handle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with options forceRefresh="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v18

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " and with isCookiesInvalid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , should return from cache: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MAPCookieManager"

    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.amazon.identity.auth.device.api.cookiekeys.options.forcerefresh"

    const/4 v5, 0x0

    .line 409
    invoke-virtual {v11, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "getActorCookiesFromServerWithForceRefresh"

    .line 411
    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5
    if-eqz v9, :cond_6

    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "getActorCookiesFromServerWithCookiesInvalidated"

    .line 416
    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 422
    :cond_6
    invoke-direct {v12, v7, v2, v14, v10}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 426
    :try_start_0
    iget-object v1, v12, Lcom/amazon/identity/auth/device/gx;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v15}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v7

    .line 428
    iget-object v1, v12, Lcom/amazon/identity/auth/device/gx;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    invoke-virtual {v1, v0, v13, v15}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->d(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v18, v4

    move-object v4, v7

    const/16 v20, 0x0

    move-object/from16 v5, p2

    move/from16 v21, v6

    move-object/from16 v6, v18

    move-object/from16 v22, p4

    move-object v14, v7

    move-object/from16 v7, p3

    move-object/from16 v23, v8

    move-object v8, v10

    move-object/from16 p4, v14

    move/from16 v14, v19

    const/4 v13, 0x0

    move-object/from16 v9, v16

    move-object/from16 v19, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v11

    move-object/from16 v11, p5

    .line 432
    invoke-virtual/range {v1 .. v11}, Lcom/amazon/identity/auth/device/gx;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/gx$b;

    move-result-object v1

    .line 444
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$b;->fS()Ljava/util/List;

    move-result-object v7

    .line 445
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$b;->fT()Ljava/util/List;

    move-result-object v8

    .line 446
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$b;->fU()Ljava/lang/String;

    move-result-object v11

    .line 448
    invoke-direct {v12, v8, v11, v14}, Lcom/amazon/identity/auth/device/gx;->b(Ljava/util/List;Ljava/lang/String;Z)V

    const-string v1, "fetchActorCookiesFromServerSuccess"

    new-array v2, v13, [Ljava/lang/String;

    .line 450
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 453
    invoke-static {v8}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v7}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "MAPCookieManager"

    .line 455
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 457
    iget-object v10, v12, Lcom/amazon/identity/auth/device/gx;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v10
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :try_start_1
    iget-object v1, v12, Lcom/amazon/identity/auth/device/gx;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    move-object/from16 v9, p2

    invoke-virtual {v1, v0, v9, v15}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->d(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v6

    .line 463
    iget-object v1, v12, Lcom/amazon/identity/auth/device/gx;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v15}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, v18

    .line 467
    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v1, p4

    .line 468
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "MAPCookieManager"

    const-string v2, "Actor or account refresh token is not changed, store it."

    .line 470
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, v19

    move/from16 v5, v21

    move-object v6, v7

    .line 471
    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 2641
    iget-object v1, v12, Lcom/amazon/identity/auth/device/gx;->D:Lcom/amazon/identity/auth/device/fz;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v19

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/fz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v13, p3

    move-object/from16 v16, v10

    move-object v15, v11

    goto/16 :goto_4

    :cond_7
    const-string v1, "MAPCookieManager"

    const-string v2, "Actor or account refresh token has been changed, try using the cached cookies"

    .line 478
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MAP_CID_PID_ATNR_Changed_CookiesExchange"

    new-array v2, v13, [Ljava/lang/String;

    .line 479
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v8, p3

    move-object/from16 v7, v19

    .line 481
    invoke-virtual {v12, v0, v8, v7, v13}, Lcom/amazon/identity/auth/device/gx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/identity/auth/device/gx$a;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v20, v5

    move-object v5, v7

    move-object/from16 v21, v6

    move/from16 v6, v19

    .line 488
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/gx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/identity/auth/device/gx$a;

    move-result-object v1

    .line 496
    invoke-virtual/range {v18 .. v18}, Lcom/amazon/identity/auth/device/gx$a;->fR()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$a;->fR()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "MAP_CID_PID_ATNR_Changed_CookiesExchange_ReturnCached"

    new-array v3, v13, [Ljava/lang/String;

    .line 498
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "MAPCookieManager"

    const-string v3, "Returning cached cookies refreshed by other threads"

    .line 499
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {v18 .. v18}, Lcom/amazon/identity/auth/device/gx$a;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 501
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$a;->getCookies()Ljava/util/List;

    move-result-object v1

    move-object v7, v2

    move-object v13, v8

    move-object/from16 v16, v10

    move-object v15, v11

    move-object v8, v1

    goto :goto_4

    :cond_8
    const-string v2, "MAP_CID_PID_ATNR_Changed_CookiesExchange_Refresh"

    new-array v3, v13, [Ljava/lang/String;

    .line 505
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "MAPCookieManager"

    const-string v3, "Cached cookies is invalid, refresh it."

    .line 506
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {v18 .. v18}, Lcom/amazon/identity/auth/device/gx$a;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 509
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$a;->getCookies()Ljava/util/List;

    move-result-object v1

    .line 507
    invoke-direct {v12, v2, v1, v8, v7}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move-object/from16 v4, v20

    move-object/from16 v5, p2

    move-object/from16 v6, v21

    move-object v9, v7

    move-object/from16 v7, p3

    move-object v13, v8

    move-object v8, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v18

    move-object v15, v11

    move-object/from16 v11, p5

    .line 514
    :try_start_2
    invoke-virtual/range {v1 .. v11}, Lcom/amazon/identity/auth/device/gx;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/gx$b;

    move-result-object v1

    .line 525
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$b;->fT()Ljava/util/List;

    move-result-object v2

    .line 526
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$b;->fU()Ljava/lang/String;

    move-result-object v3

    .line 525
    invoke-direct {v12, v2, v3, v14}, Lcom/amazon/identity/auth/device/gx;->b(Ljava/util/List;Ljava/lang/String;Z)V

    .line 528
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$b;->fS()Ljava/util/List;

    move-result-object v2

    .line 529
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/gx$b;->fT()Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    move-object v7, v2

    .line 532
    :goto_4
    monitor-exit v16

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v16, v10

    :goto_5
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_9
    move-object/from16 v13, p3

    move-object v15, v11

    if-eqz v14, :cond_a

    :goto_6
    move-object/from16 v2, v22

    move-object/from16 v1, v23

    .line 542
    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/gm;->cv(Ljava/lang/String;)Z

    .line 543
    invoke-static {v7, v8}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 544
    invoke-direct {v12, v1, v0, v13, v15}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 539
    :cond_a
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v2, "Account cookies or actor cookies from server is empty."

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 540
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v3

    const-string v4, "Account cookies or actor cookies from server is empty."

    .line 539
    invoke-static {v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v0
    :try_end_3
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 548
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->bE()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Get error when fetchAuthCookies: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAPCookieManager"

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "fetchCookiesFromServerFailure:OAuthTokenManagerException"

    .line 549
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 551
    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v2

    .line 552
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 551
    invoke-static {v2, v3, v0}, Lcom/amazon/identity/auth/device/hc;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/fl$a;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v1
.end method

.method a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/gx$b;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/gx$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p6

    const-string v1, "Invalid Parameter: Domain"

    .line 973
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v11, 0x1

    xor-int/2addr v2, v11

    .line 974
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Fetching cookies... Is is for actor : "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "MAPCookieManager"

    invoke-static {v12, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "fetchActorCookiesFromServer"

    goto :goto_0

    :cond_0
    const-string v2, "fetchCookiesFromServer"

    .line 980
    :goto_0
    invoke-static {v12, v2}, Lcom/amazon/identity/auth/device/mn;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v2

    move-object v15, v2

    move-object/from16 v2, p1

    .line 982
    invoke-direct {v9, v2, v10, v0}, Lcom/amazon/identity/auth/device/gx;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using CookieExchangeToken URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    .line 996
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    move-result-object v4

    if-nez p9, :cond_1

    .line 1008
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p9

    .line 1016
    :goto_1
    invoke-virtual {v9, v5, v0, v10}, Lcom/amazon/identity/auth/device/gx;->b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v1, v9, Lcom/amazon/identity/auth/device/gx;->hM:Lcom/amazon/identity/auth/device/iv;

    iget-object v2, v9, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    move-object/from16 v3, v16

    move-object/from16 v6, p2

    move-object/from16 v7, p10

    .line 1018
    invoke-virtual/range {v1 .. v7}, Lcom/amazon/identity/auth/device/iv;->a(Landroid/content/Context;Ljava/net/URL;Lcom/amazon/identity/auth/device/ji$b;Ljava/util/List;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object v13

    .line 1026
    invoke-static {v13}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result v1

    const-string v2, "Headers received update request to exchange token endpoint"

    .line 1027
    invoke-static {v12, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-static {v13}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1030
    invoke-virtual {v15}, Lcom/amazon/identity/auth/device/ms;->stop()V

    const-string v3, "Response parsed for cookie request to exchange token endpoint"

    .line 1032
    invoke-static {v12, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v3, v9, Lcom/amazon/identity/auth/device/gx;->hM:Lcom/amazon/identity/auth/device/iv;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/iv;->a(Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "Parsing getCookies or getCookiesForActor success response"

    .line 1086
    invoke-static {v12, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DirectedId = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ActorId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1088
    invoke-direct {v9, v0, v2}, Lcom/amazon/identity/auth/device/gx;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/gx$b;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_3

    .line 1122
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    move-object/from16 v3, p4

    :try_start_1
    const-string v4, "Error Response: %s"

    new-array v5, v11, [Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 1035
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    const-string v6, "Null Json Response"

    :goto_3
    aput-object v6, v5, v14

    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    new-instance v4, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-direct {v4}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;-><init>()V

    invoke-virtual {v4, v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->g(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1049
    iget-object v4, v9, Lcom/amazon/identity/auth/device/gx;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    .line 1053
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v5, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->OauthRefreshToCookieExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    move-object/from16 p5, v4

    move-object/from16 p6, p2

    move-object/from16 p7, p4

    move-object/from16 p8, v2

    move-object/from16 p9, v1

    move-object/from16 p10, v5

    .line 1049
    invoke-virtual/range {p5 .. p10}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Ljava/lang/Integer;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    move-result-object v0

    const-string v1, "Received Error code %s from the server. Message: %s. Detail: %s. Index: %s."

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 1057
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    .line 1058
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x2

    .line 1059
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cG()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 1060
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cH()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1056
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1064
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    .line 1066
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->fV()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->getRegistrationError()Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v4

    .line 1064
    invoke-static {v3, v1, v4, v1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1068
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Panda error index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-static {v12}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->eE()Lcom/amazon/identity/auth/device/fl;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "com.amazon.identity.mobi.account.recover.context"

    .line 1073
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/fl;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1080
    :cond_6
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->fW()Z

    move-result v0

    const-string v2, "com.amazon.map.error.shouldClearAuthCookies"

    .line 1081
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1083
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v0

    .line 1041
    :cond_7
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Received unrecognized error from the server with status code %d"

    new-array v3, v11, [Ljava/lang/Object;

    .line 1042
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v14

    .line 1041
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->SERVER_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1046
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v3

    .line 1044
    invoke-static {v2, v0, v3, v0}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v1

    .line 989
    :cond_8
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 991
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v3

    .line 989
    invoke-static {v2, v1, v3, v1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :goto_4
    :try_start_2
    const-string v1, "Got JSONException while parsing response "

    .line 1108
    invoke-static {v12, v1, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "fetchCookiesFromServerFailure:JSONException"

    new-array v2, v14, [Ljava/lang/String;

    .line 1110
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1113
    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "Received a JSONException while parsing server response with message: %s"

    new-array v4, v11, [Ljava/lang/Object;

    .line 1114
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1115
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v4

    .line 1116
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1113
    invoke-static {v2, v3, v4, v0}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v1

    :goto_5
    const-string v1, "Got IOException when fetching Cookie from server "

    .line 1092
    invoke-static {v12, v1, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "fetchCookiesFromServerFailure:IOException"

    new-array v2, v14, [Ljava/lang/String;

    .line 1093
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "NetworkError1:MAPCookieManager"

    new-array v2, v14, [Ljava/lang/String;

    .line 1097
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1101
    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "A network error occurred: %s"

    new-array v4, v11, [Ljava/lang/Object;

    .line 1102
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1103
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v4

    .line 1104
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-static {v2, v3, v4, v0}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    if-eqz v13, :cond_9

    .line 1122
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1124
    :cond_9
    throw v0
.end method

.method a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/gx$b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/gx$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 948
    invoke-virtual/range {v0 .. v10}, Lcom/amazon/identity/auth/device/gx;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/gx$b;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    .line 1460
    invoke-static {}, Lcom/amazon/identity/auth/device/ji;->gV()Lcom/amazon/identity/auth/device/ji$b;

    move-result-object v0

    const-string/jumbo v1, "requested_token_type"

    const-string v2, "auth_cookies"

    .line 4528
    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/ji$b;->ar(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    .line 4529
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ji$b;->aJ(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ji$b;

    const-string v1, "domain"

    .line 5502
    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/ji$b;->ar(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p7, p1, v1

    const-string v1, "Use associate handle %s to exchange cookies"

    .line 1465
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MAPCookieManager"

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "openid.assoc_handle"

    .line 5507
    invoke-virtual {v0, p1, p7}, Lcom/amazon/identity/auth/device/ji$b;->ar(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    .line 1471
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1473
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Requesting all cookies"

    .line 1476
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    invoke-direct {p0, p3, v0}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ji$b;)V

    goto :goto_0

    :cond_1
    const-string p1, "Requesting just non-auth cookies"

    .line 1482
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1487
    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/amazon/identity/auth/device/gx;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    invoke-direct {p0, p3, v0}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ji$b;)V

    const-string p1, "actor_refresh_token"

    .line 5523
    invoke-virtual {v0, p1, p5}, Lcom/amazon/identity/auth/device/ji$b;->ar(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    .line 1492
    :goto_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string/jumbo p1, "url"

    .line 6512
    invoke-virtual {v0, p1, p6}, Lcom/amazon/identity/auth/device/ji$b;->ar(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    :cond_3
    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1341
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 656
    invoke-static {p1}, Lcom/amazon/identity/auth/device/gx;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 659
    invoke-static {p1}, Lcom/amazon/identity/auth/device/gx;->g(Ljava/util/List;)V

    .line 660
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gx;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v1, "com.amazon.dcp.sso.token.cookie.sid"

    invoke-virtual {p1, p2, v1}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "MAPCookieManager"

    .line 664
    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 665
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gx;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p1, p2, v1, v0}, Lcom/amazon/identity/auth/device/gc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/identity/auth/device/gx$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    .line 848
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/gx;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gx;->D:Lcom/amazon/identity/auth/device/fz;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/fz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    .line 852
    new-instance p3, Lcom/amazon/identity/auth/device/gx$a;

    invoke-direct {p3, p1, p2}, Lcom/amazon/identity/auth/device/gx$a;-><init>(Ljava/util/List;Z)V

    return-object p3

    .line 854
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gx;->f(Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p2, 0x1

    .line 856
    :cond_1
    new-instance p3, Lcom/amazon/identity/auth/device/gx$a;

    invoke-direct {p3, p1, p2}, Lcom/amazon/identity/auth/device/gx$a;-><init>(Ljava/util/List;Z)V

    return-object p3
.end method

.method public b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MAPCookieManager"

    if-nez p1, :cond_1

    const-string p1, "The currentCookies is null. Cannot add sidCookie!"

    .line 1146
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1150
    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gx;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v2, "com.amazon.dcp.sso.token.cookie.sid"

    invoke-virtual {v1, p2, v2}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 1154
    invoke-static {p1}, Lcom/amazon/identity/auth/device/gx;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Before we add the sid cookie to the cookies that will be sent out, there\'s already a sid cookie inside; this is a bug since we should have removed the sid cookie before we saved the cookies."

    .line 1158
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "SidCookieExistsInCookiesBeforeAddingOne"

    .line 1160
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1161
    invoke-static {p1}, Lcom/amazon/identity/auth/device/gx;->g(Ljava/util/List;)V

    .line 1165
    :cond_2
    invoke-static {p3}, Lcom/amazon/identity/auth/device/ho;->cY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1167
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Add the sid cookie to cookies that will be sent out. The domain we use to create the sid cookies is "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1170
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/gx;->U(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/token/MAPCookie;

    move-result-object p2

    .line 1171
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1175
    :cond_3
    invoke-static {p1}, Lcom/amazon/identity/auth/device/gx;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 1176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "There\'s a sid cookie in the cookies that will be sent out, but we didn\'t update the sid; this is a bug since we should have updated the sid and removed the sid cookie before we saved the cookies."

    .line 1178
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/String;

    const-string p2, "SidCookieExistsButHaveNotBeenSavedAsAToken"

    .line 1181
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/identity/auth/device/gx$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
        }
    .end annotation

    .line 817
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 823
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gx;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 826
    new-instance p3, Lcom/amazon/identity/auth/device/gx$a;

    invoke-direct {p3, p1, p2}, Lcom/amazon/identity/auth/device/gx$a;-><init>(Ljava/util/List;Z)V

    return-object p3

    .line 828
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gx;->f(Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p2, 0x1

    .line 830
    :cond_1
    new-instance p3, Lcom/amazon/identity/auth/device/gx$a;

    invoke-direct {p3, p1, p2}, Lcom/amazon/identity/auth/device/gx$a;-><init>(Ljava/util/List;Z)V

    return-object p3

    .line 820
    :cond_2
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 821
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p3

    const-string p4, "directId in getValidCookieCacheResponseFromDataStore is null!"

    invoke-static {p2, p4, p3, p4}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw p1
.end method

.method public cI(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 740
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/gx;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 741
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 745
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gx;->f(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p1
.end method
