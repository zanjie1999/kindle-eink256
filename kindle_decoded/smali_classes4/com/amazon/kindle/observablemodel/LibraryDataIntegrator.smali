.class public interface abstract Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;
.super Ljava/lang/Object;
.source "LibraryDataIntegrator.java"


# virtual methods
.method public abstract beginBatchRequestForAccount(Ljava/lang/String;)V
.end method

.method public abstract endBatchRequestForAccount(Ljava/lang/String;)V
.end method

.method public abstract requestCollectionSet(Ljava/lang/String;)V
.end method

.method public abstract requestItemDetail(Ljava/util/Set;Ljava/lang/String;)V
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

.method public abstract requestItemDictionaryForAudibleCompanion(Ljava/lang/String;)V
.end method

.method public abstract requestItemDictionaryForSortType(ILjava/lang/String;)V
.end method

.method public abstract requestItemSetForAccountType(ILjava/lang/String;)V
.end method

.method public abstract requestItemSetForCarousel(Ljava/lang/String;)V
.end method

.method public abstract requestItemSetForItemCategory(ILjava/lang/String;)V
.end method

.method public abstract requestItemSetForOwnership(ILjava/lang/String;)V
.end method

.method public abstract requestItemSetForReadingProgress(ILjava/lang/String;)V
.end method

.method public abstract requestItemSetForSampleMembership(Ljava/lang/String;)V
.end method

.method public abstract requestItemToItemDictionary(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setObserver(Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;)V
.end method
