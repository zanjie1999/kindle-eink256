.class public Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;
.super Lcom/amazon/kindle/annotation/BookAnnotationsManager;
.source "BookAnnotationsJournalizer.java"


# static fields
.field private static final CRP_FILE_SUFFIX:Ljava/lang/String; = ".crp"

.field private static final FPR_FILE_SUFFIX:Ljava/lang/String; = ".lpr"

.field private static final MRPR_FILE_SUFFIX:Ljava/lang/String; = ".mrpr"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

.field private final annotationsManager:Lcom/amazon/kindle/annotation/AnnotationsManager;

.field private final fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

.field private final m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private final m_isMop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/annotation/IAnnotationDAO;Lcom/amazon/kcp/application/IAnnotationCache;)V
    .locals 1

    .line 54
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p5}, Lcom/amazon/kindle/annotation/BookAnnotationsManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/annotation/IAnnotationDAO;)V

    .line 55
    iput-object p3, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->annotationsManager:Lcom/amazon/kindle/annotation/AnnotationsManager;

    .line 56
    iput-object p4, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 57
    iput-object p6, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    .line 58
    iput-object p2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 59
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMopMimeType(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_isMop:Z

    return-void
.end method

.method private backfillShortPositionsForGHLs()V
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->getGHLsWithInvalidShortPos(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 120
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 121
    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 122
    iget-object v4, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v4

    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    .line 123
    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    .line 124
    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->POS_START_PAGE:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v4

    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    .line 133
    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    int-to-long v4, v4

    .line 134
    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->updateAnnotations(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method private eraseLongPositionsForGHLs()V
    .locals 6

    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->getGHLsWithLongPos(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 104
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 105
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 106
    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->updateAnnotations(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private getServerFprFilename()Ljava/lang/String;
    .locals 1

    const-string v0, ".lpr"

    .line 474
    invoke-direct {p0, v0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerTempSyncFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServerFprFromFile()Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;
    .locals 3

    .line 311
    new-instance v0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;

    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerFprFilename()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;-><init>(Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 312
    invoke-virtual {v0}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->load()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    new-instance v1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;-><init>(Lcom/amazon/kindle/services/library/CServerLPRCacheFile;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerFprFromFile is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method private getServerMrprFilename()Ljava/lang/String;
    .locals 1

    const-string v0, ".mrpr"

    .line 483
    invoke-direct {p0, v0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerTempSyncFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServerMrprFromFile()Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;
    .locals 3

    .line 346
    new-instance v0, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;

    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerMrprFilename()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;-><init>(Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 347
    invoke-virtual {v0}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->load()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    new-instance v1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;-><init>(Lcom/amazon/kindle/services/library/CServerLPRCacheFile;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 351
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerMrprFromFile is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v1
.end method

.method private getServerTempSyncFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 500
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 502
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isAnnotationWhispersynced()Z
    .locals 2

    .line 225
    sget-object v0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->isArchivable()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized resetServerFprFile()Z
    .locals 3

    monitor-enter p0

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerFprFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    .line 362
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In resetServerFprFile() to delete LPR file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerFprFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetServerMrprFile()Z
    .locals 3

    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerMrprFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    .line 370
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In resetServerMrprFile delete MRPR file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerMrprFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private syncWithServer(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 209
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->isArchivable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 210
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->supportsAnnotationSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->isAnnotationWhispersynced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lcom/amazon/kcp/application/MBPBookData;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 213
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getCDEBookFormat()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/library/models/BookType;->getCDEContentTypeFor(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/application/MBPBookData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationUpdateHandler;->annotationChanged(Lcom/amazon/kindle/model/sync/annotation/IBookData;Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;)V

    :cond_0
    return-void
.end method

.method private updateServerFprFile(IIJLjava/lang/String;)Z
    .locals 8

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateServerFprFile with pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    new-instance v2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;

    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerFprFilename()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;-><init>(Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 436
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->save(IIJLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private updateServerFprFile(I[BILjava/lang/String;)Z
    .locals 1

    .line 398
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UpdateServerFprFile with pos "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    new-instance p2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;

    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerFprFilename()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-direct {p2, p3, v0}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;-><init>(Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 400
    invoke-virtual {p2, p1, p4}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->save(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private updateServerMrprFile(IIJLjava/lang/String;)Z
    .locals 8

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateServerMrprFile with pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    new-instance v2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;

    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerMrprFilename()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;-><init>(Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 451
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->save(IIJLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private updateServerMrprFile(I[BILjava/lang/String;)Z
    .locals 1

    .line 413
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UpdateServerMrprFile with pos "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    new-instance p2, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;

    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerMrprFilename()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-direct {p2, p3, v0}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;-><init>(Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 415
    invoke-virtual {p2, p1, p4}, Lcom/amazon/kindle/services/library/CServerLPRCacheFile;->save(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public clearServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)V
    .locals 1

    .line 258
    sget-object v0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer$1;->$SwitchMap$com$amazon$kindle$krx$sync$LPRSyncType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->resetServerMrprFile()Z

    goto :goto_0

    .line 260
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->resetServerFprFile()Z

    :goto_0
    return-void
.end method

.method public create(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->create(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->syncWithServer(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :cond_0
    return v0
.end method

.method public delete(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 1

    .line 164
    invoke-super {p0, p1}, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->delete(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->syncWithServer(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :cond_0
    return v0
.end method

.method public deleteAll()V
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getJournalRevision()J
    .locals 5

    .line 507
    new-instance v0, Lcom/amazon/kcp/application/MBPBookData;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 508
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getCDEBookFormat()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/library/models/BookType;->getCDEContentTypeFor(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/application/MBPBookData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/IAnnotationCache;->getRevision(Lcom/amazon/kindle/model/sync/annotation/IBookData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;
    .locals 1

    .line 238
    sget-object v0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer$1;->$SwitchMap$com$amazon$kindle$krx$sync$LPRSyncType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerMrprFromFile()Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object p1

    goto :goto_0

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->getServerFprFromFile()Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public persistJournal()V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAnnotationCache;->serialize()V

    return-void
.end method

.method public readAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->annotationsManager:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->doCheckAnnotations(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->annotationsManager:Lcom/amazon/kindle/annotation/AnnotationsManager;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getSettingsFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_bookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/annotation/AnnotationsManager;->doProcessSidecar(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/sync/AnnotationIO;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 92
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->m_isMop:Z

    if-eqz v0, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->eraseLongPositionsForGHLs()V

    goto :goto_1

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->backfillShortPositionsForGHLs()V

    .line 98
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_dao:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->m_bookId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->readAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 1

    .line 155
    invoke-super {p0, p1}, Lcom/amazon/kindle/annotation/BookAnnotationsManager;->update(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->syncWithServer(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :cond_0
    return v0
.end method

.method public updateBookId(Ljava/lang/String;)V
    .locals 0

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public updateLpr(I[B)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 9

    .line 173
    new-instance v8, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v6, 0x0

    move-object v0, v8

    move v3, p1

    move v4, p1

    move v5, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[B)V

    .line 183
    invoke-direct {p0, v8}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->syncWithServer(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return-object v8
.end method

.method updateServerReadingPosition(Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V
    .locals 13

    .line 280
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getVersion()I

    move-result v0

    if-nez v0, :cond_1

    .line 281
    sget-object v0, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne p2, v0, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getPosition()I

    move-result v2

    .line 283
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getLto()I

    move-result v3

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getAnnotationTime()J

    move-result-wide v4

    .line 284
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getSourceDevice()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 282
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->updateServerMrprFile(IIJLjava/lang/String;)Z

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getPosition()I

    move-result v8

    .line 288
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getLto()I

    move-result v9

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getAnnotationTime()J

    move-result-wide v10

    .line 289
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getSourceDevice()Ljava/lang/String;

    move-result-object v12

    move-object v7, p0

    .line 287
    invoke-direct/range {v7 .. v12}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->updateServerFprFile(IIJLjava/lang/String;)Z

    goto :goto_0

    .line 292
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    .line 293
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getPosition()I

    move-result p2

    .line 294
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-direct {p0, p2, v2, v1, p1}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->updateServerMrprFile(I[BILjava/lang/String;)Z

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getPosition()I

    move-result p2

    .line 297
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-direct {p0, p2, v2, v1, p1}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->updateServerFprFile(I[BILjava/lang/String;)Z

    :goto_0
    return-void
.end method
