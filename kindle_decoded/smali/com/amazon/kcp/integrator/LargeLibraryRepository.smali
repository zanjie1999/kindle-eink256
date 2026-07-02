.class public interface abstract Lcom/amazon/kcp/integrator/LargeLibraryRepository;
.super Ljava/lang/Object;
.source "LargeLibraryRepository.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract handleBookRemovedFromDownloaded(Lcom/amazon/kindle/model/content/IBookID;)V
.end method

.method public abstract handleBooksAddedToCollection(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handleBooksAddedToSeries(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleBooksOrderingChangedInCollection(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handleBooksReadingStateDidChange(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleBooksRemoved(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleBooksRemovedFromCollection(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handleBooksRemovedFromSeries(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleCollectionAdded(Ljava/lang/String;)V
.end method

.method public abstract handleCollectionNameChanged(Ljava/lang/String;)V
.end method

.method public abstract handleCollectionRemoved(Ljava/lang/String;)V
.end method

.method public abstract handleContentUpdates(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleFalkorDataSetChange(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleNarrativesAdded(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleNarrativesRemoved(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleSeriesAdded(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleSeriesAddedToNarratives(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleSeriesRemoved(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preloadCache()V
.end method

.method public abstract setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
