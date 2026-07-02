.class public Lcom/amazon/kcp/search/store/SearchNodeWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "SearchNodeWebRequest.java"


# static fields
.field private static final DEFAULT_PAGE:I = 0x1

.field private static final DEFAULT_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.search.store.SearchNodeWebRequest"


# instance fields
.field private browseNode:Ljava/lang/String;

.field private deviceTypeId:Ljava/lang/String;

.field private sortType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    .line 61
    :try_start_0
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getUrlLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/UrlQuerySanitizer$ValueSanitizer;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceInformationProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->deviceTypeId:Ljava/lang/String;

    .line 71
    invoke-static {v1, v0}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->getBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->browseNode:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->isSearchWithFilterSortEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p5, :cond_1

    .line 74
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    invoke-direct {p0, p5, v0}, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->getSearchFilterBrowseNodes(Ljava/util/List;Lcom/amazon/kcp/application/Marketplace;)Ljava/util/Set;

    move-result-object p5

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->browseNode:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ","

    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->browseNode:Ljava/lang/String;

    .line 84
    :cond_1
    invoke-static {p6}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->getSortTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->sortType:Ljava/lang/String;

    .line 87
    :cond_2
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->getUrl(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object p5

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 88
    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->getSearchNodeUrl(Ljava/lang/String;IIZLcom/amazon/kindle/webservices/WebserviceURL;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 89
    invoke-virtual {p0, p5}, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->setHeaders(Lcom/amazon/kindle/webservices/WebserviceURL;)V

    .line 91
    invoke-virtual {p5}, Lcom/amazon/kindle/webservices/WebserviceURL;->getTimeout()J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p0, p3}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p2, 0x0

    .line 92
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 93
    sget-object p2, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->LOW:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 95
    new-instance p2, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance p1, Lcom/amazon/kindle/webservices/JSONResponseHandler;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/webservices/JSONResponseHandler;-><init>(Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;)V

    .line 98
    invoke-virtual {p2, p1}, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;->setBaseResponseHandler(Lcom/amazon/kindle/webservices/BaseResponseHandler;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void

    :catch_0
    move-exception p1

    .line 63
    sget-object p2, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->TAG:Ljava/lang/String;

    const-string p3, "Cannot encode query with the UTF-8 charset"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private getSearchFilterBrowseNodes(Ljava/util/List;Lcom/amazon/kcp/application/Marketplace;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/application/Marketplace;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    invoke-static {v1, p2}, Lcom/amazon/kcp/search/store/SearchNodeConstants;->getStoreFilterBrowseNode(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_1
    sget-object v2, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found duplicate browse node of filter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " under marketplace: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getSearchNodeUrl(Ljava/lang/String;IIZLcom/amazon/kindle/webservices/WebserviceURL;)Ljava/lang/String;
    .locals 1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object p5

    invoke-direct {v0, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p5, "&userCode="

    .line 130
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "AndroidKin"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "&deviceType="

    .line 131
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->deviceTypeId:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "&node="

    .line 132
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->browseNode:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "&excludedNodes="

    .line 133
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "&query="

    .line 134
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&page="

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&size="

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&autoSpellCheck="

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {p0}, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->isSearchWithFilterSortEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "&rank="

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->sortType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isSearchWithFilterSortEnabled()Z
    .locals 1

    .line 147
    invoke-static {}, Lcom/amazon/kcp/debug/WayfinderSearchFilterSortDebugUtils;->isSearchStoreFilterSortEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getPrivacySafeUrl()Ljava/lang/String;
    .locals 3

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "query"

    const-string v2, "*"

    .line 155
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/webservices/UrlUtils;->replaceUriParameter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 158
    sget-object v1, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t generate safe search node url"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 0

    .line 125
    invoke-static {p1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getSearchNodeURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object p1

    return-object p1
.end method

.method protected setHeaders(Lcom/amazon/kindle/webservices/WebserviceURL;)V
    .locals 1

    .line 118
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Cookie"

    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    :cond_0
    return-void
.end method
