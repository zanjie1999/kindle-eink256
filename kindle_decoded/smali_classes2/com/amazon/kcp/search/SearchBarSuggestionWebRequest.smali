.class public Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "SearchBarSuggestionWebRequest.java"


# static fields
.field private static final ALIAS:Ljava/lang/String; = "digital-text"

.field private static final CLIENT_ID:Ljava/lang/String; = "kindle-app"

.field private static final COOKIE:Ljava/lang/String; = "Cookie"

.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final FALL_BACK:Ljava/lang/String; = "0"

.field private static final MARKETPLACE_ENDPOINT_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/application/Marketplace;",
            "Lcom/amazon/kcp/application/Marketplace;",
            ">;"
        }
    .end annotation
.end field

.field private static final METHOD:Ljava/lang/String; = "completion"

.field private static final METRICS_MANAGER:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private static final SEARCH_SUGGESTION_FAILURE_METRICS_KEY:Ljava/lang/String; = "SearchSuggestionFailure"

.field private static final SUGGESTION_TYPES:Ljava/lang/String; = "keyword"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.search.SearchBarSuggestionWebRequest"


# instance fields
.field private marketplaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;->METRICS_MANAGER:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 61
    new-instance v0, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest$1;

    invoke-direct {v0}, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;->MARKETPLACE_ENDPOINT_MAPPING:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    .line 84
    :try_start_0
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getUrlLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/UrlQuerySanitizer$ValueSanitizer;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;->marketplaceId:Ljava/lang/String;

    .line 94
    sget-object v2, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;->MARKETPLACE_ENDPOINT_MAPPING:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    sget-object v2, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;->MARKETPLACE_ENDPOINT_MAPPING:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getSearchSuggestionURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v1

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;->getSearchNodeUrl(Ljava/lang/String;Lcom/amazon/kindle/webservices/WebserviceURL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 99
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "Cookie"

    .line 101
    invoke-virtual {p0, v2, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 103
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/WebserviceURL;->getTimeout()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 105
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->LOW:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 107
    new-instance v0, Lcom/amazon/kindle/webservices/JSONResponseHandler;

    new-instance v1, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/amazon/kcp/search/SearchBarSuggestionJSONHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazon/kindle/webservices/JSONResponseHandler;-><init>(Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 86
    sget-object v0, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;->TAG:Ljava/lang/String;

    const-string v1, "Cannot encode query with the UTF-8 charset"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private getSearchNodeUrl(Ljava/lang/String;Lcom/amazon/kindle/webservices/WebserviceURL;)Ljava/lang/String;
    .locals 1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "?method="

    .line 113
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "completion"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&mid="

    .line 114
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;->marketplaceId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&alias="

    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "digital-text"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&client-id="

    .line 116
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "kindle-app"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&suggestion-types="

    .line 117
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "keyword"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&fb="

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&prefix="

    .line 119
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getPrivacySafeUrl()Ljava/lang/String;
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "prefix"

    const-string v2, "*"

    .line 130
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/webservices/UrlUtils;->replaceUriParameter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 137
    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v1, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;->METRICS_MANAGER:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->getDefaultDomain()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SearchSuggestionFailure"

    .line 138
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 139
    sget-object v1, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;->METRICS_MANAGER:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 141
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void
.end method
