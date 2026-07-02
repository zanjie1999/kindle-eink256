.class public interface abstract Lcom/amazon/kindle/content/IGroupService;
.super Ljava/lang/Object;
.source "IGroupService.java"


# virtual methods
.method public abstract addGroup(Lcom/amazon/kindle/content/GroupMetadata;)V
.end method

.method public abstract addGroupItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;Lcom/amazon/kcp/library/models/BookType;)V
.end method

.method public abstract addGroups(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteGroup(Lcom/amazon/kindle/model/content/IBookID;)V
.end method

.method public abstract deleteGroupItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)V
.end method

.method public abstract deleteGroups(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupCoverBookId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;
.end method

.method public abstract getGroupItems([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;
.end method

.method public abstract getGroupMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
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

.method public abstract getGroupMetadataWithItems(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
.end method

.method public abstract getGroupTitleById(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getGroups([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;
.end method

.method public abstract getGroups(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;
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

.method public abstract getSeriesIdFromItemId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;
.end method

.method public abstract isGroupComics(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;
.end method

.method public abstract isGroupFalkorStory(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract updateGroupItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)V
.end method

.method public abstract wrapLibraryQuery(Lcom/amazon/kindle/content/ILibraryService;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;
.end method
