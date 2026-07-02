.class public Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;
.super Ljava/lang/Object;
.source "OkHttpWebRequestExecutor.kt"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebRequestExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpWebRequestExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpWebRequestExecutor.kt\ncom/amazon/kindle/webservices/OkHttpWebRequestExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,404:1\n1#2:405\n*E\n"
.end annotation


# static fields
.field private static final SOCKET_TIMEOUT_SEC:J = 0x3cL

.field private static final TCP_CONNECTION_TIMEOUT_SEC:J = 0xfL


# instance fields
.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final callToDetailsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lokhttp3/Call;",
            "Lcom/amazon/kindle/webservices/ConnectionDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionDetailsTrackingClient$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;

.field private final localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

.field private final metricService:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private final networkController:Lcom/amazon/kindle/network/INetworkService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/services/locale/ILocaleManager;Landroid/content/Context;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "Lcom/amazon/kcp/application/IAuthenticationManager;",
            "Lcom/amazon/kindle/network/INetworkService;",
            "Lcom/amazon/kindle/krx/metrics/IMetricsManager;",
            "Lcom/amazon/kindle/services/locale/ILocaleManager;",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localeManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockedProtocols"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    iput-object p3, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    iput-object p4, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->metricService:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    iput-object p5, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

    iput-object p6, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->context:Landroid/content/Context;

    .line 76
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->callToDetailsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    new-instance p2, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;

    invoke-direct {p2, p0, p1, p7}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$connectionDetailsTrackingClient$2;-><init>(Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;Lokhttp3/OkHttpClient;Ljava/util/Collection;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->connectionDetailsTrackingClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAuthManager$p(Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;)Lcom/amazon/kcp/application/IAuthenticationManager;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    return-object p0
.end method

.method public static final synthetic access$getCallToDetailsMap$p(Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->callToDetailsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final buildDebugToastMessage(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;Lcom/amazon/kindle/webservices/ConnectionDetails;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 201
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-ne v2, v1, :cond_0

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 203
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getConnectionReused()Z

    move-result p2

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 206
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing ConnectionDetails for request "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ERROR: OkHttp missing ConnectionDetails for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 209
    :cond_2
    instance-of p2, p1, Lcom/amazon/kindle/webservices/IManifestWebRequest;

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Manifest connection reused "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/amazon/kindle/webservices/IManifestWebRequest;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private final createPostOrPutRequestBody(Lcom/amazon/kindle/webservices/IWebRequest;)Lokhttp3/RequestBody;
    .locals 2

    .line 372
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPostFormData()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    const-string v0, "RequestBody.create(mediaType, this.postFormData)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getConnectionDetailsTrackingClient()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->connectionDetailsTrackingClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private final handleResponse(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;)V
    .locals 9

    .line 223
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/webservices/IResponseHandler;->onHttpStatusCodeReceived(I)V

    .line 225
    new-instance v2, Lcom/amazon/kindle/webservices/HttpResponseProperties;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v4

    const-string v3, "Content-Length"

    .line 226
    invoke-virtual {p2, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    const-string v3, "Content-Type"

    .line 227
    invoke-virtual {p2, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Content-Encoding"

    .line 228
    invoke-virtual {p2, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v8

    const-string/jumbo v3, "response.headers()"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    .line 225
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/webservices/HttpResponseProperties;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;)V

    .line 230
    invoke-interface {v0, v2}, Lcom/amazon/kindle/webservices/IResponseHandler;->onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V

    .line 234
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 236
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    const-string/jumbo v2, "responseBody.byteStream()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getStatusAndProgressTracker()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 238
    new-instance v3, Lcom/amazon/kindle/io/ProgressTrackingInputStream;

    invoke-direct {v3, v2, p1, v0}, Lcom/amazon/kindle/io/ProgressTrackingInputStream;-><init>(Ljava/util/List;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/amazon/kindle/webservices/ResponseHandlerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v0, v3

    .line 241
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Lcom/amazon/kindle/webservices/IResponseHandler;->onInputStream(Ljava/io/InputStream;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 240
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/amazon/kindle/webservices/ResponseHandlerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Lcom/amazon/kindle/webservices/ResponseHandlerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 244
    :try_start_5
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error reading response"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/ResponseHandlerException;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 246
    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    :goto_2
    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 234
    :goto_3
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_5

    goto :goto_5

    :goto_4
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 251
    :cond_5
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p2

    if-nez p2, :cond_6

    .line 252
    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 254
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_5
    return-void
.end method

.method private final shouldRetryRequest(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 329
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_2

    .line 330
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getRetryAttempts()I

    move-result v2

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getRetries()I

    move-result p1

    if-lt v2, p1, :cond_1

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    .line 331
    iget-object p1, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 332
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getRETRYABLE_CODES$p()Ljava/util/Set;

    move-result-object p1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method

.method private final toOkHttpRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Lokhttp3/Request;
    .locals 4

    .line 342
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 343
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 344
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 345
    const-class v1, Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 347
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getHttpVerb()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "DELETE"

    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    goto :goto_1

    :sswitch_1
    const-string v2, "POST"

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->createPostOrPutRequestBody(Lcom/amazon/kindle/webservices/IWebRequest;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1

    :sswitch_2
    const-string v2, "PUT"

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->createPostOrPutRequestBody(Lcom/amazon/kindle/webservices/IWebRequest;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1

    :sswitch_3
    const-string v2, "GET"

    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    goto :goto_1

    .line 361
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown http verb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getHttpVerb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", failed to inject into OkHttp.Request."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    const-string/jumbo v0, "requestBuilder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11336 -> :sswitch_3
        0x136ef -> :sswitch_2
        0x2590a0 -> :sswitch_1
        0x77f979ab -> :sswitch_0
    .end sparse-switch
.end method

.method private final updateRequestErrorState(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;)V
    .locals 3

    .line 263
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    .line 264
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed with error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x193

    if-ne p2, v0, :cond_0

    .line 267
    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FORBIDDEN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x190

    const/16 v1, 0x1f4

    if-le v0, p2, :cond_1

    goto :goto_0

    :cond_1
    if-le v1, p2, :cond_2

    .line 271
    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->HTTP_CLIENT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-lt p2, v1, :cond_3

    .line 275
    sget-object p2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final updateTransportMethod(Lcom/amazon/kindle/webservices/IWebRequest;)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    invoke-static {v0}, Lcom/amazon/kindle/network/INetworkService_ExtensionsKt;->getTodoTransportMethodForCurrentNetwork(Lcom/amazon/kindle/network/INetworkService;)Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 386
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot determine the transport method but the request went through. Assuming a WAN connection."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WAN:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 383
    :goto_0
    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setTransportMethod(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/webservices/IWebRequest;)V
    .locals 16
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->UntaggedSocketViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "request.errorDescriber"

    const-string/jumbo v0, "request"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, v1, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->metricService:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-static {v0}, Lcom/amazon/kindle/webservices/okhttp/OkHttpMetricsUtilsKt;->createNewMetricsData(Lcom/amazon/kindle/krx/metrics/IMetricsManager;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v4

    const-string/jumbo v5, "requestExecutionTime"

    .line 109
    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/metrics/MetricsData;->startTimingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 112
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->resetRequestState()V

    .line 119
    iget-object v0, v1, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->acquireLock()Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 121
    :goto_0
    invoke-interface {v2, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetryAttempts(I)V

    .line 122
    invoke-virtual {v1, v2, v10}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->sleepIfNeeded$com_amazon_kindle_rs(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;)V

    if-eqz v10, :cond_0

    .line 123
    invoke-virtual {v10}, Lokhttp3/Response;->close()V

    .line 126
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v0, 0x0

    :goto_1
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 128
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->isNetworkAllowedToUse()Z

    move-result v10

    if-nez v10, :cond_2

    .line 129
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_1

    .line 132
    :cond_2
    iget-object v10, v1, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {v10}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v10

    add-int/lit8 v11, v0, 0x1

    .line 134
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v12, "X-ADP-AttemptCount"

    invoke-interface {v2, v12, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 135
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->toOkHttpRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Lokhttp3/Request;

    move-result-object v0

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->getConnectionDetailsTrackingClient()Lokhttp3/OkHttpClient;

    move-result-object v12

    invoke-virtual {v12, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v12

    .line 138
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Executing request "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " with attempt count: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    invoke-interface {v12}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v13
    :try_end_0
    .catch Lcom/amazon/kindle/webservices/okhttp/AdpSigningInterceptorException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received response for request: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", response: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/amazon/kindle/webservices/okhttp/AdpSigningInterceptorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    iget-object v0, v1, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->callToDetailsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/webservices/ConnectionDetails;

    move-object v9, v0

    move-object v10, v13

    const/4 v0, 0x0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_3
    move-exception v0

    const/4 v13, 0x0

    .line 155
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v10

    const-string v14, "The request call has already been executed which should not happen"

    invoke-static {v10, v14, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 157
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_OKHTTP_REQUEST_ALREADY_EXECUTED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    invoke-interface {v10, v14}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;)V

    .line 158
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " has already been executed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v14}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorContext(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    iget-object v10, v1, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->callToDetailsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/kindle/webservices/ConnectionDetails;

    move-object v9, v10

    goto :goto_5

    :catch_4
    move-exception v0

    const/4 v13, 0x0

    .line 148
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException when executing the request. Had connectivity prior: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v9, 0x2e

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v10, :cond_3

    .line 149
    iget-object v0, v1, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_4

    .line 152
    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    :goto_4
    iget-object v9, v1, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->callToDetailsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kindle/webservices/ConnectionDetails;

    :goto_5
    move-object v10, v13

    goto :goto_7

    :catch_5
    move-exception v0

    const/4 v13, 0x0

    .line 142
    :goto_6
    :try_start_4
    invoke-static {v4, v0}, Lcom/amazon/kindle/webservices/okhttp/OkHttpMetricsUtilsKt;->populateAdpSigningErrorMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;Lcom/amazon/kindle/webservices/okhttp/AdpSigningInterceptorException;)Ljava/lang/String;

    move-result-object v9

    .line 143
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to create the ADP signature for the request. Freetext: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 145
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_ADP_SIGNING_FAILED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    invoke-interface {v10, v14}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;)V

    .line 146
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v9}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorContext(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 163
    :goto_7
    invoke-direct {v1, v2, v10}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->shouldRetryRequest(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;)Z

    move-result v12

    if-nez v12, :cond_a

    move-object v11, v9

    :goto_8
    if-eqz v10, :cond_5

    .line 166
    invoke-virtual {v10}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_4

    .line 167
    invoke-direct {v1, v2, v10}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->updateRequestErrorState(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;)V

    .line 169
    :cond_4
    invoke-direct {v1, v2, v10}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->handleResponse(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;)V

    goto :goto_9

    .line 173
    :cond_5
    invoke-interface {v2, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 178
    :goto_9
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v0

    instance-of v3, v0, Lcom/amazon/kindle/webservices/HasConnectionDetails;

    if-nez v3, :cond_6

    const/4 v9, 0x0

    goto :goto_a

    :cond_6
    move-object v9, v0

    :goto_a
    check-cast v9, Lcom/amazon/kindle/webservices/HasConnectionDetails;

    if-eqz v9, :cond_7

    invoke-interface {v9, v11}, Lcom/amazon/kindle/webservices/HasConnectionDetails;->setConnectionDetails(Lcom/amazon/kindle/webservices/ConnectionDetails;)V

    .line 180
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->shouldShowDownloadDebugToasts()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 181
    invoke-direct {v1, v2, v10, v11}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->buildDebugToastMessage(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;Lcom/amazon/kindle/webservices/ConnectionDetails;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 182
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v3

    new-instance v9, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$execute$$inlined$let$lambda$1;

    invoke-direct {v9, v0, v1}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$execute$$inlined$let$lambda$1;-><init>(Ljava/lang/String;Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;)V

    invoke-interface {v3, v9}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    .line 188
    :cond_8
    invoke-static {v2, v10, v4}, Lcom/amazon/kindle/webservices/okhttp/OkHttpMetricsUtilsKt;->populateRequestMetrics(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    if-eqz v10, :cond_9

    .line 191
    invoke-virtual {v10}, Lokhttp3/Response;->close()V

    .line 192
    :cond_9
    invoke-interface {v8}, Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;->release()V

    .line 194
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->updateTransportMethod(Lcom/amazon/kindle/webservices/IWebRequest;)V

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-interface {v2, v8, v9}, Lcom/amazon/kindle/webservices/IWebRequest;->setExecutionCompleteTime(J)V

    .line 196
    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/metrics/MetricsData;->stopTimingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 197
    iget-object v0, v1, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->metricService:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {v0, v4}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void

    :cond_a
    move v0, v11

    move-object v11, v9

    goto/16 :goto_0

    .line 160
    :goto_b
    iget-object v2, v1, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->callToDetailsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/webservices/ConnectionDetails;

    throw v0
.end method

.method public sleepIfNeeded$com_amazon_kindle_rs(Lcom/amazon/kindle/webservices/IWebRequest;Lokhttp3/Response;)V
    .locals 11

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getRetryAttempts()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was an error executing request to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Retrying with a new call ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getRetryAttempts()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const-wide/16 v1, 0x64

    if-eqz p2, :cond_4

    .line 297
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p2

    const-string v3, "Retry-After"

    invoke-virtual {p2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 298
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    .line 299
    invoke-static {p2}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->parseCallAfterValue(Ljava/lang/String;)J

    move-result-wide p1

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr p1, v3

    goto :goto_2

    :cond_3
    const/4 p2, 0x5

    int-to-long v3, p2

    const/16 p2, 0x3e8

    int-to-long v5, p2

    .line 304
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v7, v7, v9

    double-to-long v7, v7

    add-long/2addr v5, v7

    mul-long v3, v3, v5

    shl-int p1, v0, p1

    int-to-long p1, p1

    mul-long p1, p1, v3

    goto :goto_2

    :cond_4
    move-wide p1, v1

    :goto_2
    const-wide/32 v3, 0x9c40

    cmp-long v0, p1, v3

    if-lez v0, :cond_5

    move-wide v1, v3

    goto :goto_3

    :cond_5
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-gez v0, :cond_6

    goto :goto_3

    :cond_6
    move-wide v1, p1

    .line 316
    :goto_3
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sleep for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms before retrying request."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 319
    invoke-static {}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Interrupted while sleeping before retrying request"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method
