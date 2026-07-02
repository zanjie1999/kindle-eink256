.class public Lcom/amazon/kcp/store/CookieJar;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field private static final COOKIE_DELIMITER:Ljava/lang/String; = ","

.field private static final DEFAULT_HTTPS_PORT:I = 0x1bb

.field private static final DEFAULT_HTTP_PORT:I = 0x50

.field private static final JP_DOMAIN:Ljava/lang/String; = "https://www.amazon.co.jp"

.field private static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field private static final PATTERN_RFC1036:Ljava/lang/String; = "EEEE, dd-MMM-yy HH:mm:ss zzz"

.field private static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"

.field private static final PATTERN_RFC1123_NO_COMMA:Ljava/lang/String; = "EEE dd-MMM-yyyy HH:mm:ss zzz"

.field private static final RFC2109_DATE_REGEX:Ljava/lang/String; = "expires=(\"?[a-zA-Z]{3}), ([0-9]{2}-[a-zA-Z]{3}-[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} [a-zA-Z]{3}\"?)"

.field private static final TAG:Ljava/lang/String;

.field protected static URL_PREFIX:Ljava/lang/String;

.field private static URL_REGEX:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private forceUSDomainIfPossible:Z

.field private final secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

.field private final site:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kcp/store/CookieJar;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/CookieJar;->TAG:Ljava/lang/String;

    const-string v0, "https?://www\\..*"

    .line 43
    sput-object v0, Lcom/amazon/kcp/store/CookieJar;->URL_REGEX:Ljava/lang/String;

    const-string v0, "https://www"

    .line 45
    sput-object v0, Lcom/amazon/kcp/store/CookieJar;->URL_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/persistence/ISecureStorage;Landroid/content/Context;)V
    .locals 6

    .line 250
    sget-object v4, Lcom/amazon/kcp/store/CookieJar;->URL_REGEX:Ljava/lang/String;

    sget-object v5, Lcom/amazon/kcp/store/CookieJar;->URL_PREFIX:Ljava/lang/String;

    const-string v3, "amazon"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/store/CookieJar;-><init>(Lcom/amazon/kindle/persistence/ISecureStorage;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/persistence/ISecureStorage;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/amazon/kcp/store/CookieJar;->forceUSDomainIfPossible:Z

    if-eqz p1, :cond_1

    .line 267
    iput-object p1, p0, Lcom/amazon/kcp/store/CookieJar;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    if-eqz p2, :cond_0

    .line 272
    iput-object p2, p0, Lcom/amazon/kcp/store/CookieJar;->context:Landroid/content/Context;

    .line 273
    iput-object p3, p0, Lcom/amazon/kcp/store/CookieJar;->site:Ljava/lang/String;

    .line 274
    sput-object p4, Lcom/amazon/kcp/store/CookieJar;->URL_REGEX:Ljava/lang/String;

    .line 275
    sput-object p5, Lcom/amazon/kcp/store/CookieJar;->URL_PREFIX:Ljava/lang/String;

    return-void

    .line 270
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "secureStorage cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static areCookiesValid(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 159
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 166
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kcp/store/CookieJar;->parseCookies(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 177
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    .line 178
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0

    .line 160
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cookies cannot be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private areValidParameters(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 406
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 410
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/store/CookieJar;->areCookiesValid(Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x1

    :cond_2
    :goto_0
    return p1

    .line 407
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cookiesName cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private changeCookieUrlDomainToUS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/store/CookieJar;->site:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".*$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/store/CookieJar;->site:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 701
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private changeCookieValueDomainToUS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain=."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/store/CookieJar;->site:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[^;]*;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/store/CookieJar;->site:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".com;"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static parseCookies(Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v0, " with cookie: "

    const-string v1, ""

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 202
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "EEE dd-MMM-yyyy HH:mm:ss zzz"

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v5, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v6, "EEE MMM d HH:mm:ss yyyy"

    .line 206
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    .line 211
    new-instance v4, Lorg/apache/http/impl/cookie/RFC2109Spec;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    .line 212
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 219
    :try_start_0
    new-instance v6, Ljava/net/URL;

    const-string v7, "https"

    invoke-direct {v6, v7, v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    new-instance v7, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x1bb

    goto :goto_1

    :cond_1
    const/16 v9, 0x50

    :goto_1
    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v6, v10}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 229
    :try_start_1
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string v8, "Set-Cookie"

    invoke-direct {v6, v8, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/impl/cookie/RFC2109Spec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    .line 231
    sget-object v2, Lcom/amazon/kcp/store/CookieJar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse cookie for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v2, v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    throw p0

    :catch_1
    move-exception p0

    .line 221
    sget-object v2, Lcom/amazon/kcp/store/CookieJar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse url for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v2, v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    throw p0

    :cond_4
    return-object v2
.end method

.method static validateUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 647
    sget-object v0, Lcom/amazon/kcp/store/CookieJar;->URL_REGEX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 650
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/store/CookieJar;->URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public areCookiesValid(Ljava/lang/String;)Z
    .locals 1

    .line 628
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 632
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/CookieJar;->getCookies(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 633
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/store/CookieJar;->areCookiesValid(Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 629
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cookiesName cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearCookieManager()V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/amazon/kcp/store/CookieJar;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 587
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 593
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public getCookies(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 496
    iget-object v1, p0, Lcom/amazon/kcp/store/CookieJar;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 498
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 502
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 509
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 510
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 515
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 521
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v3

    .line 517
    sget-object v4, Lcom/amazon/kcp/store/CookieJar;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find cookie for url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", not adding cookie to set"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0

    :catch_1
    move-exception v1

    .line 504
    sget-object v2, Lcom/amazon/kcp/store/CookieJar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing json cookie string"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 504
    invoke-static {v2, p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 492
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cookiesName cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getParsedCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;
    .locals 3

    .line 564
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/CookieJar;->getParsedCookies(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 569
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 570
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getParsedCookies(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    const-string v0, "Error parsing cookies"

    const/4 v1, 0x0

    .line 543
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/CookieJar;->getCookies(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 544
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    invoke-static {p1}, Lcom/amazon/kcp/store/CookieJar;->parseCookies(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    .line 550
    :catch_0
    sget-object p1, Lcom/amazon/kcp/store/CookieJar;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :catch_1
    sget-object p1, Lcom/amazon/kcp/store/CookieJar;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public removeCookies(Ljava/lang/String;)V
    .locals 1

    .line 606
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/amazon/kcp/store/CookieJar;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    return-void

    .line 607
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cookiesName cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveCookiesToSecureStorage(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, ""

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/store/CookieJar;->areValidParameters(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 355
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 358
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/kcp/store/CookieJar;->validateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 365
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/CookieJar;->shouldForceUSDomain(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 366
    invoke-direct {p0, v3}, Lcom/amazon/kcp/store/CookieJar;->changeCookieUrlDomainToUS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-direct {p0, v2}, Lcom/amazon/kcp/store/CookieJar;->changeCookieValueDomainToUS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    .line 372
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    .line 377
    :catch_0
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 377
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    .line 383
    sget-object v4, Lcom/amazon/kcp/store/CookieJar;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error saving cookie"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-static {v4, v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    const-string p2, "store_cookies"

    .line 388
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 389
    iget-object p2, p0, Lcom/amazon/kcp/store/CookieJar;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.amazon.dcp.sso.token.cookie.xmain"

    invoke-interface {p2, v2, v0}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 393
    :cond_5
    iget-object p2, p0, Lcom/amazon/kcp/store/CookieJar;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public saveCookiesToSecureStorageAndJar(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/store/CookieJar;->areValidParameters(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/CookieJar;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 304
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 307
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/kcp/store/CookieJar;->validateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 313
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/CookieJar;->shouldForceUSDomain(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    invoke-direct {p0, v3}, Lcom/amazon/kcp/store/CookieJar;->changeCookieUrlDomainToUS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-direct {p0, v2}, Lcom/amazon/kcp/store/CookieJar;->changeCookieValueDomainToUS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {v0, v3, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v0, v3, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/store/CookieJar;->saveCookiesToSecureStorage(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public setUSDomainForcing(Z)Z
    .locals 3

    .line 682
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const-string v1, "store_cookies"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 683
    iput-boolean v2, p0, Lcom/amazon/kcp/store/CookieJar;->forceUSDomainIfPossible:Z

    .line 686
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/store/CookieJar;->getCookies(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/kcp/store/CookieJar;->saveCookiesToSecureStorageAndJar(Ljava/lang/String;Ljava/util/Map;)Z

    return v2

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 689
    iget-boolean p1, p0, Lcom/amazon/kcp/store/CookieJar;->forceUSDomainIfPossible:Z

    if-eqz p1, :cond_1

    .line 690
    iput-boolean v0, p0, Lcom/amazon/kcp/store/CookieJar;->forceUSDomainIfPossible:Z

    .line 691
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/store/CookieJar;->removeCookies(Ljava/lang/String;)V

    return v2

    :cond_1
    return v0
.end method

.method public shouldForceUSDomain(Ljava/lang/String;)Z
    .locals 1

    .line 663
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/store/CookieJar;->forceUSDomainIfPossible:Z

    if-eqz v0, :cond_0

    const-string v0, "store_cookies"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
