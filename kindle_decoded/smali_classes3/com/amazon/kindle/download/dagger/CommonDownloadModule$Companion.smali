.class public final Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;
.super Ljava/lang/Object;
.source "CommonDownloadModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/dagger/CommonDownloadModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideAssetStateManager(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Landroid/app/Application;)Lcom/amazon/kindle/download/assets/IAssetStateManager;
    .locals 1

    const-string v0, "facade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetStateManager;

    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetStateManager;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Landroid/content/Context;)V

    return-object v0
.end method

.method public final provideDeliveryManifestMetricsEmitter()Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;
    .locals 1

    .line 90
    sget-object v0, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;

    return-object v0
.end method

.method public final provideMDSProviders(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;",
            ")",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/download/manifest/providers/ManifestProvider<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            ">;>;"
        }
    .end annotation

    const-string v0, "mdsProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final provideManifestSerializer()Lcom/amazon/kindle/download/manifest/ManifestSerializer;
    .locals 1

    .line 69
    sget-object v0, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    return-object v0
.end method

.method public final provideMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 2

    .line 76
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MetricsManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final provideNetworkService(Landroid/app/Application;)Lcom/amazon/kindle/network/INetworkService;
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/amazon/kindle/network/NetworkService;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/network/AndroidWifiLockManager;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/network/NetworkService;-><init>(Landroid/content/Context;Lcom/amazon/kindle/network/IWifiLockManager;)V

    return-object v0
.end method

.method public final provideOkHttpClientProvider(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Landroid/app/Application;)Lkotlin/jvm/functions/Function0;
    .locals 7
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

    const-string v0, "metricsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;

    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string p2, "application.applicationContext"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/download/okhttp/OkHttpClientProvider;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/foundation/internal/IThreadPoolManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
