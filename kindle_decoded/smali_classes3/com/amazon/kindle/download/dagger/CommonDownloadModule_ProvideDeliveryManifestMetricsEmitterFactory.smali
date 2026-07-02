.class public final Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;
.super Ljava/lang/Object;
.source "CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;->INSTANCE:Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;->INSTANCE:Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;->proxyProvideDeliveryManifestMetricsEmitter()Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideDeliveryManifestMetricsEmitter()Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;
    .locals 2

    .line 29
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->provideDeliveryManifestMetricsEmitter()Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 28
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;->provideInstance()Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideDeliveryManifestMetricsEmitterFactory;->get()Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    move-result-object v0

    return-object v0
.end method
