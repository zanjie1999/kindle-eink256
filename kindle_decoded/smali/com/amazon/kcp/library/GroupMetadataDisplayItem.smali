.class public Lcom/amazon/kcp/library/GroupMetadataDisplayItem;
.super Lcom/amazon/kcp/library/BaseLibraryDisplayItem;
.source "GroupMetadataDisplayItem.java"

# interfaces
.implements Lcom/amazon/kcp/library/IGroupDisplayItem;


# instance fields
.field private coverBookId:Lcom/amazon/kindle/model/content/IBookID;

.field private filteredAsinCount:I

.field private lastAccessed:Ljava/util/Date;

.field private final libraryDataCache:Lcom/amazon/kindle/content/dao/LibraryDataCache;

.field private final metadata:Lcom/amazon/kindle/content/GroupMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/dao/LibraryDataCache;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryDisplayItem;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->lastAccessed:Ljava/util/Date;

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->filteredAsinCount:I

    .line 47
    iput-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->coverBookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 51
    iput-object p1, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    .line 52
    iput-object p2, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->libraryDataCache:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    return-void
.end method

.method private getContentMetadata(Ljava/lang/String;Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->libraryDataCache:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->isCacheInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object p2, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->libraryDataCache:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getBook(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 312
    invoke-interface {p2, p1, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public applyFilter(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 7

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 252
    invoke-virtual {v4}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-direct {p0, v4, p2}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->getContentMetadata(Ljava/lang/String;Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 255
    new-instance v5, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v5, v4}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 256
    invoke-virtual {p1, v4}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessed()Ljava/util/Date;

    move-result-object v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {v4, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-lez v5, :cond_0

    :cond_1
    move-object v3, v4

    goto :goto_0

    .line 266
    :cond_2
    iput-object v3, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->lastAccessed:Ljava/util/Date;

    .line 273
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    .line 287
    iput p1, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->filteredAsinCount:I

    return-object p0

    :cond_3
    const/4 p2, 0x0

    .line 280
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    iput p1, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->filteredAsinCount:I

    return-object p0

    .line 284
    :cond_4
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-object p1

    :cond_5
    return-object v2
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsinCount()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->filteredAsinCount:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getAsinCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    return-object v0
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

    .line 345
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->coverBookId:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/GroupContentUtils;->getGroupCoverBookId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessed()Ljava/util/Date;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->lastAccessed:Ljava/util/Date;

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 75
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/amazon/kcp/util/LibraryUtils;->isKUOriginType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/amazon/kcp/util/LibraryUtils;->isPrimeOriginType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/amazon/kcp/util/LibraryUtils;->isCUOriginType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 1

    .line 156
    sget-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;

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

    .line 319
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 320
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->getReadState(Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    return-object v0
.end method

.method public getReadState(Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kindle/krx/content/IBook$ReadState;
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 327
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->getContentMetadata(Ljava/lang/String;Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    sget-object p1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-object p1

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 335
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupItemMetadata;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-ne v0, v1, :cond_2

    return-object v1

    .line 339
    :cond_3
    sget-object p1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-object p1
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

.method public getState()Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 136
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->UNKNOWN:Lcom/amazon/kindle/model/content/ContentState;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    return-object v0
.end method

.method public isArchivable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKept()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->isLocal()Z

    move-result v0

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

.method public setCoverBookId(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->coverBookId:Lcom/amazon/kindle/model/content/IBookID;

    return-void
.end method

.method public setFilteredAsinCount(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 295
    iput p1, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->filteredAsinCount:I

    :cond_0
    return-void
.end method

.method public toKrxBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 2

    .line 212
    new-instance v0, Lcom/amazon/kindle/krx/content/GroupedBook;

    iget-object v1, p0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->metadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/content/GroupedBook;-><init>(Lcom/amazon/kindle/model/content/IListableBook;)V

    return-object v0
.end method
