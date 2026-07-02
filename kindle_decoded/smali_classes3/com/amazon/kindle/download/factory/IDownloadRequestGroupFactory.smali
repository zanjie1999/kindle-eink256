.class public interface abstract Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;
.super Ljava/lang/Object;
.source "DownloadRequestGroupFactory.kt"


# virtual methods
.method public abstract createDownloadRequestGroup(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Ljava/util/Map;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;"
        }
    .end annotation
.end method

.method public abstract createNonToadDownloadRequestGroup(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
.end method

.method public abstract recreateExistingRequestGroup(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Ljava/util/Collection;Lcom/amazon/kindle/download/assets/IAssetStateManager;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ")",
            "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;"
        }
    .end annotation
.end method
