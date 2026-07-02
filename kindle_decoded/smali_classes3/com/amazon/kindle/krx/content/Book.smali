.class public Lcom/amazon/kindle/krx/content/Book;
.super Lcom/amazon/kindle/krx/content/BaseBook;
.source "Book.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final metadata:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kindle/krx/content/Book;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/content/Book;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBook;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz p1, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "metadata can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getASIN()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthors()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/Book;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/BookFormat;->getBookFormatFromMimeType(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    goto :goto_0

    .line 167
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/ContentUtil;->convertContentClass(Lcom/amazon/kindle/model/content/ContentClass;)Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;
    .locals 2

    .line 90
    sget-object v0, Lcom/amazon/kindle/krx/content/Book$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    return-object v0

    .line 101
    :pswitch_0
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->FAILED:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    return-object v0

    .line 99
    :pswitch_1
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->QUEUED:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    return-object v0

    .line 97
    :pswitch_2
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    return-object v0

    .line 95
    :pswitch_3
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    return-object v0

    .line 93
    :pswitch_4
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->DOWNLOADING:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getExtendedMetadata()Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFilename()Ljava/lang/String;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFpr()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 222
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getFurthestPositionRead()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;
    .locals 5

    .line 119
    new-instance v0, Lcom/amazon/kindle/krx/content/LocalBookData;

    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 120
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    new-instance v2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 121
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getFurthestPositionRead()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 122
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->isNew()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    .line 123
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/krx/content/LocalBookData;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    return-object v0
.end method

.method public getLpr()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 217
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMrpr()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getMrpr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    sget-object v0, Lcom/amazon/kindle/krx/content/Book;->TAG:Ljava/lang/String;

    const-string v1, "Exception converting mrpr to integer value"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 212
    :goto_0
    new-instance v1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v1
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublisher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    return-object v0
.end method

.method public getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadingProgress()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isArchivable()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    return v0
.end method

.method public isDictionary()Z
    .locals 2

    .line 227
    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFalkorEpisode()Z
    .locals 1

    .line 251
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

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

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFreeTrial()Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
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

.method public isHidden()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Book;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsHidden()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/Book;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/Book;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
