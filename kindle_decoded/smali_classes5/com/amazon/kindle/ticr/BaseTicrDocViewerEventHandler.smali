.class public abstract Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;
.super Ljava/lang/Object;
.source "BaseTicrDocViewerEventHandler.java"

# interfaces
.implements Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;,
        Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;,
        Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$LogoutHandler;
    }
.end annotation


# static fields
.field private static final BACKUP_EXTENSION:Ljava/lang/String; = ".backup"

.field private static final EINK_DELAY_COMPUTE_TICR:I = 0x64

.field private static final EPSILON:D = 1.0E-5

.field private static final MAXIMUM_WPM:I = 0x384

.field private static final MINIMUM_VALID_PAGE_TURN_TIME:I = 0x1388

.field private static final TAG:Ljava/lang/String;

.field private static final TICR_EXTENSION:Ljava/lang/String; = ".ticr"

.field protected static bookTicrFilePath:Ljava/lang/String;

.field private static globalTicrFile:Ljava/lang/String;

.field private static final logoutHandler:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$LogoutHandler;

.field private static oneTimeInitialization:Z


# instance fields
.field private bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private cachedBookEndPosition:D

.field private cachedTimeRemainingString:Ljava/lang/String;

.field private cachedTimeRemainingType:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

.field private curScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

.field private currentPageIsBeyongERL:Z

.field fullyTearDownRunnable:Ljava/lang/Runnable;

.field private isLearningReadingSpeed:Z

.field protected libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final messageProvider:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;

.field partiallyTearDownRunnable:Ljava/lang/Runnable;

.field private prevScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

.field private previousPageTurnTime:J

.field private readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

