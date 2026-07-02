.class public Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.source "DownloadContentTodoItemHandler.java"


# static fields
.field private static final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private static final TAG:Ljava/lang/String;

.field private static final delayInMilliSeconds:I = 0x2710


# instance fields
.field private final appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$TODO;

    const-string v1, "DownloadHandler"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$TODO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 53
    iput-object p2, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;)Lcom/amazon/kcp/application/IKindleApplicationController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    return-object p0
.end method

.method private createTempMetadata(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 9

    .line 170
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Subscription"

    .line 171
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 172
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    .line 175
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object v2

    const-string v3, "is_multimedia_enabled"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "1"

    .line 174
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v2, "silentUpdate"

    const/4 v3, 0x0

    .line 177
    invoke-static {p1, v2, v3}, Lcom/amazon/kindle/todo/TodoItemUtils;->getBoolean(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;Z)Z

    move-result v2

    .line 178
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_0

    .line 179
    new-instance p1, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kcp/library/models/internal/UpdateBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    :goto_0
    move-object v3, p1

    .line 183
    iget-object v2, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v8, 0x1

    const-string v5, ""

    invoke-interface/range {v2 .. v8}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method private startSync(Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 6

    .line 126
    :try_start_0
    new-instance v5, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;

    invoke-direct {v5, p0, p1}, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;-><init>(Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    .line 158
    new-instance p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->SYNCMETADATA_ONLY:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    sget-object v0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting syncMetadata for book purchase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 8

    .line 65
    sget-object v0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling todoItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "updateRequestId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    const-string/jumbo v3, "silentUpdate"

    .line 68
    invoke-static {p1, v3, v0}, Lcom/amazon/kindle/todo/TodoItemUtils;->getBoolean(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 75
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v3

    .line 76
    iget-object v4, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-static {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getBookTypeForTodoType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v6

    sget-object v7, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 76
    :goto_0
    invoke-interface {v4, v5, v6, v2, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v4, :cond_3

    .line 80
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v5

    if-nez v5, :cond_3

    .line 88
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->createTempMetadata(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->startSync(Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    .line 93
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object v5

    const-string v6, "forced"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 94
    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 95
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 97
    new-instance v5, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getBookTypeForTodoType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 98
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 100
    invoke-virtual {v5}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/amazon/kindle/cover/ICoverImageService;->deleteBookCovers(Ljava/lang/String;)V

    .line 102
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 104
    invoke-virtual {v5}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/amazon/kcp/cover/ICoverCacheManager;->clearCache(Ljava/lang/String;)V

    .line 109
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v3

    .line 110
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v7, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v7, v6, v0

    sget-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v0, v6, v1

    const/4 v0, 0x2

    sget-object v7, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v7, v6, v0

    const-string/jumbo v0, "todoSyncComplete"

    invoke-virtual {v3, v0, v5, v6}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 115
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {v0, p1, v4, v3}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    goto :goto_2

    .line 69
    :cond_6
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentUpdateService()Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/contentupdate/IContentUpdateService;->handleUpdate(Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    .line 70
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 72
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v3, "LocalContentPushUpdate"

    const-string v4, "ReceiveTodoItem"

    invoke-interface {v0, v3, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_7
    :goto_2
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return v1
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 2

    .line 58
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->isReaderContent(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z

    move-result v0

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
