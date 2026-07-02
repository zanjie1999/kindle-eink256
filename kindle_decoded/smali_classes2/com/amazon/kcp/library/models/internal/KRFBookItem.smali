.class public Lcom/amazon/kcp/library/models/internal/KRFBookItem;
.super Lcom/amazon/kcp/library/models/internal/CLocalBookItem;
.source "KRFBookItem.java"


# static fields
.field private static final PARENT_ASIN_METADATA_KEY:Ljava/lang/String; = "parent_asin"

.field private static final TAG:Ljava/lang/String;

.field private static final VOLUME_LABEL_TAG:Ljava/lang/String; = "volume_label"


# instance fields
.field private apnxFilename:Ljava/lang/String;

.field private asin:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private authorPronunciation:Ljava/lang/String;

.field private baseLanguage:Ljava/lang/String;

.field private bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

.field private cdeContentType:Ljava/lang/String;

.field private clippingLimit:F

.field private contentClass:Lcom/amazon/kindle/model/content/ContentClass;

.field private expirationDate:J

.field private expirationOffset:J

.field private fileName:Ljava/lang/String;

.field private fixedLayout:Z

.field private guid:Ljava/lang/String;

.field private hasDictionaryLookups:Z

.field private hasOwnershipOfIDocumentInfo:Z

.field private hasPublisherFonts:Z

.field private isBookLoaded:Z

.field private isEncrypted:Z

.field private isTtsAllowed:Z

.field private krfBookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

.field private lastModificationDate:J

.field private mbpFilename:Ljava/lang/String;

.field private metadataModel:Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;

.field private metadataPopulated:Z

.field private mimeType:Ljava/lang/String;

.field private orientation:Lcom/amazon/kindle/model/content/BookOrientation;

.field private originType:Ljava/lang/String;

.field private ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field private parentAsin:Ljava/lang/String;

.field private primaryWritingMode:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

.field private publicationDate:Ljava/util/Date;

.field private publisher:Ljava/lang/String;

.field private readingDirection:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

.field private regionMagnification:Z

.field private sample:Z

.field private sidecarPath:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titlePronunciation:Ljava/lang/String;

.field private volumeLabel:Ljava/lang/String;