.field private final ticrController:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 59
    sput-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->globalTicrFile:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->bookTicrFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->oneTimeInitialization:Z

    .line 106
    new-instance v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$LogoutHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$LogoutHandler;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->logoutHandler:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$LogoutHandler;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;)V
    .locals 3

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->prevScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    .line 69
    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->curScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    const-wide/16 v1, 0x1

    .line 71
    iput-wide v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedBookEndPosition:D

    .line 73
    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedTimeRemainingString:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 77
    iput-wide v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->previousPageTurnTime:J

    .line 96
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->currentPageIsBeyongERL:Z

    .line 101
    iput-boolean v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isLearningReadingSpeed:Z

    .line 104
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    .line 305
    new-instance v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$1;-><init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)V

    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->partiallyTearDownRunnable:Ljava/lang/Runnable;

    .line 315
    new-instance v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$2;-><init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)V

    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->fullyTearDownRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    invoke-direct {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->ticrController:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    .line 159
    iput-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->messageProvider:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;

    .line 161
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 162
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 164
    const-class p1, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    monitor-enter p1

    .line 165
    :try_start_0
    sget-boolean v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->oneTimeInitialization:Z

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    .line 167
    invoke-interface {v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getModuleDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ticr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->globalTicrFile:Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->logoutHandler:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$LogoutHandler;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 176
    sput-boolean v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->oneTimeInitialization:Z

    .line 178
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static PopulateBookTicrFilePath(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    .line 907
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v0

    .line 908
    invoke-interface {v0, p0}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->bookTicrFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getGlobalTicrFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getGlobalTicrBackupFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->tearDownEventHandler(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->curScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->curScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getScreenForCurrentPage()Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->prevScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->prevScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->ticrController:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    return-object p0
.end method

.method private getBookEndPos()D
    .locals 5

    .line 487
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 491
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedBookEndPosition:D

    const-wide/16 v2, 0x1

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 492
    iget-wide v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedBookEndPosition:D

    return-wide v0

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getBookEndPosition()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedBookEndPosition:D

    return-wide v0
.end method

.method private static getGlobalTicrBackupFileName()Ljava/lang/String;
    .locals 2

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getGlobalTicrFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getGlobalTicrFileName()Ljava/lang/String;
    .locals 1

    .line 899
    sget-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->globalTicrFile:Ljava/lang/String;

    return-object v0
.end method

.method private getScreenForCurrentPage()Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;
    .locals 2

    .line 520
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getPageStartPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getPageEndPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getScreenForPosition(II)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object v0

    return-object v0
.end method

.method private getScreenForPosition(II)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;
    .locals 8

    .line 500
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getBookEndPos()D

    move-result-wide v2

    int-to-double v4, p2

    cmpl-double v0, v4, v2

    if-lez v0, :cond_1

    const/4 p1, 0x1

    .line 506
    iput-boolean p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->currentPageIsBeyongERL:Z

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->currentPageIsBeyongERL:Z

    .line 512
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    int-to-double v6, p1

    div-double/2addr v6, v2

    invoke-direct {v0, v6, v7}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;-><init>(D)V

    .line 513
    new-instance v1, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    div-double/2addr v4, v2

    invoke-direct {v1, v4, v5}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;-><init>(D)V

    const/4 v2, -0x1

    .line 515
    invoke-virtual {p0, p1, p2, v2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getNumWordsBetweenPositions(III)I

    move-result p1

    .line 516
    new-instance p2, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    invoke-direct {p2, v0, v1, p1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;-><init>(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;I)V

    return-object p2
.end method

.method public static getTicrBackupFileNameForBook(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 1

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTicrFileNameForBook(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".backup"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTicrFileNameForBook(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 2

    .line 913
    sget-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->bookTicrFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 914
    invoke-static {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->PopulateBookTicrFilePath(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 917
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bookTicrFilePath ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->bookTicrFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->bookTicrFilePath:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".ticr"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTimeRemainingString(IDLcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Ljava/lang/String;
    .locals 7

    .line 669
    iget-boolean v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->currentPageIsBeyongERL:Z

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->messageProvider:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;->getUnavailableString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 675
    iput-boolean v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isLearningReadingSpeed:Z

    const/4 v1, 0x0

    const-string v2, "Error while unlocking loadingCurScreenLock in getTimeRemainingString"

    if-nez p5, :cond_2

    .line 686
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 688
    :try_start_1
    iget-object p5, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->curScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    if-nez p5, :cond_1

    .line 690
    invoke-direct {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getScreenForCurrentPage()Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object p5

    iput-object p5, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->curScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    .line 692
    :cond_1
    iget-object p5, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->curScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_0
    if-eqz p5, :cond_5

    .line 697
    new-instance v4, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    int-to-double v5, p1

    div-double/2addr v5, p2

    invoke-direct {v4, v5, v6}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;-><init>(D)V

    .line 698
    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->ticrController:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    invoke-virtual {p1, v4, p5}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timeLeftFromPositionInSeconds(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)J

    move-result-wide p1

    const-wide/16 v4, 0x0

    cmp-long p3, p1, v4

    if-lez p3, :cond_5

    .line 701
    iget-object p3, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->messageProvider:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;

    invoke-interface {p3, p1, p2, p4}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;->getTimeRemainingString(JLcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;)Ljava/lang/String;

    move-result-object v0

    .line 702
    iput-boolean v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isLearningReadingSpeed:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    move v1, v3

    goto :goto_2

    :catch_1
    move-exception p1

    move v1, v3

    .line 706
    :goto_1
    :try_start_2
    sget-object p2, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    const-string p3, "Got exception while acquiring loadingCurScreenLock and processing TTR in getTimeRemainingString"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    .line 710
    :try_start_3
    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 712
    sget-object p2, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    invoke-static {p2, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_2
    if-eqz v1, :cond_4

    .line 710
    :try_start_4
    iget-object p2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 712
    sget-object p3, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    invoke-static {p3, v2, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 715
    :cond_4
    :goto_3
    throw p1

    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    .line 710
    :try_start_5
    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_5
    return-object v0
.end method

.method private ignorePageTurn()Z
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 735
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isFastFlip()Z

    move-result v0

    return v0
.end method

.method private isFastFlip()Z
    .locals 8

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 748
    iget-wide v2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->previousPageTurnTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    .line 749
    iput-wide v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->previousPageTurnTime:J

    return v6

    :cond_0
    sub-long v2, v0, v2

    .line 757
    iput-wide v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->previousPageTurnTime:J

    .line 760
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->prevScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    if-eqz v0, :cond_2

    .line 761
    invoke-virtual {v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;->getNumWords()I

    move-result v0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    return v6

    :cond_1
    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    long-to-float v1, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    const/16 v1, 0x384

    if-le v0, v1, :cond_2

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring page turn since it is a fast flip. Time taken to turn page - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms. Words per Minute - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_2
    return v6
.end method

.method private static isSupportingBookType(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 1

    .line 893
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    .line 894
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static supportsTicr(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 3

    .line 870
    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    invoke-static {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isSupportingBookType(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v0, v1, :cond_0

    .line 874
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v0, v1, :cond_0

    .line 875
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v0, v1, :cond_0

    .line 876
    sget-object p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "The content supports ticr"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 879
    :cond_0
    sget-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content does not support ticr, isDictionary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bookType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isTextBook: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", asin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private tearDownEventHandler(Z)V
    .locals 8

    const-string v0, "Failed to create File"

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tearing down. Full? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getGlobalTicrFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 338
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 340
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    sget-object v3, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 343
    :cond_1
    sget-object v2, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v3}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTicrFileNameForBook(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 353
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 355
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 356
    sget-object v4, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 358
    :cond_3
    sget-object v3, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    .line 368
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 369
    :try_start_3
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 371
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 372
    :try_start_5
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_4

    .line 376
    :try_start_6
    iget-object v5, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->ticrController:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    invoke-virtual {v5, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->tearDown(Ljava/io/ObjectOutputStream;Ljava/io/ObjectOutputStream;)V

    goto :goto_2

    .line 378
    :cond_4
    iget-object v5, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->ticrController:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    invoke-virtual {v5, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->saveStates(Ljava/io/ObjectOutputStream;Ljava/io/ObjectOutputStream;)V

    .line 381
    :goto_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 382
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 383
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 384
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz p1, :cond_5

    goto :goto_6

    :catch_2
    move-exception v5

    goto :goto_5

    :catchall_0
    move-exception v5

    move-object v2, v0

    goto :goto_7

    :catch_3
    move-exception v5

    move-object v2, v0

    goto :goto_5

    :catchall_1
    move-exception v5

    move-object v2, v0

    goto :goto_3

    :catch_4
    move-exception v5

    move-object v2, v0

    goto :goto_4

    :catchall_2
    move-exception v5

    move-object v1, v0

    move-object v2, v1

    :goto_3
    move-object v4, v2

    goto :goto_7

    :catch_5
    move-exception v5

    move-object v1, v0

    move-object v2, v1

    :goto_4
    move-object v4, v2

    goto :goto_5

    :catchall_3
    move-exception v5

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    goto :goto_7

    :catch_6
    move-exception v5

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 386
    :goto_5
    :try_start_7
    sget-object v6, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "Failed to tear down"

    invoke-static {v6, v7, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p1, :cond_5

    .line 389
    :goto_6
    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 391
    :cond_5
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 392
    invoke-static {v4}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 393
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 394
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_4
    move-exception v5

    :goto_7
    if-eqz p1, :cond_6

    .line 389
    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 391
    :cond_6
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 392
    invoke-static {v4}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 393
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 394
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 395
    throw v5
.end method


# virtual methods
.method protected abstract getBookEndPosition()D
.end method

.method protected abstract getNextChapterPosition(I)I
.end method

.method protected abstract getNumWordsBetweenPositions(III)I
.end method

.method protected abstract getPageEndPosition()I
.end method

.method protected abstract getPageStartPosition()I
.end method

.method public getTimeRemainingString()Ljava/lang/String;
    .locals 2

    .line 644
    invoke-interface {p0}, Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;->getTimeRemainingStringForChapter()Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    invoke-interface {p0}, Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;->getTimeRemainingStringForBook()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeRemainingString(II)Ljava/lang/String;
    .locals 2

    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingStringForChapter(II)Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingStringForBook(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeRemainingStringForBook(II)Ljava/lang/String;
    .locals 0

    .line 575
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getScreenForPosition(II)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingStringForBook(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeRemainingStringForBook(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Ljava/lang/String;
    .locals 8

    .line 579
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_2

    .line 580
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedTimeRemainingType:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    sget-object v1, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->BOOK_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedTimeRemainingString:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 584
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isLearningReadingSpeed:Z

    .line 585
    invoke-direct {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getBookEndPos()D

    move-result-wide v0

    double-to-int v3, v0

    invoke-direct {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getBookEndPos()D

    move-result-wide v4

    sget-object v6, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->BOOK_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingString(IDLcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    .line 588
    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedTimeRemainingString:Ljava/lang/String;

    .line 589
    sget-object p1, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->BOOK_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    iput-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedTimeRemainingType:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 593
    sget-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get time remaining string"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne p1, v0, :cond_3

    .line 600
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 601
    sget v0, Lcom/amazon/kindle/krl/R$string;->ttr_unavailable:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTimeRemainingStringForChapter(II)Ljava/lang/String;
    .locals 1

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getScreenForPosition(II)Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->CHAPTER_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    invoke-virtual {p0, p2, p1, v0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingStringForChapter(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;ILcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeRemainingStringForChapter(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;ILcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;)Ljava/lang/String;
    .locals 7

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimeRemainingString(screen, startPos) invoked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_3

    .line 535
    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedTimeRemainingType:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedTimeRemainingString:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 537
    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedTimeRemainingString:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 541
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isLearningReadingSpeed:Z

    .line 542
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->hasTOC()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getPageStartPosition()I

    move-result p2

    .line 544
    :goto_0
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getNextChapterPosition(I)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Book has TOC. currentPos & endPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-ltz v2, :cond_3

    .line 548
    invoke-direct {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getBookEndPos()D

    move-result-wide v3

    move-object v1, p0

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingString(IDLcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_2

    .line 551
    iput-object p2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedTimeRemainingString:Ljava/lang/String;

    .line 552
    iput-object p3, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedTimeRemainingType:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    .line 558
    sget-object p2, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get time remaining string for EndType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 565
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    sget-object p2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne p1, p2, :cond_4

    .line 566
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 567
    sget p2, Lcom/amazon/kindle/krl/R$string;->ttr_unavailable:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTimeRemainingToPosition(I)J
    .locals 7

    const-string v0, "Error while unlocking loadingCurScreenLock in getTimeRemainingToPosition"

    const/4 v1, 0x0

    .line 615
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    iget-object v2, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->curScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    if-eqz v2, :cond_1

    .line 618
    new-instance v2, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;

    int-to-double v3, p1

    invoke-direct {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getBookEndPos()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-direct {v2, v3, v4}, Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;-><init>(D)V

    .line 619
    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->ticrController:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    iget-object v3, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->curScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    invoke-virtual {p1, v2, v3}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->timeLeftFromPositionInSeconds(Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Position;Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 628
    :try_start_1
    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 630
    sget-object v1, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    if-eqz v1, :cond_2

    .line 628
    :try_start_2
    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 630
    sget-object v1, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 624
    :try_start_3
    sget-object v2, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Got exception while acquiring loadingCurScreenLock and processing TTR in getTimeRemainingToPosition"

    invoke-static {v2, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 628
    :try_start_4
    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    iget-object v1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->loadingCurScreenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 630
    sget-object v2, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 633
    :cond_3
    :goto_3
    throw p1
.end method

.method protected abstract hasTOC()Z
.end method

.method protected abstract isInitialized()Z
.end method

.method public isLearningReadingSpeed()Z
    .locals 1

    .line 939
    iget-boolean v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isLearningReadingSpeed:Z

    return v0
.end method

.method protected onDocViewerAfterPositionChanged(Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;)V
    .locals 2

    const/4 v0, 0x0

    .line 784
    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->cachedTimeRemainingString:Ljava/lang/String;

    .line 786
    invoke-direct {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->ignorePageTurn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    iput-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->prevScreen:Lcom/amazon/ebook/booklet/reader/plugin/timer/identifier/Screen;

    .line 791
    new-instance p1, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$3;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$3;-><init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;)V

    .line 810
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 814
    :cond_0
    new-instance v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$4;-><init>(Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;)V

    .line 859
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->executeOrSubmit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onReaderModeChanged(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 930
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->readerMode:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    return-void
.end method

.method protected setUp(Lcom/amazon/kindle/model/content/IBookID;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 199
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getGlobalTicrFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTicrFileNameForBook(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 214
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getGlobalTicrBackupFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 215
    :try_start_1
    invoke-static {v3, v0}, Lcom/amazon/kindle/io/IOUtils;->writeInToFile(Ljava/io/InputStream;Ljava/io/File;)I

    .line 217
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-static {p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTicrBackupFileNameForBook(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    :try_start_2
    invoke-static {v4, v1}, Lcom/amazon/kindle/io/IOUtils;->writeInToFile(Ljava/io/InputStream;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v4, v2

    :goto_0
    move-object v2, v3

    goto :goto_1

    :catch_0
    move-object v4, v2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v4, v2

    .line 223
    :goto_1
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 224
    invoke-static {v4}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 225
    throw p1

    :catch_1
    move-object v3, v2

    move-object v4, v3

    .line 223
    :catch_2
    :goto_2
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 224
    invoke-static {v4}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    const/4 v3, 0x1

    .line 241
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 244
    :try_start_4
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    move-object v0, v2

    move-object v6, v0

    goto/16 :goto_8

    :catch_3
    move-object v0, v2

    move-object v5, v0

    goto/16 :goto_9

    :catch_4
    move-object v0, v2

    move-object v5, v0

    goto/16 :goto_d

    :cond_1
    move-object v4, v2

    move-object v5, v4

    .line 248
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 250
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 251
    :try_start_6
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    move-object v0, v2

    move-object v7, v0

    goto/16 :goto_6

    :catch_5
    move-object v0, v2

    move-object v7, v0

    goto/16 :goto_b

    :catch_6
    move-object v0, v2

    move-object v7, v0

    goto/16 :goto_f

    :cond_2
    move-object v6, v2

    move-object v7, v6

    .line 255
    :goto_4
    :try_start_7
    iget-object v8, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->ticrController:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    invoke-virtual {v8, v5, v7}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->setUp(Ljava/io/ObjectInputStream;Ljava/io/ObjectInputStream;)V

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez p2, :cond_3

    .line 261
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getGlobalTicrBackupFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    new-instance v9, Ljava/io/File;

    invoke-static {p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTicrBackupFileNameForBook(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 265
    :try_start_8
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 266
    :try_start_9
    invoke-static {v10, v8}, Lcom/amazon/kindle/io/IOUtils;->writeInToFile(Ljava/io/InputStream;Ljava/io/File;)I

    .line 267
    invoke-static {v0, v9}, Lcom/amazon/kindle/io/IOUtils;->writeInToFile(Ljava/io/InputStream;Ljava/io/File;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    move-object v2, v0

    goto :goto_5

    :catch_7
    nop

    goto/16 :goto_c

    :catch_8
    nop

    goto/16 :goto_10

    :catchall_5
    move-exception p1

    move-object v0, v2

    goto :goto_7

    :catch_9
    move-object v0, v2

    goto/16 :goto_c

    :catch_a
    move-object v0, v2

    goto/16 :goto_10

    :cond_3
    move-object v10, v2

    .line 292
    :goto_5
    invoke-static {v5}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 293
    invoke-static {v7}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 294
    invoke-static {v4}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 295
    invoke-static {v6}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_12

    :catchall_6
    move-exception p1

    move-object v0, v2

    move-object v10, v0

    goto :goto_7

    :catch_b
    move-object v0, v2

    move-object v10, v0

    goto :goto_c

    :catch_c
    move-object v0, v2

    move-object v10, v0

    goto :goto_10

    :catchall_7
    move-exception p1

    move-object v0, v2

    move-object v6, v0

    move-object v7, v6

    :goto_6
    move-object v10, v7

    :goto_7
    move-object v2, v5

    goto/16 :goto_13

    :catch_d
    move-object v0, v2

    move-object v6, v0

    goto :goto_a

    :catch_e
    move-object v0, v2

    move-object v6, v0

    goto :goto_e

    :catchall_8
    move-exception p1

    move-object v0, v2

    move-object v4, v0

    move-object v6, v4

    :goto_8
    move-object v7, v6

    move-object v10, v7

    goto :goto_13

    :catch_f
    move-object v0, v2

    move-object v4, v0

    move-object v5, v4

    :goto_9
    move-object v6, v5

    :goto_a
    move-object v7, v6

    :goto_b
    move-object v10, v7

    :goto_c
    if-nez p2, :cond_4

    .line 284
    :try_start_a
    invoke-virtual {p0, p1, v3}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->setUp(Lcom/amazon/kindle/model/content/IBookID;Z)V

    goto :goto_11

    .line 289
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->ticrController:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    invoke-virtual {p1, v2, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->setUp(Ljava/io/ObjectInputStream;Ljava/io/ObjectInputStream;)V

    goto :goto_11

    :catch_10
    move-object v0, v2

    move-object v4, v0

    move-object v5, v4

    :goto_d
    move-object v6, v5

    :goto_e
    move-object v7, v6

    :goto_f
    move-object v10, v7

    :goto_10
    if-nez p2, :cond_5

    .line 273
    invoke-virtual {p0, p1, v3}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->setUp(Lcom/amazon/kindle/model/content/IBookID;Z)V

    goto :goto_11

    :catchall_9
    move-exception p1

    goto :goto_7

    .line 278
    :cond_5
    iget-object p1, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->ticrController:Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;

    invoke-virtual {p1, v2, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/controller/TICRController;->setUp(Ljava/io/ObjectInputStream;Ljava/io/ObjectInputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 292
    :goto_11
    invoke-static {v5}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 293
    invoke-static {v7}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 294
    invoke-static {v4}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 295
    invoke-static {v6}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 297
    :goto_12
    invoke-static {v10}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 292
    :goto_13
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 293
    invoke-static {v7}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 294
    invoke-static {v4}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 295
    invoke-static {v6}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 297
    invoke-static {v10}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 298
    throw p1
.end method

.method protected abstract tearDown()V
.end method

.method public tearDown(Z)V
    .locals 1

    .line 405
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->tearDown()V

    if-eqz p1, :cond_1

    .line 413
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 414
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->fullyTearDownRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->executeOrSubmit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 416
    :cond_1
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->partiallyTearDownRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->executeOrSubmit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method
