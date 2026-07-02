.class public interface abstract Lcom/amazon/kcp/cover/ICoverCacheManager;
.super Ljava/lang/Object;
.source "ICoverCacheManager.java"


# virtual methods
.method public abstract cacheCovers(Ljava/util/Map;ILcom/amazon/kindle/util/drawing/Dimension;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;I",
            "Lcom/amazon/kindle/util/drawing/Dimension;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract cancel(Lcom/amazon/kcp/cover/UpdatableCover;)V
.end method

.method public abstract clearCache()V
.end method

.method public abstract clearCache(Ljava/lang/String;)V
.end method

.method public abstract getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kcp/cover/UpdatableCover;
.end method

.method public abstract getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;
.end method

.method public abstract getCover(Lcom/amazon/kindle/model/content/IBookID;III)Lcom/amazon/kcp/cover/UpdatableCover;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getCover(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;
.end method

.method public abstract getCover(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;IZLjava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/cover/UpdatableCover;
.end method

.method public abstract getMaxCoversCached(Lcom/amazon/kindle/util/drawing/Dimension;)I
.end method

.method public abstract pauseUpdates()V
.end method

.method public abstract resumeUpdates()V
.end method

.method public abstract setCachePivot(ILcom/amazon/kindle/cover/ImageSizes$Type;)V
.end method

.method public abstract setCachePivot(ILcom/amazon/kindle/util/drawing/Dimension;)V
.end method

.method public abstract updateCoverPosition(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;I)V
.end method