.field private watermark:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 0

    .line 71
    invoke-direct {p0, p11, p12}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    const/4 p11, 0x0

    .line 1114
    iput-object p11, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->parentAsin:Ljava/lang/String;

    .line 1118
    iput-object p11, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->originType:Ljava/lang/String;

    const/4 p11, 0x0

    .line 1152
    iput-boolean p11, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->metadataPopulated:Z

    .line 72
    iput-boolean p11, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->isBookLoaded:Z

    .line 73
    iput-boolean p11, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasOwnershipOfIDocumentInfo:Z

    .line 74
    iput-wide p2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileLastModified:J

    .line 75
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz p4, :cond_1

    .line 78
    invoke-interface {p4}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->asin:Ljava/lang/String;

    .line 79
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/amazon/kcp/library/models/BookType;->getCDEContentTypeFor(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->cdeContentType:Ljava/lang/String;

    .line 81
    sget-object p2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->sample:Z

    .line 83
    :cond_1
    iput-object p5, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->title:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->author:Ljava/lang/String;

    if-eqz p7, :cond_2

    .line 86
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo p2, "yyyy-MM-dd"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    :try_start_0
    invoke-virtual {p1, p7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->publicationDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    :catch_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->publicationDate:Ljava/util/Date;

    .line 93
    :cond_2
    :goto_1
    iput-wide p9, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->lastModificationDate:J

    .line 94
    iput-object p8, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgress:Ljava/lang/Integer;

    const p1, 0x3dcccccd    # 0.1f

    .line 97
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->clippingLimit:F

    .line 100
    iput-boolean p11, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasDictionaryLookups:Z

    return-void
.end method

.method private getAuthorPronunciation(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x205

    .line 860
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getContentClass(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/kindle/model/content/ContentClass;
    .locals 2

    const/16 v0, 0x7b

    .line 989
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 992
    sget-object p1, Lcom/amazon/kindle/model/content/ContentClass;->DEFAULT:Lcom/amazon/kindle/model/content/ContentClass;

    return-object p1

    .line 995
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 996
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 998
    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->DEFAULT:Lcom/amazon/kindle/model/content/ContentClass;

    .line 1001
    :try_start_0
    invoke-static {v0}, Lcom/amazon/kindle/model/content/ContentClass;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1003
    :catch_0
    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->DEFAULT:Lcom/amazon/kindle/model/content/ContentClass;

    .line 1006
    :goto_0
    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1007
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->isFixedLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasRegionMagnification()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1008
    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    :cond_1
    return-object v0
.end method

.method private getEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;I)Lcom/amazon/kindle/util/drawing/Image;
    .locals 6

    const/4 v0, 0x0

    .line 594
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getInstance()Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->createIDocumentInfo(Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 596
    sget-object v2, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create document info"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 601
    :try_start_1
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getCover()Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 603
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->getDataConst()Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v3

    .line 604
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object v3

    new-instance v4, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->getHeight()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    invoke-interface {p1, v3, p2, p3, v4}, Lcom/amazon/kindle/util/drawing/ImageFactory;->getImage([BLcom/amazon/kindle/util/drawing/Dimension;ILcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    .line 610
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->delete()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 607
    :try_start_2
    sget-object p2, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    const-string p3, "out of memory"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 610
    :goto_2
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->delete()V

    .line 611
    throw p1

    :cond_1
    :goto_3
    return-object v0
.end method

.method private getExpirationDate(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J
    .locals 2

    const/16 v0, 0x196

    .line 900
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->createBufferFromMetadata(I)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 905
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "Expiration-Time"

    .line 907
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 910
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 912
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    const-string v1, "Invalid expiration time metadata"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getExpirationOffset(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J
    .locals 2

    const/16 v0, 0x197

    .line 939
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->createBufferFromMetadata(I)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 943
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 945
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 946
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 947
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 948
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-string v0, "Expiration-Offset"

    .line 951
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 954
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 956
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    const-string v1, "Invalid expiration offset metadata"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getOrientation(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/kindle/model/content/BookOrientation;
    .locals 1

    const/16 v0, 0x7c

    .line 843
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 846
    sget-object p1, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    return-object p1

    .line 849
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 850
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 853
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/model/content/BookOrientation;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 855
    :catch_0
    sget-object p1, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    return-object p1
.end method

.method private getOwnershipType(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 6

    const/16 v0, 0x195

    .line 921
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->createBufferFromMetadata(I)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getLength()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 923
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    goto :goto_0

    :cond_0
    const-string v0, "Ownership-Type"

    .line 925
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 928
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 930
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    const-string v1, "Invalid ownership type metadata"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, -0x1

    .line 935
    :goto_0
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->ownershipTypeFromInt(I)Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object p1

    return-object p1
.end method

.method private getPrimaryWritingMode(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 0

    .line 886
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getPrimaryWritingMode()Ljava/lang/String;

    move-result-object p1

    .line 887
    invoke-static {p1}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->fromString(Ljava/lang/String;)Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized getPublicationDate(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/util/Date;
    .locals 0

    monitor-enter p0

    .line 805
    :try_start_0
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->getPublicationDate(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    .line 807
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getReadingDirection(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
    .locals 3

    .line 872
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getReadingDirection()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 880
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized reading direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    sget-object p1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    return-object p1

    .line 876
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    return-object p1

    .line 878
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    return-object p1
.end method

.method private getTitlePronunciation(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1fc

    .line 864
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTtsAllowed(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
    .locals 5

    const/16 v0, 0x194

    .line 968
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->createBufferFromMetadata(I)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getDataConst()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 970
    array-length v2, v0

    if-lez v2, :cond_2

    .line 973
    sget-object p1, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS Mobi metadata found. Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-byte v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    aget-byte p1, v0, v3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "ADOK"

    .line 978
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 980
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS Topaz metadata found. Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    .line 981
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    :goto_1
    return v1
.end method

.method private getVolumeLabel(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "volume_label"

    .line 868
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hasRegionMagnification(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
    .locals 1

    const/16 v0, 0x84

    .line 895
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 896
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private isFixedLayout(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
    .locals 0

    .line 891
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->isFixedLayout()Z

    move-result p1

    return p1
.end method

.method private static normalizeBaseLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    .line 813
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "-"

    .line 816
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    .line 819
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private populateBookInfo(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kcp/library/models/BookFileEnumerator;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->releaseBookInfo()V

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    .line 142
    invoke-virtual {p2, p0}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->getSidecarPath(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->sidecarPath:Ljava/lang/String;

    .line 144
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->metadataPopulated:Z

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V

    .line 147
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->populatedMetadata(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;->delete()V

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return p1

    .line 155
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->getEncryptedBookSettings(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->mbpFilename:Ljava/lang/String;

    .line 156
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->getBookPageNumbers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->apnxFilename:Ljava/lang/String;

    .line 158
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->populateExtendedMetadata(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V

    .line 160
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->loadLocalBookState()V

    .line 161
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object p2, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->mbpFilename:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amazon/kindle/io/FileSystemHelper;->getLastModifiedDate(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->lastModificationDate:J

    .line 162
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object p2, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amazon/kindle/io/FileSystemHelper;->getLastModifiedDate(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileLastModified:J

    .line 164
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->sidecarPath:Ljava/lang/String;

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->isBookLoaded:Z

    return p1
.end method

.method private populateExtendedMetadata(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->isArchivable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->baseLanguage:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->normalizeBaseLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->baseLanguage:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->normalizeBaseLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->baseLanguage:Ljava/lang/String;

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getReadingDirection(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->readingDirection:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getPrimaryWritingMode(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->primaryWritingMode:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->getBookType(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/krfhacks/KRFHacks$BookType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->krfBookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    .line 280
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getOrientation(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->orientation:Lcom/amazon/kindle/model/content/BookOrientation;

    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->isFixedLayout(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fixedLayout:Z

    .line 282
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasRegionMagnification(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->regionMagnification:Z

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getContentClass(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->contentClass:Lcom/amazon/kindle/model/content/ContentClass;

    .line 284
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->mimeType:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getClippingLimit()F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->clippingLimit:F

    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getExpirationDate(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->expirationDate:J

    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getExpirationOffset(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->expirationOffset:J

    .line 288
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getTitlePronunciation(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->titlePronunciation:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getAuthorPronunciation(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->authorPronunciation:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getVolumeLabel(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->volumeLabel:Ljava/lang/String;

    .line 291
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getTtsAllowed(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->isTtsAllowed:Z

    .line 292
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->hasEmbeddedFonts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasPublisherFonts:Z

    .line 293
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->hasDictionaryLookups()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasDictionaryLookups:Z

    .line 295
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->setBookStartingPositionFromDocument(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->setBookFurthestPositionFromDocument(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V

    .line 297
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->setBookLastPositionFromDocument(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V

    return-void
.end method

.method private populatedMetadata(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->title:Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IDocumentInfo bookInfo asin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bookInfo dictIn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x213

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bookInfo dictOut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x214

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bookInfo base language:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->asin:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->author:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->isSample()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->sample:Z

    .line 247
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getPublisher()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->publisher:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v1, v0

    :cond_1
    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->guid:Ljava/lang/String;

    .line 251
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getPublicationDate(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->publicationDate:Ljava/util/Date;

    .line 252
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->isEncrypted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->isEncrypted:Z

    .line 253
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;->getWatermark()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->watermark:Ljava/lang/String;

    .line 254
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;->getCDEContentType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "EBOK"

    .line 255
    :goto_1
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->cdeContentType:Ljava/lang/String;

    .line 256
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getOwnershipType(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 262
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object p2, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/kindle/io/IFileConnection;

    move-result-object p1

    .line 263
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    .line 264
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->asin:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnection;->lastModified()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->computeBookID(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;J)V

    .line 265
    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnection;->close()V

    return-void
.end method

.method private releaseBookInfo()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasOwnershipOfIDocumentInfo:Z

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->delete()V

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    const/4 v1, 0x0

    .line 369
    iput-boolean v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasOwnershipOfIDocumentInfo:Z

    .line 372
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->metadataModel:Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized createPageLabels()Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;
    .locals 3

    monitor-enter p0

    .line 390
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPageNumberProviderFactory()Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->apnxFilename:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;->locateProvider(Ljava/lang/String;)Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    move-result-object v0

    .line 391
    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->StaticPagination:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAmzGuid()Ljava/lang/String;
    .locals 1

    .line 483
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 484
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->guid:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized getAmznUserLocationFromPosition(I)I
    .locals 2

    monitor-enter p0

    .line 640
    :try_start_0
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 643
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getLocationFromPositionId(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    long-to-int p1, v0

    monitor-exit p0

    return p1

    .line 651
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getBookInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    .line 652
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getLocationFromPositionId(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int p1, v0

    .line 659
    :try_start_2
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->releaseBookInfo()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 652
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 654
    :try_start_3
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    const-string v1, "Failed to retreive location from position in KRFBookItem#getAmznUserLocationFromPosition"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 659
    :try_start_4
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->releaseBookInfo()V

    goto :goto_1

    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->releaseBookInfo()V

    .line 660
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 662
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorPronunciation()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->authorPronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseLanguage()Ljava/lang/String;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 715
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->baseLanguage:Ljava/lang/String;

    return-object v0
.end method

.method protected getBookInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    if-nez v0, :cond_1

    .line 348
    invoke-static {}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getInstance()Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    .line 349
    invoke-static {}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getInstance()Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->createIDocumentInfo(Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->isBookLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    new-instance v1, Lcom/amazon/kcp/library/models/BookFileEnumerator;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/library/models/BookFileEnumerator;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->populateBookInfo(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kcp/library/models/BookFileEnumerator;)Z

    .line 353
    :cond_0
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasOwnershipOfIDocumentInfo:Z

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    return-object v0
.end method

.method public getBookLastPosition()I
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 626
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookLastPosition()I

    move-result v0

    return v0
.end method

.method public getBookStartingPosition()I
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 632
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookStartingPosition()I

    move-result v0

    return v0
.end method

.method public getBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 3

    .line 686
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->asin:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 687
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    return-object v0

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->cdeContentType:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    return-object v0

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->cdeContentType:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    return-object v0

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->cdeContentType:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    return-object v0

    .line 694
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->cdeContentType:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 695
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    return-object v0

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->cdeContentType:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 697
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    return-object v0

    .line 698
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->cdeContentType:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 699
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    return-object v0

    .line 703
    :cond_6
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported content-type: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->cdeContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->sample:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    :goto_0
    return-object v0
.end method

.method public getCDEBookFormat()Ljava/lang/String;
    .locals 2

    .line 492
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 493
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem$1;->$SwitchMap$com$amazon$krfhacks$KRFHacks$BookType:[I

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->krfBookType:Lcom/amazon/krfhacks/KRFHacks$BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "mobi7"

    return-object v0

    :cond_0
    const-string v0, "mobi8"

    return-object v0

    :cond_1
    const-string/jumbo v0, "topaz"

    return-object v0
.end method

.method public getClippingLimit()F
    .locals 1

    .line 838
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 839
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->clippingLimit:F

    return v0
.end method

.method public getContentClass()Lcom/amazon/kindle/model/content/ContentClass;
    .locals 1

    .line 800
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 801
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->contentClass:Lcom/amazon/kindle/model/content/ContentClass;

    return-object v0
.end method

.method public getEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;
    .locals 1

    const/4 v0, 0x2

    .line 565
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;I)Lcom/amazon/kindle/util/drawing/Image;

    move-result-object p1

    return-object p1
.end method

.method public getExpirationDate()J
    .locals 2

    .line 788
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 789
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->expirationDate:J

    return-wide v0
.end method

.method public getExpirationOffset()J
    .locals 2

    .line 794
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 795
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->expirationOffset:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenericMetadata()Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;
    .locals 2

    .line 1049
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasOwnershipOfIDocumentInfo:Z

    if-eqz v0, :cond_0

    .line 1050
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    const-string v1, "getGenericMetadata called when the book is not open, possible leak of IDocumentInfo reference"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->metadataModel:Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;

    if-nez v0, :cond_1

    .line 1057
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getBookInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    .line 1058
    new-instance v0, Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->metadataModel:Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->metadataModel:Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;

    return-object v0
.end method

.method public getKRFVersion()Lcom/amazon/kindle/model/content/KRFVersion;
    .locals 1

    .line 1095
    sget-object v0, Lcom/amazon/kindle/model/content/KRFVersion;->KRF4:Lcom/amazon/kindle/model/content/KRFVersion;

    return-object v0
.end method

.method public getLargeEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;
    .locals 1

    const/4 v0, 0x3

    .line 585
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;I)Lcom/amazon/kindle/util/drawing/Image;

    move-result-object p1

    return-object p1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 832
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 833
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;
    .locals 1

    .line 720
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 721
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->orientation:Lcom/amazon/kindle/model/content/BookOrientation;

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->originType:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 5

    .line 769
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-nez v0, :cond_2

    .line 770
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getBookInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    if-eqz v0, :cond_0

    .line 771
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->getOwnershipType(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 776
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v0, :cond_1

    .line 777
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->OWNERSHIP_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    invoke-static {v3, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 779
    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    const-string v1, "BookID is null, aborting update content metadata"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->releaseBookInfo()V

    .line 783
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->parentAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 1

    .line 732
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 733
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->primaryWritingMode:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 2

    .line 451
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT"

    .line 452
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 453
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->publicationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->publicationDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
    .locals 1

    .line 726
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 727
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->readingDirection:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    return-object v0
.end method

.method public getReadingModeLastPosition()I
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 620
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getReadingModeLastPosition()I

    move-result v0

    return v0
.end method

.method public getSettingsFileName()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->mbpFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getSidecarPath()Ljava/lang/String;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->sidecarPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitlePronunciation()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->titlePronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeLabel()Ljava/lang/String;
    .locals 1

    .line 458
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 459
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->volumeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getWatermark()Ljava/lang/String;
    .locals 1

    .line 670
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 671
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->watermark:Ljava/lang/String;

    return-object v0
.end method

.method public hasDictionaryLookups()Z
    .locals 1

    .line 1017
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 1018
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasDictionaryLookups:Z

    return v0
.end method

.method public hasPublisherFonts()Z
    .locals 1

    .line 1072
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 1073
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasPublisherFonts:Z

    return v0
.end method

.method public hasRecaps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasRegionMagnification()Z
    .locals 1

    .line 744
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 745
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->regionMagnification:Z

    return v0
.end method

.method public isBookLoaded()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->isBookLoaded:Z

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

.method public isEncrypted()Z
    .locals 1

    .line 679
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 680
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->isEncrypted:Z

    return v0
.end method

.method public isFixedLayout()Z
    .locals 1

    .line 738
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 739
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fixedLayout:Z

    return v0
.end method

.method public isGenericFixedFormat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSample()Z
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->sample:Z

    return v0
.end method

.method public loadBook(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kcp/library/models/BookFileEnumerator;)Z
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->populateBookInfo(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kcp/library/models/BookFileEnumerator;)Z

    move-result p1

    return p1
.end method

.method protected loadBookInfo()V
    .locals 4

    .line 327
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->isBookLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "KRFBookItem loading Document Info"

    .line 328
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 330
    invoke-static {}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getInstance()Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    move-result-object v0

    .line 331
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->createIDocumentInfo(Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    .line 333
    new-instance v2, Lcom/amazon/kcp/library/models/BookFileEnumerator;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-direct {v2, v3}, Lcom/amazon/kcp/library/models/BookFileEnumerator;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->partialLoadBook(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kcp/library/models/BookFileEnumerator;)Z

    const/4 v0, 0x0

    .line 335
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onBookClose()V
    .locals 2

    .line 1078
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->onBookClose()V

    .line 1080
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasOwnershipOfIDocumentInfo:Z

    if-eqz v0, :cond_0

    .line 1081
    sget-object v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    const-string v1, "onBookClose called when the book is not open, this may unintentionally release the native IDocumentInfo!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->delete()V

    const/4 v0, 0x0

    .line 1083
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasOwnershipOfIDocumentInfo:Z

    :cond_0
    const/4 v0, 0x0

    .line 1089
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    .line 1090
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->metadataModel:Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;

    return-void
.end method

.method partialLoadBook(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kcp/library/models/BookFileEnumerator;)Z
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->populateBookInfo(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kcp/library/models/BookFileEnumerator;)Z

    move-result p1

    const/4 p2, 0x1

    .line 130
    iput-boolean p2, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->hasOwnershipOfIDocumentInfo:Z

    .line 131
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->releaseBookInfo()V

    return p1
.end method

.method protected populateSupportedFeatureSet()V
    .locals 2

    .line 1024
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->loadBookInfo()V

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Populating KRF book feature set for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1027
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->BookExtras:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-static {p0}, Lcom/amazon/kcp/library/models/features/BookExtrasLocalBookFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 1028
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Sharing:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-static {p0}, Lcom/amazon/kcp/library/models/features/SharingLocalBookFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 1029
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ResizableFont:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-static {p0}, Lcom/amazon/kcp/library/models/features/ResizableFontLocalBookFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 1030
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->FontFaceChange:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-static {p0}, Lcom/amazon/kcp/library/models/features/FontFaceChangeLocalBookFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 1031
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-static {p0}, Lcom/amazon/kcp/library/models/features/AnnotationLocalBookFeature;->areAnnotationsSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 1032
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Bookmarks:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-static {p0}, Lcom/amazon/kcp/library/models/features/AnnotationLocalBookFeature;->areBookmarksSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 1033
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->DictionaryCapabilities:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    .line 1034
    invoke-static {v1}, Lcom/amazon/kcp/library/models/features/DictionaryCapabilitiesLocalBookFeature;->isSupported(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v1

    .line 1033
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 1035
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->MultimediaContent:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    invoke-static {v1}, Lcom/amazon/kcp/library/models/features/MultimediaContentLocalBookFeature;->isSupported(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    return-void
.end method

.method public resolveWithExistingBookId(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    if-eqz v0, :cond_1

    .line 190
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    .line 191
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->asin:Ljava/lang/String;

    .line 193
    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForBookType(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/library/models/BookType;->getCDEContentTypeFor(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->cdeContentType:Ljava/lang/String;

    .line 194
    sget-object p1, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->TAG:Ljava/lang/String;

    const-string v0, "mismatch in book id from server and that from inside the book. The one from the server overrides the one from inside the book."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public restoreBookMetadataFromContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 5

    .line 202
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->restoreBookMetadataFromContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 203
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileLastModified:J

    .line 204
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->fileName:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getPublisher()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->publisher:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    .line 207
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->asin:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->parentAsin:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->originType:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/BookType;->getCDEContentTypeFor(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->cdeContentType:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->sample:Z

    .line 212
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->title:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->author:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 215
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->publicationDate:Ljava/util/Date;

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->publicationDate:Ljava/util/Date;

    .line 219
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->guid:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isEncrypted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->isEncrypted:Z

    .line 221
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getWaterMark()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->watermark:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    :cond_1
    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->metadataPopulated:Z

    .line 226
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->baseLanguage:Ljava/lang/String;

    .line 229
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setLastPositionRead(I)V

    .line 230
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFurthestPositionRead()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFurthestPositionRead(I)V

    return-void
.end method

.method protected setBookFurthestPositionFromDocument(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V
    .locals 0

    .line 301
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->getBookEndPosition(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setBookFurthestPosition(I)V

    return-void
.end method

.method protected setBookLastPositionFromDocument(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V
    .locals 0

    .line 309
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->getBookEndPosition(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setBookLastPosition(I)V

    return-void
.end method

.method protected setBookStartingPositionFromDocument(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V
    .locals 0

    .line 305
    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->getBookStartPosition(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setBookStartingPosition(I)V

    return-void
.end method

.method public setPageLabelFile(Ljava/lang/String;)Z
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->apnxFilename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->selectFileNameWithExtension(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->rename(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public supportsAnnotationSync()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
