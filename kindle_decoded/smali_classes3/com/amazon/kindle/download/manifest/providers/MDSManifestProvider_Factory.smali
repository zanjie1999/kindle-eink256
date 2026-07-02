.class public final Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;
.super Ljava/lang/Object;
.source "MDSManifestProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final manifestDownloaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;",
            ">;"
        }
    .end annotation
.end field

.field private final manifestSerializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsEmitterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;->manifestDownloaderProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;->manifestSerializerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;->metricsEmitterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;",
            ">;)",
            "Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;",
            ">;)",
            "Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;

    .line 37
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    .line 38
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    .line 39
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;-><init>(Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;->manifestDownloaderProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;->manifestSerializerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;->metricsEmitterProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider_Factory;->get()Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;

    move-result-object v0

    return-object v0
.end method
