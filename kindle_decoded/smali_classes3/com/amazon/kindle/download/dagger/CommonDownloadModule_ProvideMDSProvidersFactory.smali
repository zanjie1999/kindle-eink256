.class public final Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;
.super Ljava/lang/Object;
.source "CommonDownloadModule_ProvideMDSProvidersFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/amazon/kindle/download/manifest/providers/ManifestProvider<",
        "Lcom/amazon/kindle/download/manifest/MDSManifest;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final mdsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;->mdsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;",
            ">;)",
            "Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/download/manifest/providers/ManifestProvider<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            ">;>;"
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;

    invoke-static {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;->proxyProvideMDSProviders(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideMDSProviders(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;)Ljava/util/Set;
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

    .line 39
    invoke-static {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->provideMDSProviders(Lcom/amazon/kindle/download/manifest/providers/MDSManifestProvider;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 38
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/download/manifest/providers/ManifestProvider<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            ">;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;->mdsProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMDSProvidersFactory;->provideInstance(Ljavax/inject/Provider;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
