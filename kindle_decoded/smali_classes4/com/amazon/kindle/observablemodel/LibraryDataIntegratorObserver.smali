.class public abstract Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;
.super Ljava/lang/Object;
.source "LibraryDataIntegratorObserver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addToAccountType(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToAudibleCompanion(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToCarousel(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToCollectionMembership(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToFalkorMembership(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToItemCategory(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToItemToItemDictionary(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToOwnership(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToRawStringData(Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/RawDictionaryType;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToReadingProgress(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToSampleMembership(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToSortTypeDate(ILjava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Date;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToSortTypeNumber(ILjava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addToSortTypeString(ILjava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract flushChanges()V
.end method

.method public abstract flushChanges(Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V
.end method

.method public abstract onItemDetail(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromAccountType(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromAudibleCompanion(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromCarousel(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromCollectionMembership(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromFalkorMembership(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromItemCategory(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromItemToItemDictionary(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromOwnership(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromRawData(Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/RawDictionaryType;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromReadingProgress(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromSampleMembership(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeFromSortType(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetAccountType(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetAudibleCompanion(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetCarousel(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetCollectionMembership(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetFalkorMembership(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetItemCategory(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetItemToItemDictionary(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetOwnership(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetRawStringData(Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/RawDictionaryType;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetReadingProgress(ILjava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetSampleMembership(Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetSortTypeDate(ILjava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Date;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetSortTypeNumber(ILjava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetSortTypeString(ILjava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
