.class public final Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;
.super Ljava/lang/Object;
.source "AuthenticationAwareHurlStack.kt"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthenticationAwareHurlStack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthenticationAwareHurlStack.kt\ncom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack\n*L\n1#1,238:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authType:Lcom/amazon/identity/auth/device/api/AuthenticationType;

.field private final context:Landroid/content/Context;

.field private final cookieManager:Ljava/net/CookieManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->Companion:Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/AuthenticationType;Ljava/net/CookieManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cookieManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->authType:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    iput-object p3, p0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->cookieManager:Ljava/net/CookieManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/AuthenticationType;Ljava/net/CookieManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 42
    sget-object p2, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 44
    new-instance p3, Ljava/net/CookieManager;

    invoke-direct {p3}, Ljava/net/CookieManager;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/AuthenticationType;Ljava/net/CookieManager;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final addResponseCookies(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->cookieManager:Ljava/net/CookieManager;

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    invoke-interface {v1, v2, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final getAuthenticationMethod()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 3

    .line 47
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v1, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->authType:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v0

    const-string v1, "authFactory.newAuthenticationMethod(authType)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getResponseCookieString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ";"

    .line 134
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "request.headers"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 59
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    sget-object v2, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->Companion:Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;

    invoke-static {v2}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making HTTPS request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    sget-object v2, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->Companion:Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;

    invoke-static {v2}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headers are: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->getAuthenticationMethod()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 63
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->getUseGamma()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v2, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager;->Companion:Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion;->getCustomHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 65
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager;->Companion:Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/http/HttpsTrustManager$Companion;->getCustomSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 68
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Cookie"

    .line 69
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->cookieManager:Ljava/net/CookieManager;

    invoke-virtual {v4}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v4

    const-string v5, "cookieManager.cookieStore"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    const-string v5, "cookieManager.cookieStore.cookies"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->getResponseCookieString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_3
    sget-object p2, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->Companion:Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;

    const-string v1, "connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->access$setConnectionParametersForRequest(Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    .line 86
    new-instance p2, Lorg/apache/http/ProtocolVersion;

    const/4 v1, 0x1

    const-string v2, "HTTP"

    invoke-direct {p2, v2, v1, v1}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 87
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 93
    new-instance v2, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p2, v3, v4}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 94
    new-instance p2, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {p2, v2}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 95
    sget-object v3, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->Companion:Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getMethod()I

    move-result p1

    invoke-virtual {v2}, Lorg/apache/http/message/BasicStatusLine;->getStatusCode()I

    move-result v2

    invoke-static {v3, p1, v2}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->access$hasResponseBody(Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 96
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->Companion:Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;

    invoke-static {p1, v0}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;->access$entityFromConnection(Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack$Companion;Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 99
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    const-string v0, "connection.headerFields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v2, :cond_5

    .line 101
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2, v3}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    const-string v3, "Set-Cookie"

    .line 103
    invoke-static {v3, v2, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 104
    invoke-direct {p0, v0}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;->addResponseCookies(Ljava/util/List;)V

    goto :goto_1

    :cond_6
    return-object p2

    .line 91
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
