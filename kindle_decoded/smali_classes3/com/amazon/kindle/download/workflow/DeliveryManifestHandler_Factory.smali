.class public final Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;
.super Ljava/lang/Object;
.source "DeliveryManifestHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final assetStateManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private final facadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->facadeProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->downloadManagerProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->manifestSerializerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->manifestDownloaderProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p5, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->assetStateManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;)",
            "Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;"
        }
    .end annotation

    .line 66
    new-instance v6, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;)",
            "Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;"
        }
    .end annotation

    .line 52
    new-instance v6, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    .line 53
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 54
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    .line 55
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    .line 56
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    .line 57
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;Lcom/amazon/kindle/download/assets/IAssetStateManager;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->facadeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->downloadManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->manifestSerializerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->manifestDownloaderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->assetStateManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler_Factory;->get()Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    move-result-object v0

    return-object v0
.end method
