.class public Lcom/amazon/kcp/library/ContentMetadataDisplayItem;
.super Lcom/amazon/kcp/library/BaseLibraryDisplayItem;
.source "ContentMetadataDisplayItem.java"


# instance fields
.field private final collectionItem:Lcom/amazon/kindle/collections/dto/ICollectionItem;

.field private volatile contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

.field private filteredAsinCount:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryDisplayItem;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->filteredAsinCount:I

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 50
    iput-object p2, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->collectionItem:Lcom/amazon/kindle/collections/dto/ICollectionItem;

    return-void
.end method


# virtual methods
.method applyFilter(Lcom/amazon/kcp/library/LibraryContentFilter;Ljava/util/List;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 320
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 321
    iget-object p1, p1, Lcom/amazon/kcp/library/LibraryContentFilter;->libraryDisplayItemPredicate:Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    .line 322
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/model/content/IListableBook;

    .line 323
    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v2, :cond_1

    .line 325
    new-instance v3, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    if-eqz p1, :cond_2

    .line 326
    invoke-interface {p1, v3}, Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;->matches(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    .line 345
    iput p1, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->filteredAsinCount:I

    return-object p0

    :cond_4
    const/4 p1, 0x0

    .line 341
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 342
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/content/ContentMetadata;->setAsinCount(I)V

    .line 343
    new-instance p2, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-object p2

    :cond_5
    return-object v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsinCount()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->filteredAsinCount:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsinCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionItem()Lcom/amazon/kindle/collections/dto/ICollectionItem;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->collectionItem:Lcom/amazon/kindle/collections/dto/ICollectionItem;

    return-object v0
.end method

.method public getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupItemPosition()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getGroupItemPosition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessed()Ljava/util/Date;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessed()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    return-object v0
.end method

.method public getReadingProgress()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result v0

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    return-object v0
.end method

.method public isArchivable()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    return v0
.end method

.method public isComic()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsComic()Z

    move-result v0

    return v0
.end method

.method public isFalkor()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v0

    return v0
.end method

.method public isFromOrderedSeries()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isFromOrderedSeries()Z

    move-result v0

    return v0
.end method

.method public isKept()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isKept()Z

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    return v0
.end method

.method public isNew()Z
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->getReadingProgress()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPeriodical()Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isPeriodical()Z

    move-result v0

    return v0
.end method

.method public isSample()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v0

    return v0
.end method

.method public refreshItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 3

    .line 138
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public toKrxBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 2

    .line 241
    new-instance v0, Lcom/amazon/kindle/krx/content/Book;

    iget-object v1, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentMetadataDisplayItem{contentMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->contentMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collectionItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->collectionItem:Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
