.class public abstract Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;
.super Ljava/lang/Object;
.source "UpsellStoreURLBuilder.java"


# static fields
.field private static final CE_DECLINE_EP_PATH:Ljava/lang/String; = "/gp/digital/fiona/util/content-explorer/ceStatus.html/"

.field private static final CE_EP_PATH:Ljava/lang/String; = "/gp/kindle/kcp/external-service?"

.field private static final DEFAULT_PFM:Ljava/lang/String; = "ATVPDKIKX0DER"

.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field static final PFM_TO_XMAIN_COOKIE_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PRFM_TO_DOMAIN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static QUERY_HTTP_COOKIE_XFSN:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String;

.field private static final URL_PREFIX:Ljava/lang/String; = "www"

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder$1;

    invoke-direct {v0}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->PRFM_TO_DOMAIN:Ljava/util/Map;

    .line 58
    new-instance v0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder$2;

    invoke-direct {v0}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->PFM_TO_XMAIN_COOKIE_NAME:Ljava/util/Map;

    const-string/jumbo v0, "x-fsn"

    .line 93
    sput-object v0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->QUERY_HTTP_COOKIE_XFSN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCEDeclineCampaignEndPoint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 115
    invoke-static {p1}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_librarybanner_no_referral_tag:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/gp/digital/fiona/util/content-explorer/ceStatus.html/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCEResourcesEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 101
    invoke-static {p0}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/gp/kindle/kcp/external-service?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCookieDomainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 106
    invoke-static {p0}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 128
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->PRFM_TO_DOMAIN:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    .line 130
    sget-object p0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    const-string/jumbo v1, "unknown pfm, using fallback"

    invoke-static {p0, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    sget-object p0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->PRFM_TO_DOMAIN:Ljava/util/Map;

    const-string v0, "ATVPDKIKX0DER"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method private static getXMainCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 181
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string v5, "XMain pfm  and maintoken sent : %s %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    invoke-static {p0}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getCookieDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    const-string v5, "XMain cookieKey : %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 188
    sget-object p1, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->TAG:Ljava/lang/String;

    const-string v0, "XMain cookieValues : %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    new-instance p1, Ljava/util/StringTokenizer;

    const-string v0, ";"

    invoke-direct {p1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance p0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, "="

    invoke-direct {p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 195
    sget-object p1, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    const-string v1, "XMain Token JSON is invalid"

    invoke-static {p1, v0, v1, p0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static sendStoreHttpRequest(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {p4, p3}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getXMainCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 157
    :cond_1
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const-string v3, "XMain Cookie Value sent : %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 159
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    .line 160
    new-instance v2, Lorg/apache/http/impl/cookie/BasicClientCookie;

    sget-object v3, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->QUERY_HTTP_COOKIE_XFSN:Ljava/lang/String;

    invoke-direct {v2, v3, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2, p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    const-string p2, "/"

    .line 162
    invoke-virtual {v2, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 163
    invoke-interface {v1, v2}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 164
    new-instance v2, Lorg/apache/http/impl/cookie/BasicClientCookie;

    sget-object v3, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->PFM_TO_XMAIN_COOKIE_NAME:Ljava/util/Map;

    invoke-interface {v3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {v2, p4, p3}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2, p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 167
    invoke-interface {v1, v2}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 168
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 169
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    const-string p0, "http.agent"

    .line 170
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "User-Agent"

    invoke-virtual {p1, p2, p0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
