.class public Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;
.super Ljava/lang/Object;
.source "BasicStoreRequest.java"


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "EndActionsAndroidModule"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.client.request.BasicStoreRequest"


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

.field private final hostname:Ljava/lang/String;

.field private final queryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->queryParams:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->cookies:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "BasicStoreRequest"

    .line 62
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-static {p1}, Lcom/amazon/ea/purchase/client/util/HostnameUtil;->getHostname(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->hostname:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "HostnameNullOrEmpty"

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    .line 69
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    .line 66
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Store hostname is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 69
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 70
    throw p1
.end method

.method private addCookie(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;
    .locals 1

    .line 216
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->hostname:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, p3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setSecure(Z)V

    .line 219
    iget-object p1, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->cookies:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public addAccessTokenCookie()Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-access-token"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addCookie(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method

.method public addOptParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    :goto_0
    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->queryParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSessionCookie(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;
    .locals 2

    const-string/jumbo v0, "session-id"

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addCookie(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    return-object p0
.end method

.method public addTokens(Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;
    .locals 6

    const-string v0, "Success"

    const-string v1, "BasicStoreRequestAddTokens"

    .line 108
    invoke-static {v1}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    const-string v4, "JsonNull"

    .line 110
    invoke-static {v3, v4}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 129
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    .line 115
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 117
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    goto :goto_1

    .line 121
    :cond_2
    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 123
    :try_start_2
    sget-object v1, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing tokens"

    invoke-static {v1, v3, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :goto_2
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 130
    throw p1
.end method

.method public addXACBCookie()Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v1, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->hostname:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/client/util/XacbCookieUtil;->getCookie(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->addCookie(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;

    :cond_0
    return-object p0
.end method

.method public execute()Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;
    .locals 9

    const-string v0, "Success"

    const-string v1, "BasicStoreRequestExecute"

    .line 172
    invoke-static {v1}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 174
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "https"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "gp/kindle/kcp/external-secure"

    .line 175
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v4, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->queryParams:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v3, "User-Agent"

    const-string v4, "%s (Android/%s; %s) Kindle/%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "EndActionsAndroidModule"

    aput-object v6, v5, v1

    .line 177
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v8, "DEVICE_TYPE"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "APP_VERSION"

    aput-object v8, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 181
    new-instance v4, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v4}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 182
    iget-object v5, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->cookies:Ljava/util/List;

    iget-object v6, p0, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->cookies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/apache/http/cookie/Cookie;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/http/cookie/Cookie;

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookies([Lorg/apache/http/cookie/Cookie;)V

    const-string v5, "http.cookie-store"

    .line 183
    invoke-virtual {v3, v5, v4}, Lorg/apache/http/protocol/BasicHttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 186
    invoke-virtual {v5, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 188
    invoke-virtual {v4}, Lorg/apache/http/impl/client/BasicCookieStore;->getCookies()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "CookiesNull"

    .line 190
    invoke-static {v4, v5}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-nez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "HttpResponseNull"

    .line 191
    invoke-static {v4, v5}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    .line 192
    invoke-static {v0, v7}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 194
    new-instance v4, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;

    invoke-direct {v4, v2, v3}, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;-><init>(Lorg/apache/http/HttpResponse;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 196
    :try_start_1
    sget-object v3, Lcom/amazon/ea/purchase/client/request/BasicStoreRequest;->TAG:Ljava/lang/String;

    const-string v4, "Error executing store request:"

    invoke-static {v3, v4, v2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 198
    new-instance v0, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/amazon/ea/purchase/client/response/BasicStoreResponse;-><init>(Lorg/apache/http/HttpResponse;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v0

    :goto_2
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 201
    throw v0
.end method
