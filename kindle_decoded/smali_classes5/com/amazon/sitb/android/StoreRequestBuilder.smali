.class public Lcom/amazon/sitb/android/StoreRequestBuilder;
.super Ljava/lang/Object;
.source "StoreRequestBuilder.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final cookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

.field private final metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private final queryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/StoreRequestBuilder;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/StoreRequestBuilder;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/IDeviceInformationProvider;Lcom/amazon/sitb/android/reftag/ReftagService;Lcom/amazon/sitb/android/metrics/MetricsService;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->queryParams:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->cookies:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    .line 41
    iput-object p2, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

    .line 42
    iput-object p3, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 44
    sget-object p2, Lcom/amazon/sitb/android/StoreRequestBuilder;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating request builder using userId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 45
    sget-object p2, Lcom/amazon/sitb/android/StoreRequestBuilder;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CoR = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getCountryOfResidence()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 46
    sget-object p2, Lcom/amazon/sitb/android/StoreRequestBuilder;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PfM = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private addCookie(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/sitb/android/StoreRequestBuilder;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    invoke-interface {v0}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getStoreHostname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, p3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setSecure(Z)V

    .line 162
    iget-object p1, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->cookies:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 154
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->cookies:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private getCookieValue(Lcom/amazon/sitb/android/StoreCookie;)Ljava/lang/String;
    .locals 3

    .line 215
    sget-object v0, Lcom/amazon/sitb/android/StoreRequestBuilder$1;->$SwitchMap$com$amazon$sitb$android$StoreCookie:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    invoke-interface {p1}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getQueryParamValue(Lcom/amazon/sitb/android/StoreQueryParam;)Ljava/lang/String;
    .locals 3

    .line 192
    invoke-virtual {p1}, Lcom/amazon/sitb/android/StoreQueryParam;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/amazon/sitb/android/StoreQueryParam;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/StoreRequestBuilder$1;->$SwitchMap$com$amazon$sitb$android$StoreQueryParam:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    invoke-interface {p1}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getDeviceType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    invoke-interface {p1}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 200
    :cond_3
    iget-object p1, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    invoke-interface {p1}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getCountryOfResidence()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 231
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "gp/kindle/kcp/external-secure"

    .line 233
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 234
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addCookie(Lcom/amazon/sitb/android/StoreCookie;)Lcom/amazon/sitb/android/StoreRequestBuilder;
    .locals 2

    .line 128
    sget-object v0, Lcom/amazon/sitb/android/StoreCookie;->X_MAIN_OR_X_ACB:Lcom/amazon/sitb/android/StoreCookie;

    if-ne p1, v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    invoke-interface {v0}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getXMainOrXAcb()Lorg/apache/http/NameValuePair;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->cookies:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 136
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/StoreCookie;->isSecure()Z

    move-result p1

    invoke-direct {p0, v1, v0, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addCookie(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/sitb/android/StoreRequestBuilder;

    return-object p0

    .line 139
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->getCookieValue(Lcom/amazon/sitb/android/StoreCookie;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addCookie(Lcom/amazon/sitb/android/StoreCookie;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    return-object p0
.end method

.method public addCookie(Lcom/amazon/sitb/android/StoreCookie;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;
    .locals 1

    .line 118
    invoke-virtual {p1}, Lcom/amazon/sitb/android/StoreCookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/StoreCookie;->isSecure()Z

    move-result p1

    invoke-direct {p0, v0, p2, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addCookie(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/sitb/android/StoreRequestBuilder;

    return-object p0
.end method

.method public addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;)Lcom/amazon/sitb/android/StoreRequestBuilder;
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->getQueryParamValue(Lcom/amazon/sitb/android/StoreQueryParam;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    return-object p0
.end method

.method public addQueryParam(Lcom/amazon/sitb/android/StoreQueryParam;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;
    .locals 0

    .line 64
    invoke-virtual {p1}, Lcom/amazon/sitb/android/StoreQueryParam;->getName()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    return-object p0
.end method

.method public addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;
    .locals 1

    .line 53
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->queryParams:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addQueryParamsFromJsonTokens(Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;
    .locals 4

    if-eqz p1, :cond_0

    .line 85
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 87
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {p0, v2, v3}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-object p0

    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addReftag(I)Lcom/amazon/sitb/android/StoreRequestBuilder;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->reftagService:Lcom/amazon/sitb/android/reftag/ReftagService;

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/reftag/ReftagService;->getReftag(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ref_"

    invoke-virtual {p0, v0, p1}, Lcom/amazon/sitb/android/StoreRequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/sitb/android/StoreRequestBuilder;

    return-object p0
.end method

.method public build()Lcom/amazon/sitb/android/StoreRequest;
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->deviceInformationProvider:Lcom/amazon/sitb/android/IDeviceInformationProvider;

    invoke-interface {v0}, Lcom/amazon/sitb/android/IDeviceInformationProvider;->getStoreHostname()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/amazon/sitb/android/StoreRequestBuilder;->getUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->cookies:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->queryParams:Ljava/util/List;

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/apache/http/NameValuePair;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/NameValuePair;

    .line 182
    iget-object v3, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->cookies:Ljava/util/List;

    new-array v2, v2, [Lorg/apache/http/cookie/Cookie;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/http/cookie/Cookie;

    .line 184
    new-instance v3, Lcom/amazon/sitb/android/StoreRequest;

    iget-object v4, p0, Lcom/amazon/sitb/android/StoreRequestBuilder;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-direct {v3, v4, v1, v0, v2}, Lcom/amazon/sitb/android/StoreRequest;-><init>(Lcom/amazon/sitb/android/metrics/MetricsService;Ljava/lang/String;[Lorg/apache/http/NameValuePair;[Lorg/apache/http/cookie/Cookie;)V

    return-object v3

    :cond_1
    :goto_0
    return-object v2
.end method
