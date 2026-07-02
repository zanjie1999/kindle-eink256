.class final Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$assetGroupFactory$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeliveryManifestHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/download/assets/AssetGroupFactory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$assetGroupFactory$2;->this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/download/assets/AssetGroupFactory;
    .locals 3

    .line 82
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetGroupFactory;

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$assetGroupFactory$2;->this$0:Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    invoke-static {v1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->access$getKrlDownloadFacade$p(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;)Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getFileConnectionFactory()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    const-string v2, "krlDownloadFacade.fileConnectionFactory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/assets/AssetGroupFactory;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$assetGroupFactory$2;->invoke()Lcom/amazon/kindle/download/assets/AssetGroupFactory;

    move-result-object v0

    return-object v0
.end method
