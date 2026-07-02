.class public abstract Lcom/amazon/kindle/observablemodel/LibraryModel;
.super Ljava/lang/Object;
.source "LibraryModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract addCollectionItemsInLeafDictionary(Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract addItemDatesInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract addItemIntegersInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract addItemItemsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract addItemStringsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract changeUpdateForCurrentValue(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;
.end method

.method abstract containerIDForCountOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)Lcom/amazon/kindle/observablemodel/ContainerID;
.end method

.method abstract containerIDForGroupOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)Lcom/amazon/kindle/observablemodel/ContainerID;
.end method

.method abstract containerIDForPresentationOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)Lcom/amazon/kindle/observablemodel/ContainerID;
.end method

.method abstract countCurrentForContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelCountUpdate;
.end method

.method abstract countUpdateForContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelCountUpdate;
.end method

.method abstract createLeafDictionary(Ljava/lang/String;)V
.end method

.method abstract createLeafSet(Ljava/lang/String;)V
.end method

.method abstract emptyLeaves()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract eraseLeafDictionary(Ljava/lang/String;)V
.end method

.method abstract eraseLeafSet(Ljava/lang/String;)V
.end method

.method abstract getChangeUpdateForContainerAndReset(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;
.end method

.method abstract groupCurrentForContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;
.end method

.method abstract groupUpdateForContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;
.end method

.method abstract neededAccountTypes(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract neededGroupingLeaves(Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract neededItemCategories(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract neededOwnership(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract neededReadingProgress(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract neededSortType(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract releaseContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)V
.end method

.method abstract removeCollectionItemsInLeafDictionary(Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract removeItemsFromLeafDictionary(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract removeItemsFromLeafSet(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract resetFilterText(Ljava/lang/String;)V
.end method

.method abstract setFilterText(Ljava/lang/String;Ljava/lang/String;)V
.end method
