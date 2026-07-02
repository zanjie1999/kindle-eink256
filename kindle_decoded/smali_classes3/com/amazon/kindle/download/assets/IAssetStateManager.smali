.class public interface abstract Lcom/amazon/kindle/download/assets/IAssetStateManager;
.super Ljava/lang/Object;
.source "IAssetStateManager.java"


# virtual methods
.method public abstract addAssets(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract addDownloadGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z
.end method

.method public abstract addGroup(Lcom/amazon/kindle/services/download/IAssetGroup;)Z
.end method

.method public abstract getAllAssets(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAsset(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IBookAsset;
.end method

.method public abstract getAssetState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetState;
.end method

.method public abstract getAssets(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/services/download/AssetState;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/services/download/AssetPriority;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/services/download/AssetType;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssetsForAssetIds(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBookIdForMainContentFile(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;
.end method

.method public abstract getDownloadGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
.end method

.method public abstract getDownloadGroupProperties(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/download/assets/AssetField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalContentSize(Lcom/amazon/kindle/model/content/IBookID;)J
.end method

.method public abstract purgeAssets(Lcom/amazon/kindle/model/content/IBookID;)V
.end method

.method public abstract registerDownloadAssetCompleteHandler(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/event/IEventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract unpersistAllAssets(Lcom/amazon/kindle/model/content/IBookID;)V
.end method

.method public abstract unpersistAllAssets(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterDownloadAssetCompleteHandler(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/event/IEventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract updateAsset(Lcom/amazon/kindle/services/download/IBookAsset;Lcom/amazon/kindle/download/assets/AssetStateContentValues;)Z
.end method

.method public abstract updateAssetGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z
.end method

.method public abstract updateAssetState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetState;J)V
.end method

.method public abstract updateGroupId(Ljava/lang/String;Ljava/lang/String;)V
.end method
