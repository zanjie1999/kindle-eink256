.class public abstract Lcom/amazon/kindle/download/dagger/CommonDownloadModule;
.super Ljava/lang/Object;
.source "CommonDownloadModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->Companion:Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;

    return-void
.end method

.method public static final provideAssetStateManager(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Landroid/app/Application;)Lcom/amazon/kindle/download/assets/IAssetStateManager;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->Companion:Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;->provideAssetStateManager(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Landroid/app/Application;)Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object p0

    return-object p0
.end method

.method public static final provideDeliveryManifestMetricsEmitter()Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->Companion:Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;->provideDeliveryManifestMetricsEmitter()Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    move-result-object v0

    return-object v0
.end method

.method public static final provideMDSProviders(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;)Ljava/util/Set;
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

    sget-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->Companion:Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;->provideMDSProviders(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final provideManifestSerializer()Lcom/amazon/kindle/download/manifest/ManifestSerializer;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->Companion:Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;->provideManifestSerializer()Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final provideMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->Companion:Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;->provideMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    return-object v0
.end method

.method public static final provideNetworkService(Landroid/app/Application;)Lcom/amazon/kindle/network/INetworkService;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->Companion:Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;->provideNetworkService(Landroid/app/Application;)Lcom/amazon/kindle/network/INetworkService;

    move-result-object p0

    return-object p0
.end method

.method public static final provideOkHttpClientProvider(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Landroid/app/Application;)Lkotlin/jvm/functions/Function0;
    .locals 1
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

    sget-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->Companion:Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule$Companion;->provideOkHttpClientProvider(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Landroid/app/Application;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method
