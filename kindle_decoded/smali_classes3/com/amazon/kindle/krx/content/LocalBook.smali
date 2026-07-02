.class public Lcom/amazon/kindle/krx/content/LocalBook;
.super Lcom/amazon/kindle/krx/content/BaseBook;
.source "LocalBook.java"


# instance fields
.field private final bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    if-eqz p1, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bookItem can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getASIN()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/LocalBook;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/BookFormat;->getBookFormatFromMimeType(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/ContentUtil;->convertContentClass(Lcom/amazon/kindle/model/content/ContentClass;)Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;
    .locals 1

    .line 78
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    return-object v0
.end method

.method public getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;
    .locals 5

    .line 96
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/LocalBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v1

    .line 101
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getFurthestPositionRead()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    instance-of v3, v2, Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v3, :cond_1

    .line 108
    check-cast v2, Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 109
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v1

    .line 112
    :cond_1
    new-instance v2, Lcom/amazon/kindle/krx/content/LocalBookData;

    new-instance v3, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    .line 116
    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/amazon/kindle/krx/content/LocalBookData;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    return-object v2
.end method

.method public getLocalBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    instance-of v1, v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v1, :cond_0

    .line 156
    check-cast v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getOriginType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    invoke-super {p0}, Lcom/amazon/kindle/krx/content/BaseBook;->getOriginType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    instance-of v1, v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v0

    return-wide v0

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/amazon/kindle/krx/content/BaseBook;->getPublicationDateInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getPublisher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    return-object v0
.end method

.method public getReadingProgress()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookReadingProgress()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRecaps()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->hasRecaps()Z

    move-result v0

    return v0
.end method

.method public isArchivable()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->isArchivable()Z

    move-result v0

    return v0
.end method

.method public isDictionary()Z
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/LocalBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/LocalBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isCustomDictionary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFalkorEpisode()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFixedLayout()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    return v0
.end method

.method public isFreeTrial()Z
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIllustrated()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/LocalBook;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isKindleIllustratedSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/LocalBook;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method
