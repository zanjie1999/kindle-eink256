.class public Lcom/amazon/ea/util/AjaxMessagingManager;
.super Ljava/lang/Object;
.source "AjaxMessagingManager.java"


# static fields
.field private static final HTTP_CONNECTION_TIMEOUT_MS:I = 0x3a98

.field private static final HTTP_SOCKET_TIMEOUT_MS:I = 0x3a98

.field private static final HTTP_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.114 Safari/537.36"

.field private static final JSON_RESPONSE_ERROR_CODE_KEY:Ljava/lang/String; = "errorCode"

.field private static final JSON_RESPONSE_ERROR_MESSAGE_KEY:Ljava/lang/String; = "errorMessage"

.field private static final PROTOCOL:Ljava/lang/String; = "https://"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.util.AjaxMessagingManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static authenticatedGet(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;,
            Ljava/io/IOException;,
            Lcom/amazon/ea/messaging/AjaxMessageFailureException;
        }
    .end annotation

    .line 83
    :try_start_0
    invoke-static {}, Lcom/amazon/anyactions/ui/widget/util/SessionHelper;->getCookieString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/ea/util/AjaxMessagingManager;->getDomainUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v1, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 91
    invoke-static {}, Lcom/amazon/anyactions/ui/widget/util/SessionHelper;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    sget-object v2, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p0

    :try_start_1
    const-string v1, "Cookie"

    .line 97
    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 99
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/amazon/ea/util/AjaxMessagingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received http response [statusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 106
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/amazon/ea/util/JSONUtil;->parseInputStreamToJsonObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    .line 104
    :cond_1
    :try_start_2
    new-instance v0, Lcom/amazon/ea/messaging/AjaxMessageFailureException;

    const-string v1, "HTTP response status code was not OK (200)."

    invoke-direct {v0, v1}, Lcom/amazon/ea/messaging/AjaxMessageFailureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 109
    :catch_0
    :try_start_3
    new-instance v0, Lcom/amazon/ea/messaging/AjaxMessageFailureException;

    const-string v1, "Could not parse input stream content as JSONObject"

    invoke-direct {v0, v1}, Lcom/amazon/ea/messaging/AjaxMessageFailureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    :goto_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 112
    throw v0

    :catch_1
    move-exception p0

    .line 85
    new-instance v0, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static delete(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;,
            Lcom/amazon/ea/messaging/AjaxMessageFailureException;
        }
    .end annotation

    .line 306
    :try_start_0
    invoke-static {}, Lcom/amazon/anyactions/ui/widget/util/SessionHelper;->getCookieString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/ea/util/AjaxMessagingManager;->getDomainUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 313
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    const-string p0, "Cookie"

    .line 314
    invoke-virtual {v1, p0, v0}, Lorg/apache/http/client/methods/HttpDelete;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "application/json"

    const-string v0, "Accept"

    .line 316
    invoke-virtual {v1, v0, p0}, Lorg/apache/http/client/methods/HttpDelete;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    .line 317
    invoke-virtual {v1, v0, p0}, Lorg/apache/http/client/methods/HttpDelete;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {v1}, Lcom/amazon/ea/util/AjaxMessagingManager;->sendRequestAndHandleReturn(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 308
    new-instance v0, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static get(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;,
            Lcom/amazon/ea/messaging/AjaxMessageFailureException;
        }
    .end annotation

    .line 131
    :try_start_0
    invoke-static {}, Lcom/amazon/anyactions/ui/widget/util/SessionHelper;->getCookieString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/ea/util/AjaxMessagingManager;->getDomainUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string p0, "Cookie"

    .line 139
    invoke-virtual {v1, p0, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "application/json"

    const-string v0, "Accept"

    .line 140
    invoke-virtual {v1, v0, p0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    .line 141
    invoke-virtual {v1, v0, p0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v1}, Lcom/amazon/ea/util/AjaxMessagingManager;->sendRequestAndHandleReturn(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 133
    new-instance v0, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getDomainUrl()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;
        }
    .end annotation

    .line 327
    invoke-static {}, Lcom/amazon/ea/util/MarketplaceUtil;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 329
    :cond_0
    new-instance v0, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;

    const-string v1, "Cannot retrieve domain for current user\'s PFM."

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static post(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;,
            Lcom/amazon/ea/messaging/AjaxMessageFailureException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    invoke-static {p0, v0, v0}, Lcom/amazon/ea/util/AjaxMessagingManager;->post(Ljava/lang/String;[Lorg/apache/http/Header;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;[Lorg/apache/http/Header;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/Header;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;,
            Lcom/amazon/ea/messaging/AjaxMessageFailureException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 185
    :try_start_0
    invoke-static {}, Lcom/amazon/anyactions/ui/widget/util/SessionHelper;->getCookieString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException; {:try_start_0 .. :try_end_0} :catch_4

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/ea/util/AjaxMessagingManager;->getDomainUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {v1, p1}, Lorg/apache/http/client/methods/HttpPost;->setHeaders([Lorg/apache/http/Header;)V

    :cond_0
    const-string p0, "Cookie"

    .line 197
    invoke-virtual {v1, p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Accept"

    const-string p1, "application/json"

    .line 198
    invoke-virtual {v1, p0, p1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 201
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 202
    new-instance p0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p0, p2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 208
    :cond_1
    :try_start_1
    new-instance p0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 p1, 0x3a98

    .line 209
    invoke-static {p0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 210
    invoke-static {p0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string p1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.114 Safari/537.36"

    .line 211
    invoke-static {p0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 212
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 213
    invoke-interface {p1, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 221
    :try_start_2
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    :try_start_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "errorCode"

    .line 230
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    .line 231
    :cond_2
    new-instance p0, Lcom/amazon/ea/messaging/AjaxMessageFailureException;

    const-string p2, "errorMessage"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/ea/messaging/AjaxMessageFailureException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    .line 234
    new-instance p1, Lcom/amazon/ea/messaging/AjaxMessageFailureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazon/ea/messaging/AjaxMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 223
    :goto_0
    new-instance p1, Lcom/amazon/ea/messaging/AjaxMessageFailureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazon/ea/messaging/AjaxMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 215
    new-instance p1, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 187
    new-instance p1, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static postWithJson(Ljava/lang/String;[Lorg/apache/http/Header;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;,
            Lcom/amazon/ea/messaging/AjaxMessageFailureException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 261
    :try_start_0
    invoke-static {}, Lcom/amazon/anyactions/ui/widget/util/SessionHelper;->getCookieString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/anyactions/ui/widget/util/CookieFetchFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/ea/util/AjaxMessagingManager;->getDomainUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 267
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {v1, p1}, Lorg/apache/http/client/methods/HttpPost;->setHeaders([Lorg/apache/http/Header;)V

    :cond_0
    const-string p0, "Cookie"

    .line 274
    invoke-virtual {v1, p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "application/json"

    const-string p1, "Accept"

    .line 275
    invoke-virtual {v1, p1, p0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    .line 276
    invoke-virtual {v1, p1, p0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 280
    new-instance p0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 283
    :cond_1
    new-instance p0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 p1, 0x3a98

    .line 284
    invoke-static {p0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 285
    invoke-static {p0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string p1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.114 Safari/537.36"

    .line 286
    invoke-static {p0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 288
    invoke-static {v1, p0}, Lcom/amazon/ea/util/AjaxMessagingManager;->sendRequestAndHandleReturn(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/params/HttpParams;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 263
    new-instance p1, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static sendRequestAndHandleReturn(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;,
            Lcom/amazon/ea/messaging/AjaxMessageFailureException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 338
    invoke-static {p0, v0}, Lcom/amazon/ea/util/AjaxMessagingManager;->sendRequestAndHandleReturn(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/params/HttpParams;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static sendRequestAndHandleReturn(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/params/HttpParams;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;,
            Lcom/amazon/ea/messaging/AjaxMessageFailureException;
        }
    .end annotation

    .line 347
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 348
    invoke-interface {v0, p0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 356
    :try_start_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "errorCode"

    .line 364
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    .line 365
    :cond_0
    new-instance p0, Lcom/amazon/ea/messaging/AjaxMessageFailureException;

    const-string v0, "errorMessage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/ea/messaging/AjaxMessageFailureException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 368
    new-instance p1, Lcom/amazon/ea/messaging/AjaxMessageFailureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/messaging/AjaxMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 358
    :goto_0
    new-instance p1, Lcom/amazon/ea/messaging/AjaxMessageFailureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/amazon/ea/messaging/AjaxMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 350
    new-instance p1, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
