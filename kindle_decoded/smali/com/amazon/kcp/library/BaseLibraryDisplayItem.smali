.class public abstract Lcom/amazon/kcp/library/BaseLibraryDisplayItem;
.super Ljava/lang/Object;
.source "BaseLibraryDisplayItem.java"

# interfaces
.implements Lcom/amazon/kcp/library/ILibraryDisplayItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsinCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getBookID()Lcom/amazon/kindle/model/content/IBookID;
.end method

.method public getCollectionItem()Lcom/amazon/kindle/collections/dto/ICollectionItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoverBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/amazon/kcp/library/BaseLibraryDisplayItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupItemPosition()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;
    .locals 1

    .line 261
    sget-object v0, Lcom/amazon/kcp/library/models/SeriesGroupType;->NONE:Lcom/amazon/kcp/library/models/SeriesGroupType;

    return-object v0
.end method

.method public getItemID()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastAccessed()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;
    .locals 1

    .line 254
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-object v0
.end method

.method public getReadingProgress()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getType()Lcom/amazon/kcp/library/models/BookType;
.end method

.method public handleClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isArchivable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isComic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFalkor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFromOrderedSeries()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGroup()Z
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/amazon/kcp/library/BaseLibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isKept()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSelectionEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNew()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPeriodical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSample()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 0

    return-object p0
.end method

.method public toKrxBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
