.class public Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;
.super Lcom/amazon/kcp/library/BaseLibraryDisplayItem;
.source "LazyLoadingContentMetadataDisplayItem.java"


# instance fields
.field private final bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private final lastAccessed:Ljava/util/Date;

.field private final loader:Lcom/amazon/kcp/library/cache/IContentMetadataLoader;

.field private final state:Lcom/amazon/kindle/model/content/ContentState;

.field private final type:Lcom/amazon/kcp/library/models/BookType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/cache/IContentMetadataLoader;)V
    .locals 6

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessed()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Date;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kcp/library/cache/IContentMetadataLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Date;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kcp/library/cache/IContentMetadataLoader;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryDisplayItem;-><init>()V

    .line 58
    iput-object p5, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->loader:Lcom/amazon/kcp/library/cache/IContentMetadataLoader;

    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 60
    iput-object p2, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->lastAccessed:Ljava/util/Date;

    .line 61
    iput-object p3, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->type:Lcom/amazon/kcp/library/models/BookType;

    .line 62
    iput-object p4, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->state:Lcom/amazon/kindle/model/content/ContentState;

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsinCount()I
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsinCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getCollectionItem()Lcom/amazon/kindle/collections/dto/ICollectionItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->loader:Lcom/amazon/kcp/library/cache/IContentMetadataLoader;

    iget-object v1, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/cache/IContentMetadataLoader;->getMetadata(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLastAccessed()Ljava/util/Date;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->lastAccessed:Ljava/util/Date;

    return-object v0
.end method

.method public getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getReadingProgress()I
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSize()J
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getFileSize()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getState()Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->state:Lcom/amazon/kindle/model/content/ContentState;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->type:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public isArchivable()Z
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKept()Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isKept()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocal()Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNew()Z
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getReadingProgress()I

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

    .line 273
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isPeriodical()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSample()Z
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toKrxBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 2

    .line 263
    invoke-virtual {p0}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v1, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentMetadataDisplayItem{bookId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
