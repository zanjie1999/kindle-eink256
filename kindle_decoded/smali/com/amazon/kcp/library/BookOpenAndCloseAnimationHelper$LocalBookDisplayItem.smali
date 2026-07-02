.class final Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;
.super Lcom/amazon/kcp/library/BaseLibraryDisplayItem;
.source "BookOpenAndCloseAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalBookDisplayItem"
.end annotation


# instance fields
.field private final localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 442
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryDisplayItem;-><init>()V

    .line 443
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsinCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

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

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastAccessed()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadingProgress()I
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookReadingProgress()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getState()Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    return-object v0
.end method

.method public isArchivable()Z
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->isArchivable()Z

    move-result v0

    return v0
.end method

.method public isKept()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLocal()Z
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

    .line 558
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$LocalBookDisplayItem;->localBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v0

    return v0
.end method

.method public toKrxBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
