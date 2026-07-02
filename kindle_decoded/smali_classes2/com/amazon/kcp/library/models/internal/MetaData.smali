.class public Lcom/amazon/kcp/library/models/internal/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private archivable:Z

.field private asin:Ljava/lang/String;

.field private authors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/kcp/library/models/internal/AuthorMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private cdeContentType:Ljava/lang/String;

.field private contentTags:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private deleteLocalBookOnOwnershipRevoke:Z

.field private dictionaryDescription:Ljava/lang/String;

.field private dictionaryLocale:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dictionaryShortTitle:Ljava/lang/String;

.field private dictionarySubLanguage:Ljava/lang/String;

.field private extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

.field private hasReadAlongTitle:Z

.field private isMultimediaEnabled:Z

.field private language:Ljava/lang/String;

.field private originType:Ljava/lang/String;

.field private parentAsin:Ljava/lang/String;

.field private publicationDate:Ljava/lang/String;

.field private publishers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseDate:J

.field private shareOriginId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleDetailsJson:Ljava/lang/String;

.field private titlePronunciation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/MetaData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->language:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->parentAsin:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->originType:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->shareOriginId:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    .line 41
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 44
    iput-wide v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->purchaseDate:J

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->hasReadAlongTitle:Z

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->titlePronunciation:Ljava/lang/String;

    .line 48
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->isMultimediaEnabled:Z

    .line 50
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->archivable:Z

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionarySubLanguage:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionaryDescription:Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionaryLocale:Ljava/util/List;

    .line 54
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionaryShortTitle:Ljava/lang/String;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->deleteLocalBookOnOwnershipRevoke:Z

    .line 56
    new-instance v0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    invoke-direct {v0}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    .line 57
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->titleDetailsJson:Ljava/lang/String;

    return-void
.end method

.method private getAllAuthorPronunciations()Ljava/lang/String;
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/models/internal/AuthorMetadata;

    .line 173
    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/AuthorMetadata;->getPronunciation()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "; "

    .line 178
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method private getAllAuthors()Ljava/lang/String;
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/models/internal/AuthorMetadata;

    .line 151
    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/AuthorMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "; "

    .line 156
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public addAuthor(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/models/internal/MetaData;->addAuthor(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addAuthor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/kcp/library/models/internal/AuthorMetadata;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/library/models/internal/AuthorMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addPublisher(Ljava/lang/String;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 361
    instance-of v0, p1, Lcom/amazon/kcp/library/models/internal/MetaData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 362
    check-cast p1, Lcom/amazon/kcp/library/models/internal/MetaData;

    .line 363
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->parentAsin:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/internal/MetaData;->parentAsin:Ljava/lang/String;

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->originType:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/internal/MetaData;->originType:Ljava/lang/String;

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->shareOriginId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/internal/MetaData;->shareOriginId:Ljava/lang/String;

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    .line 368
    invoke-virtual {v0, v2}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    .line 369
    invoke-virtual {v0, v2}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAllAuthors()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorPronunciation()Ljava/lang/String;
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAllAuthorPronunciations()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 354
    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 345
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_0

    .line 346
    sget-object v1, Lcom/amazon/kcp/library/models/internal/MetaData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown content type: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getContentTags()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentTags:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDictionaryDescription()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionaryDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDictionaryLocale()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionaryLocale:Ljava/util/List;

    return-object v0
.end method

.method public getDictionaryShortTitle()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionaryShortTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDictionarySubLanguage()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionarySubLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentTags:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/model/content/DictionaryType;->getTypeFromTags(Ljava/lang/String;)Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedMetadata()Lcom/amazon/kindle/content/ExtendedMetadataWrapper;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->originType:Ljava/lang/String;

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->parentAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishers()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    return-object v0
.end method

.method public getPurchaseDate()J
    .locals 2

    .line 312
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->purchaseDate:J

    return-wide v0
.end method

.method public getShareOriginId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->shareOriginId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleDetailsJson()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->titleDetailsJson:Ljava/lang/String;

    return-object v0
.end method

.method public getTitlePronunciation()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->titlePronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isMultimediaEnabled()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->isMultimediaEnabled:Z

    return v0
.end method

.method public isSample()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    .line 225
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    return-void
.end method

.method public setCdeContentType(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    return-void
.end method

.method public setContentTags(Ljava/lang/String;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentTags:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setDeleteLocalBookOnOwnershipRevoke(Z)V
    .locals 0

    .line 453
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->deleteLocalBookOnOwnershipRevoke:Z

    return-void
.end method

.method public setDictionaryDescription(Ljava/lang/String;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionaryDescription:Ljava/lang/String;

    return-void
.end method

.method public setDictionaryLocale(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionaryLocale:Ljava/util/List;

    return-void
.end method

.method public setDictionaryShortTitle(Ljava/lang/String;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionaryShortTitle:Ljava/lang/String;

    return-void
.end method

.method public setDictionarySubLanguage(Ljava/lang/String;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->dictionarySubLanguage:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->language:Ljava/lang/String;

    return-void
.end method

.method public setMultimediaEnabled(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->isMultimediaEnabled:Z

    return-void
.end method

.method public setOriginType(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->originType:Ljava/lang/String;

    return-void
.end method

.method public setParentAsin(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->parentAsin:Ljava/lang/String;

    return-void
.end method

.method public setPublicationDate(Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    return-void
.end method

.method public setPurchaseDate(J)V
    .locals 0

    .line 332
    iput-wide p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->purchaseDate:J

    return-void
.end method

.method public setShareOriginId(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->shareOriginId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleDetailsJson(Ljava/lang/String;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->titleDetailsJson:Ljava/lang/String;

    return-void
.end method

.method public setTitlePronunciation(Ljava/lang/String;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->titlePronunciation:Ljava/lang/String;

    return-void
.end method

.method public shouldDeleteLocalBookOnOwnershipRevoke()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->deleteLocalBookOnOwnershipRevoke:Z

    return v0
.end method
