.class public final Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;
.super Ljava/lang/Object;
.source "CommonDownloadModule_ProvideOkHttpClientProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final applicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;->metricsManagerProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;->applicationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 31
    invoke-static {p0, p1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;->proxyProvideOkHttpClientProvider(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Landroid/app/Application;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideOkHttpClientProvider(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Landroid/app/Application;)Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager;",
            "Landroid/app/Application;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->provideOkHttpClientProvider(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Landroid/app/Application;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;->get()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlin/jvm/functions/Function0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;->metricsManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;->applicationProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideOkHttpClientProviderFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method
