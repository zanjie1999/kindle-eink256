.class public final Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;
.super Ljava/lang/Object;
.source "OkHttpClientProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;

.field private static final MAX_FUTURE_WAIT_TIME_SECONDS:J = 0x5L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cachedClient$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;

.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->Companion:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;

    .line 58
    const-class v0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/foundation/internal/IThreadPoolManager;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadPoolManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$1;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$1;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submit(Ljava/util/concurrent/Callable;Z)Ljava/util/concurrent/Future;

    move-result-object p3

    const-string v0, "threadPoolManager.submit\u2026anager)\n        }, false)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/foundation/internal/IThreadPoolManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 89
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p3

    const-string p4, "ThreadPoolManager.getInstance()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/foundation/internal/IThreadPoolManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/krx/metrics/IMetricsManager;",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/webservices/X509CustomTrust;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certFuture"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 95
    new-instance p1, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$cachedClient$2;

    invoke-direct {p1, p0, p3}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$cachedClient$2;-><init>(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;Ljava/util/concurrent/Future;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->cachedClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$buildClient(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;Ljava/util/concurrent/Future;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->buildClient(Ljava/util/concurrent/Future;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMetricsManager$p(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final buildClient(Ljava/util/concurrent/Future;)Lokhttp3/OkHttpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/webservices/X509CustomTrust;",
            ">;)",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    .line 104
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 105
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->injectSslConfiguration(Lokhttp3/OkHttpClient$Builder;Ljava/util/concurrent/Future;)V

    .line 106
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    const-string v0, "clientBuilder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getCachedClient()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->cachedClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private final injectSslConfiguration(Lokhttp3/OkHttpClient$Builder;Ljava/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient$Builder;",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/kindle/webservices/X509CustomTrust;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    sget-object v1, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    :try_start_0
    const-string v1, "metricsPayload"

    .line 112
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CERTIFICATE_WAIT_TIME"

    new-instance v2, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;-><init>(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;Ljava/util/concurrent/Future;Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProviderKt;->access$withTimingEvent(Lcom/amazon/kindle/krx/metrics/MetricsData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/webservices/X509CustomTrust;

    .line 123
    invoke-virtual {p2}, Lcom/amazon/kindle/webservices/X509CustomTrust;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/webservices/X509CustomTrust;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 124
    iget-object p1, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 128
    sget-object p2, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->TAG:Ljava/lang/String;

    const-string v0, "Unable to inject Kindle\'s TrustManager into OkHttp due to error"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    instance-of p2, p1, Ljava/util/concurrent/ExecutionException;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    check-cast p2, Ljava/util/concurrent/ExecutionException;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object p1, p2

    .line 131
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "UNKNOWN"

    .line 132
    :goto_1
    iget-object p2, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    sget-object v0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->TAG:Ljava/lang/String;

    const-string v1, "EXCEPTION_CLASS"

    .line 133
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "TRUST_MANAGER_EXCEPTION"

    .line 132
    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Lokhttp3/OkHttpClient;
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->getCachedClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
