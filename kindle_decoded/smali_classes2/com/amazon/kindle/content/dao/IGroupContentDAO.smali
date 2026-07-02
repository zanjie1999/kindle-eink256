.class public interface abstract Lcom/amazon/kindle/content/dao/IGroupContentDAO;
.super Ljava/lang/Object;
.source "IGroupContentDAO.java"


# virtual methods
.method public abstract createGroupDeletionEntry(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
.end method

.method public abstract createGroupInsertEntry(Lcom/amazon/kindle/content/GroupMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
.end method

.method public abstract createGroupItemDeleteEntry(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
.end method

.method public abstract createGroupItemInsertEntry(Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/GroupItemMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
.end method

.method public abstract createGroupItemUpdateEntry(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
.end method

.method public abstract getAllGroups(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFilteredLibraryContent(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/db/OrderBy;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;
.end method

.method public abstract getGroupContentFromLibraryCall(Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/db/OrderBy;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;
.end method

.method public abstract getGroupItems([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;
.end method

.method public abstract getGroupMetadataForId(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
.end method

.method public abstract getGroupMetadataWithItems(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/GroupMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/content/GroupMetadata;"
        }
    .end annotation
.end method

.method public abstract getGroupMetadataWithItemsForId(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
.end method

.method public abstract getGroupTitleById(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getGroups([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;
.end method

.method public abstract getGroupsWithFilter(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemsForGroup(Lcom/amazon/kindle/model/content/IBookID;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;
.end method

.method public abstract getMaxSizeOfGroup()I
.end method

.method public abstract getNumberOfGroups()I
.end method

.method public abstract getOriginTypesForNarrativeById(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOriginTypesForNarrativeByTitle(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSeriesIdFromItemId(Lcom/amazon/kindle/model/content/IBookID;)Landroid/database/Cursor;
.end method

.method public abstract runTransaction(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/kindle/content/dao/DaoTransactionEntry;",
            ">;)V"
        }
    .end annotation
.end method
