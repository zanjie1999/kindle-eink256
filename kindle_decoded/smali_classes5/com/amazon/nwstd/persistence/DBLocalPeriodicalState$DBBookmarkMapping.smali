.class Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState$DBBookmarkMapping;
.super Ljava/lang/Object;
.source "DBLocalPeriodicalState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBBookmarkMapping"
.end annotation


# direct methods
.method public static getWhereClause()Ljava/lang/String;
    .locals 1

    const-string v0, "book_asin = ? AND book_guid = ? AND page_id = ? AND position = ?"

    return-object v0
.end method

.method public static getWhereClauseArgs(Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookAsin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookGuid:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->pageId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->position:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    return-object v0
.end method
