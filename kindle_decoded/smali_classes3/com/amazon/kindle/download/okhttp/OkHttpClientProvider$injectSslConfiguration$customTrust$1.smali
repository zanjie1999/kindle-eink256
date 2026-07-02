.class final Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OkHttpClientProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->injectSslConfiguration(Lokhttp3/OkHttpClient$Builder;Ljava/util/concurrent/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/webservices/X509CustomTrust;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $certFuture:Ljava/util/concurrent/Future;

.field final synthetic $metricsPayload:Lcom/amazon/kindle/krx/metrics/MetricsData;

.field final synthetic this$0:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;Ljava/util/concurrent/Future;Lcom/amazon/kindle/krx/metrics/MetricsData;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;->this$0:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;

    iput-object p2, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;->$certFuture:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;->$metricsPayload:Lcom/amazon/kindle/krx/metrics/MetricsData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/webservices/X509CustomTrust;
    .locals 4

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;->$certFuture:Ljava/util/concurrent/Future;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/webservices/X509CustomTrust;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    iget-object v0, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;->$certFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;->$metricsPayload:Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v1, "TRUST_MANAGER_FUTURE_TIMEOUT"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 120
    sget-object v0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->Companion:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;->this$0:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;

    invoke-static {v1}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->access$getContext$p(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;->this$0:Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;

    invoke-static {v2}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;->access$getMetricsManager$p(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;->access$processCustomTrustStore(Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$Companion;Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)Lcom/amazon/kindle/webservices/X509CustomTrust;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider$injectSslConfiguration$customTrust$1;->invoke()Lcom/amazon/kindle/webservices/X509CustomTrust;

    move-result-object v0

    return-object v0
.end method
