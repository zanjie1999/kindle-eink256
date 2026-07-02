.class public interface abstract Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;
.super Ljava/lang/Object;
.source "IContentAvailabilityController.java"


# virtual methods
.method public abstract addAssetDownloadTracker(Ljava/util/List;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ")V"
        }
    .end annotation
.end method

.method public abstract areAllAssetsAttached(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract init(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract prioritizeAssetDownloads(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeAssetDownloadTracker(Ljava/util/List;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ")V"
        }
    .end annotation
.end method
