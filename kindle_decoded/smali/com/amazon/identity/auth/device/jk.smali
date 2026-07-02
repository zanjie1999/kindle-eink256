.class public final Lcom/amazon/identity/auth/device/jk;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.jk"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/token/MAPCookie;
    .locals 14

    move-object/from16 v6, p2

    .line 2034
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v7, 0x1

    .line 2035
    invoke-virtual {v0, v7}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 2037
    invoke-static {p0}, Lcom/amazon/identity/auth/device/jl;->aK(Landroid/content/Context;)V

    const-string v1, "."

    .line 2040
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2042
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "www"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v6

    .line 2045
    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2046
    sget-object v0, Lcom/amazon/identity/auth/device/jk;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Extracting cookies from CookieManager for domain="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v0, v10

    aput-object p1, v0, v7

    const-string v1, "Extracting cookie list for domain: %s, id: = %s"

    .line 1077
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2096
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_2

    .line 2102
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v0, ";"

    invoke-direct {v12, v8, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2108
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 2121
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2122
    array-length v2, v1

    if-ne v2, v9, :cond_1

    .line 2124
    aget-object v2, v1, v10

    .line 2125
    aget-object v3, v1, v7

    .line 2126
    new-instance v13, Lcom/amazon/identity/auth/device/token/MAPCookie;

    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/token/MAPCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2130
    :cond_1
    sget-object v1, Lcom/amazon/identity/auth/device/jk;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected cookie format"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v0, v1, v10

    aput-object v8, v1, v7

    const-string v0, "Unexpected cookie format. cookiePair=%s cookies=%s"

    .line 2131
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v6, v0, v10

    const-string v1, "No cookies in Cookie manager for %s"

    .line 2138
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/token/MAPCookie;

    .line 161
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p3

    .line 162
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/token/MAPCookie;)V
    .locals 2

    .line 55
    invoke-static {p0}, Lcom/amazon/identity/auth/device/jl;->aK(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 59
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/token/MAPCookie;->fQ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p0}, Lcom/amazon/identity/auth/device/jl;->aK(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v3, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 272
    invoke-static/range {v0 .. v6}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    if-eqz p6, :cond_0

    .line 207
    :try_start_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hx;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hx;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v3, p6

    .line 221
    new-instance p6, Lcom/amazon/identity/auth/device/token/MAPCookie;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p6

    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/amazon/identity/auth/device/token/MAPCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 231
    invoke-static {p0, p1, p6}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/token/MAPCookie;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "MalformedURLException"

    .line 216
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "failedParsingCookieDomain"

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 217
    sget-object p1, Lcom/amazon/identity/auth/device/jk;->TAG:Ljava/lang/String;

    const-string p2, "Could not parse cookie domain from malformed URL."

    invoke-static {p1, p2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static dI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 236
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 240
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    .line 243
    sget-object p0, Lcom/amazon/identity/auth/device/jk;->TAG:Ljava/lang/String;

    const-string v0, "error happens when parsing the url string"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 246
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    .line 248
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const-string p0, "%s://%s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
