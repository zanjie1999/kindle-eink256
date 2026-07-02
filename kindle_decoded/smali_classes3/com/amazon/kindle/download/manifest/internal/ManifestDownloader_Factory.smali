.class public final Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;
.super Ljava/lang/Object;
.source "ManifestDownloader_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;",
        ">;"
    }
.end annotation


# instance fields
.field private final jobFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;",
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
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;->jobFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;",
            ">;)",
            "Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;",
            ">;)",
            "Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;-><init>(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;->jobFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader_Factory;->get()Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    move-result-object v0

    return-object v0
.end method
