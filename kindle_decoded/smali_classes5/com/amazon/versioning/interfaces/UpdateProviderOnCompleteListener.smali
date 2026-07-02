.class public interface abstract Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;
.super Ljava/lang/Object;
.source "UpdateProviderOnCompleteListener.java"


# virtual methods
.method public abstract onNextBatchFailed()V
.end method

.method public abstract onNextBatchFetched(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;",
            ">;)V"
        }
    .end annotation
.end method
