.class public final Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;
.super Ljava/lang/Object;
.source "ADPSigningNetworkInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nADPSigningNetworkInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ADPSigningNetworkInterceptor.kt\ncom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor\n+ 2 Retry.kt\ncom/amazon/kindle/util/RetryKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n94#2,16:134\n1819#3,2:150\n*E\n*S KotlinDebug\n*F\n+ 1 ADPSigningNetworkInterceptor.kt\ncom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor\n*L\n93#1,16:134\n107#1,2:150\n*E\n"
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final mapRetryConfig:Lcom/amazon/kindle/util/RetryConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/util/RetryConfig<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    const-class v0, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->TAG:Ljava/lang/String;

    .line 57
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/util/RetryConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/IAuthenticationManager;",
            "Lcom/amazon/kindle/util/RetryConfig<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "authManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapRetryConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    iput-object p2, p0, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->mapRetryConfig:Lcom/amazon/kindle/util/RetryConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/util/RetryConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 52
    new-instance p2, Lcom/amazon/kindle/util/RetryConfig;

    const/4 v1, 0x3

    const-wide/16 v2, 0x14

    sget-object v4, Lcom/amazon/kindle/util/RetryConfig$BackOff;->NONE:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/util/RetryConfig;-><init>(IJLcom/amazon/kindle/util/RetryConfig$BackOff;JLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/util/RetryConfig;)V

    return-void
.end method

.method private final extractMapError(Lcom/amazon/kindle/util/RetriesExceededException;)Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
    .locals 1

    .line 120
    invoke-virtual {p1}, Lcom/amazon/kindle/util/RetriesExceededException;->getExceptionsCaught()Ljava/util/List;

    move-result-object p1

    .line 121
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    return-object p1
.end method

.method private final signRequestWithADP(Lokhttp3/Request;Lcom/amazon/kindle/webservices/IWebRequest;)Lokhttp3/Request;
    .locals 17

    move-object/from16 v1, p0

    .line 79
    iget-object v0, v1, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAuthenticatedMethodFactory()Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    move-result-object v0

    sget-object v2, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v2

    .line 80
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 81
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    .line 82
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v11

    .line 84
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_0
    const-string v3, "it.contentType()?.charse\u2026ARSET) ?: DEFAULT_CHARSET"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/webservices/IWebRequest;->getPostFormData()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "underlyingKindleRequest.postFormData"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v13, v12

    .line 93
    :goto_1
    :try_start_0
    iget-object v14, v1, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->mapRetryConfig:Lcom/amazon/kindle/util/RetryConfig;

    .line 134
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-virtual {v14}, Lcom/amazon/kindle/util/RetryConfig;->getMaxAttempts()I

    move-result v8
    :try_end_0
    .catch Lcom/amazon/kindle/util/RetriesExceededException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    if-gt v0, v8, :cond_9

    const/4 v7, 0x1

    .line 94
    :goto_2
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getShouldSimulateAdpFailures()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 95
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->simulateAdpFailure()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    throw v12

    :cond_4
    :goto_3
    const/4 v0, 0x0

    move-object v3, v2

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move v12, v7

    move-object v7, v13

    move-object/from16 v16, v2

    move v2, v8

    move-object v8, v0

    .line 97
    :try_start_2
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->getAuthenticationHeadersForRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "mapFuture.get()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Bundle;

    .line 138
    invoke-virtual {v14}, Lcom/amazon/kindle/util/RetryConfig;->getAcceptancePredicate()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_8

    .line 105
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "auth.headers"

    .line 106
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 107
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, "it.keySet()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 108
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 109
    invoke-virtual {v2, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_4

    .line 113
    :cond_6
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received auth bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for request "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    :cond_7
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    const-string/jumbo v2, "originalRequest.newBuild\u2026      }\n        }.build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_8
    move-object/from16 v4, p1

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v16, v2

    move v12, v7

    move v2, v8

    .line 142
    :goto_5
    :try_start_3
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_6
    invoke-virtual {v14, v12}, Lcom/amazon/kindle/util/RetryConfig;->getDelay(I)J

    move-result-wide v5

    .line 146
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    if-eq v12, v2, :cond_9

    add-int/lit8 v7, v12, 0x1

    move v8, v2

    move-object/from16 v2, v16

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 149
    :cond_9
    new-instance v0, Lcom/amazon/kindle/util/RetriesExceededException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/amazon/kindle/util/RetryConfig;->getMaxAttempts()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attempts failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v15}, Lcom/amazon/kindle/util/RetriesExceededException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0
    :try_end_3
    .catch Lcom/amazon/kindle/util/RetriesExceededException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    .line 101
    invoke-direct {v1, v0}, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->extractMapError(Lcom/amazon/kindle/util/RetriesExceededException;)Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    move-result-object v0

    .line 102
    new-instance v2, Lcom/amazon/kindle/webservices/okhttp/AdpSigningInterceptorException;

    const-string v3, "Unable to get ADP payload from MAP"

    invoke-direct {v2, v3, v0}, Lcom/amazon/kindle/webservices/okhttp/AdpSigningInterceptorException;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;)V

    throw v2
.end method

.method private final simulateAdpFailure()V
    .locals 3

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_code_key"

    const/4 v2, 0x3

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "error_message_key"

    const-string v2, "Simulated MAP error message from the Download Debug Menu"

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    throw v1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 64
    const-class v1, Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-virtual {v0, v1}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/webservices/IWebRequest;

    if-eqz v1, :cond_1

    .line 66
    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->isAuthenticationRequired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authentication is not required for request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v2, "okHttpRequest"

    .line 70
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->signRequestWithADP(Lokhttp3/Request;Lcom/amazon/kindle/webservices/IWebRequest;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    :goto_0
    const-string v0, "if (kindleRequest.isAuth\u2026leRequest))\n            }"

    .line 66
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_1
    sget-object v1, Lcom/amazon/kindle/webservices/okhttp/ADPSigningNetworkInterceptor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No IWebRequest tagged on the OkHttp request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    const-string v0, "chain.proceed(okHttpRequest)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method
