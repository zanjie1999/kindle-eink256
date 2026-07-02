.class public Lcom/amazon/kindle/contentupdate/ContentUpdateService;
.super Ljava/lang/Object;
.source "ContentUpdateService.java"

# interfaces
.implements Lcom/amazon/kindle/contentupdate/IContentUpdateService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;,
        Lcom/amazon/kindle/contentupdate/ContentUpdateService$ScheduledUpdate;,
        Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
        Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
        Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;,
        Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;,
        Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;,
        Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;,
        Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;
    }
.end annotation


# static fields
.field private static final BOOK_CLOSE_RETRY_DELAY_SEC:J = 0x3L

.field private static final KEY_ASIN:Ljava/lang/String; = "asin"

.field private static final KEY_AVAILABLE_SPACE:Ljava/lang/String; = "availableSpace"

.field private static final KEY_CURRENT_ASSET_ID:Ljava/lang/String; = "currentAssetId"

.field private static final KEY_END_TIME:Ljava/lang/String; = "endTime"

.field private static final KEY_PREVIOUS_ASSET_ID:Ljava/lang/String; = "previousAssetId"

.field private static final KEY_START_TIME:Ljava/lang/String; = "startTime"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_UPDATE_REQUEST_ID:Ljava/lang/String; = "updateRequestId"

.field private static final METRICS_TAG:Ljava/lang/String;

.field private static final MIN_AVAILABLE_STORAGE_THRESHOLD:J = 0x1f400000L

.field private static final MIN_BATTERY_PERCENTAGE_THRESHOLD:I = 0x14

.field private static final POST_ANNOTATION_UPLOAD_DELAY_MS:J = 0x2710L

.field private static final RESPONSE_TOPIC:Ljava/lang/String; = "content.update.response"

.field private static final RETRY_DELAY_SEC:J

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_SWAP_TIMER:Ljava/lang/String; = "UpdateSwapTimer"


# instance fields
.field private final annotationConversionService:Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;

.field private final annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

.field private final assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private final context:Landroid/content/Context;

.field private final coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field private final coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

.field private volatile debugDelayAfterContentDownload:J

.field private volatile debugDelayAfterSwap:J

.field private volatile debugDelayBeforeAnnotationUpload:J

.field private final downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile forceFailUpdatesBeforeSwap:Z

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final pendingTodoItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/messaging/ITodoItem;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduledUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/contentupdate/ContentUpdateService$ScheduledUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final sidecarDownloadCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private targetItemBookId:Lcom/amazon/kindle/model/content/IBookID;

.field private final todoService:Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

.field private final updateDAO:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

.field private final userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    const-class v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0xa

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x708

    :goto_0
    sput-wide v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->RETRY_DELAY_SEC:J

    .line 146
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->METRICS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/services/download/IDownloadService;Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;Lcom/amazon/kindle/annotation/IAnnotationsManager;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;Landroid/content/Context;)V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->scheduledUpdates:Ljava/util/Map;

    .line 172
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    const-string v1, "ContentUpdateService_worker"

    .line 173
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    const/4 v1, 0x1

    .line 174
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withPriority(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 175
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->pendingTodoItems:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sidecarDownloadCounts:Ljava/util/Map;

    .line 194
    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 195
    iput-object p2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    .line 196
    iput-object p3, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->todoService:Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

    .line 197
    iput-object p4, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    .line 198
    iput-object p5, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    .line 199
    iput-object p6, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 200
    iput-object p7, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    .line 201
    iput-object p8, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    .line 202
    iput-object p9, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->annotationConversionService:Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;

    .line 203
    iput-object p10, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->context:Landroid/content/Context;

    .line 204
    invoke-static {p10}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->updateDAO:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 0

    .line 113
    invoke-static {p0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->computeTargetItemBookId(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/Map;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->scheduledUpdates:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Set;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->downloadContentItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Set;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->notifyStart(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkPlugins(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/annotation/IAnnotationsManager;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->handleWebRequestError(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->applyLpr(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->syncMrpr(Lcom/amazon/kindle/model/content/IBookID;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/Map;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sidecarDownloadCounts:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/content/ContentMetadata;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkAnnotationsHaveNotChanged(Lcom/amazon/kindle/content/ContentMetadata;J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->replaceTargetItemContent(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 0

    .line 113
    invoke-static {p0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->computeUpdateItemBookId(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->METRICS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 113
    invoke-direct/range {p0 .. p6}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sendResponse(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Z)V
    .locals 0

    .line 113
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->notifyComplete(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/util/List;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->resumePendingTodoItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2400()J
    .locals 2

    .line 113
    sget-wide v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->RETRY_DELAY_SEC:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->deleteContentMetadata(Lcom/amazon/kindle/model/content/IBookID;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->updateDAO:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/cover/ICoverImageService;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kcp/cover/ICoverCacheManager;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->pendingTodoItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->targetItemBookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkUpdateConditions(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/content/ContentMetadata;)J
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->getAnnotationsRevision(Lcom/amazon/kindle/content/ContentMetadata;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->uploadAnnotations()V

    return-void
.end method

.method private applyLpr(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 871
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 872
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Applying LPR from %s to %s (with conversion)"

    .line 871
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v0

    .line 875
    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target content LPR: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->toContentIdentifier(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 887
    invoke-static {p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->toContentIdentifier(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 892
    new-instance v2, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;

    invoke-direct {v2}, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;-><init>()V

    .line 893
    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 894
    sget-object v5, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->LAST_PAGE_READ:Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    .line 895
    invoke-static {v5, v0}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->valueOf(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;

    move-result-object v0

    .line 898
    :try_start_0
    iget-object v5, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->annotationConversionService:Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;

    .line 899
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 898
    invoke-interface {v5, v0, p1, v1, v2}, Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;->convert(Ljava/util/List;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Ljava/util/List;

    move-result-object p1

    .line 900
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;
    :try_end_0
    .catch Lcom/amazon/kindle/annotationconversion/AnnotationConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    invoke-virtual {p1}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 912
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update content position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 915
    :goto_0
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update content LPR: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result p1

    if-eq v1, p1, :cond_1

    .line 918
    iget-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 919
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 918
    invoke-interface {p1, p2, p3, v0}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 920
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string p2, "LPR applied successfully"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 923
    :cond_1
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string p2, "Update content has correct LPR already"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception p1

    .line 902
    invoke-virtual {p1}, Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p2

    if-nez p2, :cond_2

    .line 904
    new-instance p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object p3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_LPR_RETENTION:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v0, "Error converting LPR"

    invoke-direct {p2, v0, p1, p3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p2

    .line 906
    :cond_2
    sget-object p3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_LPR_RETENTION:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v0, "LPR conversion"

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->handleWebRequestError(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    .line 907
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 889
    :cond_3
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_DOWNLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string p3, "Update content is not local"

    invoke-direct {p1, p3, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p1

    .line 883
    :cond_4
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_CONTENT_NOT_PRESENT:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string p3, "Target content is not local"

    invoke-direct {p1, p3, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p1
.end method

.method private checkAnnotationsHaveNotChanged(Lcom/amazon/kindle/content/ContentMetadata;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;
        }
    .end annotation

    .line 626
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->getAnnotationsRevision(Lcom/amazon/kindle/content/ContentMetadata;)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-nez p1, :cond_0

    return-void

    .line 628
    :cond_0
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Annotation change detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "->"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UpdateRetryAnnotationChangeDetected"

    invoke-direct {p1, p2, p3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private checkAvailableDiskSpace()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;
        }
    .end annotation

    .line 584
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 585
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBooksDirectory()Ljava/io/File;

    move-result-object v1

    .line 586
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getAvailableStorageSize(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x1f400000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 589
    :cond_0
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_INSUFFICIENT_SPACE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v2, "Available storage space is insufficient"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw v0
.end method

.method private checkContentState(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 572
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 573
    :cond_0
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_CONTENT_NOT_PRESENT:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v1, "The content is not local"

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p1
.end method

.method private checkContentUpdateHandler(Lcom/amazon/kindle/krx/update/IContentUpdateHandler;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v8, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    .line 957
    invoke-interface {p1, v4, v5, p2, p3}, Lcom/amazon/kindle/krx/update/IContentUpdateHandler;->getPluginUpdateState(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;

    move-result-object v0

    .line 958
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Plugin handler "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " returned state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 959
    sget-object v9, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$krx$update$PluginUpdateState$Type:[I

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->getType()Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v9, v10, :cond_2

    const/4 v2, 0x2

    if-eq v9, v2, :cond_1

    const/4 v2, 0x3

    if-eq v9, v2, :cond_0

    .line 981
    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid state tyep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->getType()Lcom/amazon/kindle/krx/update/PluginUpdateState$Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/update/PluginUpdateState;->getFailureCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Plugin failed the update"

    invoke-direct {p0, v0, v2, p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->throwExceptionForHandler(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/update/IContentUpdateHandler;)V

    throw v11

    .line 974
    :cond_1
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;

    const-string v1, "Plugin failed the update and requested retry"

    const-string v2, "UpdateRetryPlugin"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/32 v9, 0x36ee80

    cmp-long v0, v6, v9

    if-gtz v0, :cond_3

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sleeping for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 967
    invoke-static/range {p6 .. p7}, Ljava/lang/Thread;->sleep(J)V

    const-wide/16 v9, 0x2

    mul-long v6, v6, v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 970
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkContentUpdateHandler(Lcom/amazon/kindle/krx/update/IContentUpdateHandler;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;J)V

    :goto_0
    return-void

    .line 962
    :cond_3
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_SIDECAR_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Timed out waiting for handler"

    invoke-direct {p0, v0, v2, p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->throwExceptionForHandler(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/update/IContentUpdateHandler;)V

    throw v11
.end method

.method private checkDeviceBatteryStatus()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;
        }
    .end annotation

    .line 599
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    const-string v2, "plugged"

    .line 601
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const-string v2, "level"

    .line 602
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    .line 603
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 608
    :cond_0
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;

    const-string v1, "Battery low"

    const-string v2, "UpdateRetryLowBattery"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkForSharedContent(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;
        }
    .end annotation

    .line 519
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v0

    .line 521
    invoke-interface {v0}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->isSharedDownloadsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    .line 524
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 525
    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getOwnershipCount(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_SHARED_CONTENT:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v1, "Content is shared by multiple users"

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private checkIfBookIsOpen(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;
        }
    .end annotation

    .line 556
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 560
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 562
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target book "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is open"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UpdateRetryBookIsOpen"

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkPlugins(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 949
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContentUpdateManager()Lcom/amazon/kindle/krx/update/IContentUpdateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/update/IContentUpdateManager;->getContentUpdateHandlers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/amazon/kindle/krx/update/IContentUpdateHandler;

    const-wide/16 v8, 0x3e8

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 950
    invoke-direct/range {v2 .. v9}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkContentUpdateHandler(Lcom/amazon/kindle/krx/update/IContentUpdateHandler;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkRegistrationStatus(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;
        }
    .end annotation

    .line 614
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 616
    :cond_0
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_READER_CANCELLED:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v1, "User is not registered"

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p1
.end method

.method private checkUpdateConditions(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;
        }
    .end annotation

    .line 540
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkIfBookIsOpen(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, p3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkContentState(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 542
    invoke-direct {p0, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkForSharedContent(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 543
    invoke-direct {p0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkAvailableDiskSpace()V

    .line 544
    invoke-direct {p0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkDeviceBatteryStatus()V

    .line 545
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkRegistrationStatus(Ljava/lang/String;)V

    return-void
.end method

.method private static computeTargetItemBookId(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 2

    .line 644
    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    .line 646
    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-direct {v1, v0, p0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    return-object v1
.end method

.method private static computeUpdateItemBookId(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 2

    .line 651
    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    .line 653
    new-instance v1, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    invoke-direct {v1, v0, p0}, Lcom/amazon/kcp/library/models/internal/UpdateBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    return-object v1
.end method

.method private deleteContentMetadata(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 5

    .line 1041
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting content metadata, updateItemBookId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 1043
    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1042
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/content/ILibraryService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;ZZ)V

    .line 1044
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content metadata has been deleted, updateItemBookId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private downloadContentItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Set;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/messaging/ITodoItem;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;",
            ">;",
            "Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 709
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "Attempting to download content item, todoItem: %s, bookId: %s, options: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;-><init>(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 713
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->getOrCreateMetaData(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    .line 715
    sget-object v2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;->SKIP_IF_LOCAL:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v2, v3, :cond_0

    .line 718
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string p2, "Item is already local, skipping download"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 724
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    invoke-interface {v2, p1, v1, p4}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 729
    invoke-virtual {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->waitForCompletion()V

    .line 730
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string p4, "Download finished"

    invoke-static {p1, p4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->verifyDownloadForUpdate(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Set;)V

    .line 733
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 734
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sleeping after download for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayAfterContentDownload:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 735
    iget-wide p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayAfterContentDownload:J

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    :cond_1
    return-void

    .line 725
    :cond_2
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string p2, "Failed to start download"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object p3, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_DOWNLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    invoke-direct {p1, p2, p3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p1
.end method

.method private getAnnotationsRevision(Lcom/amazon/kindle/content/ContentMetadata;)J
    .locals 2

    .line 635
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getBookAnnotationsManager(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->getJournalRevision()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getAsinAndGuid(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/messaging/ITodoItem;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1191
    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    .line 1193
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->ASC:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    const-string v2, "guid"

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->ASCG:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1201
    :cond_0
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->PHL:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    if-ne v0, v1, :cond_3

    .line 1202
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kcp$application$models$internal$TodoItem$Action:[I

    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->getAction(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 1205
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1194
    :cond_2
    :goto_0
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kcp$application$models$internal$TodoItem$Action:[I

    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->getAction(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    if-eq v0, v3, :cond_4

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0

    .line 1198
    :cond_4
    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object p0

    .line 1199
    new-instance v0, Landroid/util/Pair;

    const-string v1, "asin"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getOrCreateMetaData(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 8

    .line 1323
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 1324
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1331
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1332
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Subscription"

    .line 1333
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 1335
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object p1

    const-string v0, "is_multimedia_enabled"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "1"

    .line 1334
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1337
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v7, 0x1

    const-string v4, ""

    move-object v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method private handleUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)V
    .locals 2

    .line 252
    invoke-virtual {p1}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getTodoItem()Lcom/amazon/kindle/krx/messaging/ITodoItem;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->isSilentUpdateRequest(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;-><init>(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/contentupdate/db/UpdateItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;-><init>(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/contentupdate/db/UpdateItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method private handleWebRequestError(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 996
    sget-object p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " succeeded"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 998
    :cond_0
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed with error: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 999
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$krx$download$KRXRequestErrorState:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1004
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-retriable web request error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3, p4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p1

    .line 1001
    :cond_1
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Retriable web request error: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "UpdateRetryWebRequestFailed"

    invoke-direct {p1, p2, p3, p4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p1
.end method

.method private static isSilentUpdateRequest(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 2

    const-string v0, "silentUpdate"

    const/4 v1, 0x0

    .line 260
    invoke-static {p0, v0, v1}, Lcom/amazon/kindle/todo/TodoItemUtils;->getBoolean(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private notifyComplete(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Z)V
    .locals 8

    .line 664
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContentUpdateManager()Lcom/amazon/kindle/krx/update/IContentUpdateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/update/IContentUpdateManager;->getContentUpdateHandlers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/krx/update/IContentUpdateHandler;

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying handler "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that update is complete"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move v7, p5

    .line 666
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/krx/update/IContentUpdateHandler;->onContentUpdateComplete(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyStart(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 657
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContentUpdateManager()Lcom/amazon/kindle/krx/update/IContentUpdateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/update/IContentUpdateManager;->getContentUpdateHandlers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/update/IContentUpdateHandler;

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that update started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    invoke-interface {v1, p3, p4, p1, p2}, Lcom/amazon/kindle/krx/update/IContentUpdateHandler;->onContentUpdateStart(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private replaceTargetItemContent(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1012
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "Replacing target item content, sourceItemBookId: %s, targetItemBookId: %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->forceFailUpdatesBeforeSwap:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_OTHER:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v0, "Failing update because forceFailUpdatesBeforeSwap is true"

    invoke-direct {p1, v0, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p1

    .line 1020
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v5}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5, v4}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 1023
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->checkContentState(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 1024
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v2}, Lcom/amazon/kindle/content/ILibraryService;->replaceItemContent(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)V

    .line 1025
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v2, "Replacing target item content succeeded, sourceItemBookId: %s, targetItemBookId: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleeping after swap for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayAfterSwap:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1030
    iget-wide v5, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayAfterSwap:J

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 1033
    sget-object v2, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "Replacing target item content failed, sourceItemBookId: %s, targetItemBookId: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1035
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_FILE_SYSTEM_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v0, "Replacing target item content failed"

    invoke-direct {p1, v0, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p1
.end method

.method private resumePendingTodoItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/messaging/ITodoItem;",
            ">;)V"
        }
    .end annotation

    .line 1135
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v1, "Resuming pending TODO items"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/messaging/ITodoItem;

    .line 1137
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->todoService:Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;->processTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    goto :goto_0

    .line 1139
    :cond_0
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v0, "Done resuming pending TODO items"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendResponse(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 492
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidDeviceInformationProvider(Landroid/content/Context;)Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    move-result-object v0

    .line 493
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBooksDirectory()Ljava/io/File;

    move-result-object v1

    .line 496
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "updateRequestId"

    .line 497
    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p4

    const-string v2, "status"

    .line 498
    invoke-virtual {p4, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "asin"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p3, p4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "previousAssetId"

    if-eqz p1, :cond_1

    .line 500
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    invoke-virtual {p3, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "currentAssetId"

    if-eqz p2, :cond_2

    .line 501
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "startTime"

    .line 502
    invoke-virtual {p1, p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "availableSpace"

    .line 503
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getAvailableStorageSize(Ljava/lang/String;)J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "endTime"

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    .line 506
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 507
    sget-object p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Sending response: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMessengerServiceForPlugins()Lcom/amazon/kindle/krx/messaging/IMessengerService;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->context:Landroid/content/Context;

    const-string p4, "content.update.response"

    const-string p5, "UTF-8"

    invoke-virtual {p1, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p5, 0x0

    new-array p5, p5, [Lcom/amazon/dcp/messaging/DeliveryOption;

    invoke-interface {p2, p3, p4, p1, p5}, Lcom/amazon/kindle/krx/messaging/IMessengerService;->send(Landroid/content/Context;Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 514
    sget-object p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string p3, "Unable to send message"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 512
    sget-object p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string p3, "Unable to convert response to UTF-8"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception p1

    .line 510
    sget-object p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string p3, "Unable create JSON for response"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private shouldHandleTodoItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Z

    .line 1213
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-boolean v4, v1, v3

    .line 1214
    iget-object v5, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 1215
    invoke-interface {v5}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 1214
    invoke-interface {v5, p1, v4, v6, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1217
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v4

    .line 1226
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method private syncMrpr(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 940
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 941
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->downloadReadingPosition(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-void
.end method

.method private throwExceptionForHandler(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/update/IContentUpdateHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;
        }
    .end annotation

    .line 987
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    invoke-direct {v0, p2, p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UpdateFailurePlugin_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;->action:Ljava/lang/String;

    .line 989
    throw v0
.end method

.method private static toContentIdentifier(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/annotationconversion/ContentIdentifier;
    .locals 2

    .line 930
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 931
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object p0

    .line 932
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 935
    :cond_0
    invoke-static {v0, p0}, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private uploadAnnotations()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 672
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v1, "Uploading annotations"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 680
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sleeping before upload for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayBeforeAnnotationUpload:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    iget-wide v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayBeforeAnnotationUpload:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    invoke-interface {v0}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->uploadJournals()Lcom/amazon/kindle/annotation/IUploadJournalsResult;

    move-result-object v0

    .line 686
    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$annotation$IUploadJournalsResult$Status:[I

    invoke-interface {v0}, Lcom/amazon/kindle/annotation/IUploadJournalsResult;->getStatus()Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 692
    invoke-interface {v0}, Lcom/amazon/kindle/annotation/IUploadJournalsResult;->getWebRequestErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 693
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 694
    :goto_0
    sget-object v2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_ANNOTATION_UPLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v3, "Annotation upload"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->handleWebRequestError(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    const-wide/16 v0, 0x2710

    .line 697
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void

    .line 688
    :cond_2
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;

    const-string v1, "Annotation upload succeeded but journal changed during upload"

    const-string v2, "UpdateRetryAnnotationChangeDetected"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_3
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v1, "Annotation sync is disabled in user settings, aborting"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_ANNOTATION_SYNC_DISABLED:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v2, "Annotation sync is disabled in user settings"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw v0
.end method


# virtual methods
.method public getDebugDelayAfterContentDownload()J
    .locals 2

    .line 1287
    iget-wide v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayAfterContentDownload:J

    return-wide v0
.end method

.method public getDebugDelayAfterSwap()J
    .locals 2

    .line 1297
    iget-wide v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayAfterSwap:J

    return-wide v0
.end method

.method public getDebugDelayBeforeAnnotationUpload()J
    .locals 2

    .line 1277
    iget-wide v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayBeforeAnnotationUpload:J

    return-wide v0
.end method

.method public getForceFailUpdatesBeforeSwap()Z
    .locals 1

    .line 1267
    iget-boolean v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->forceFailUpdatesBeforeSwap:Z

    return v0
.end method

.method public handleTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 5

    .line 1144
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling TODO item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-static {p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->getAsinAndGuid(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1148
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v1, "Unrelated TODO item, sending to handler"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;->handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    return-void

    .line 1153
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1154
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1155
    sget-object v2, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v4, "ASIN: %s, GUID: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 1162
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->pendingTodoItems:Ljava/util/List;

    monitor-enter v2

    .line 1163
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->targetItemBookId:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->targetItemBookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1166
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v0, "Content update for ASIN is in progress, postponing TODO item"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->pendingTodoItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1172
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->shouldHandleTodoItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1173
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v1, "shouldHandleTodoItem() returns true, sending TODO item to handler"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;->handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    goto :goto_0

    .line 1176
    :cond_3
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string p2, "shouldHandleTodoItem() returns false, dropping TODO item"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1158
    :cond_4
    :goto_1
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string p2, "Unsafe TODO item, dropping"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleUpdate(Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 8

    .line 221
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling update, todoItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "updateRequestId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 224
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v0, "Dropping todo since UPDATE_REQUEST_ID_ATTR is null"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v7

    .line 228
    invoke-static {v7}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v0, "Account is null or empty, ignoring update"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->updateDAO:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    .line 233
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->addUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;J)Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    move-result-object v1

    .line 235
    invoke-direct {p0, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->handleUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)V
    :try_end_0
    .catch Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO$DuplicateRequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 237
    sget-object v2, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v3, "Dropping todo"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    invoke-static {p1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->computeTargetItemBookId(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    .line 239
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v7, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    const/4 v3, 0x0

    .line 240
    sget-object p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_DUPLICATE_UPDATE_REQUEST:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v5, v0

    .line 240
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sendResponse(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public onAfterSidecarDownload(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 7

    .line 1249
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sidecarDownloadCounts:Ljava/util/Map;

    monitor-enter v0

    .line 1250
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sidecarDownloadCounts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 1252
    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sidecar download finished, but count is already null, book ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1253
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1254
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sidecarDownloadCounts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sidecarDownloadCounts:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1256
    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v2, "Sidecar download finished, bookId: %s, newCount: null"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1258
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1259
    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sidecarDownloadCounts:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    sget-object v2, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v5, "Sidecar download finished, bookId: %s, newCount: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object v1, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onAppStartup()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->updateDAO:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    invoke-virtual {v0}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->getAllUpdates()Ljava/util/Collection;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " update(s) that need to be handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    invoke-direct {p0, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->handleUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/MopDeprecationUtils;->scan()V

    return-void
.end method

.method public onBeforeSidecarDownload(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 7

    .line 1236
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sidecarDownloadCounts:Ljava/util/Map;

    monitor-enter v0

    .line 1237
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sidecarDownloadCounts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1241
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1242
    iget-object v4, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->sidecarDownloadCounts:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v4, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    const-string v5, "Sidecar download started, bookId: %s, newCount: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onReaderControllerEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1308
    sget-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->scheduledUpdates:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$ScheduledUpdate;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v1, v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$ScheduledUpdate;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1314
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;

    iget-object v0, v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$ScheduledUpdate;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;-><init>(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/contentupdate/db/UpdateItem;)V

    const-wide/16 v3, 0x3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is now closed, so the update will be retried"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDebugDelayAfterContentDownload(J)V
    .locals 0

    .line 1292
    iput-wide p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayAfterContentDownload:J

    return-void
.end method

.method public setDebugDelayAfterSwap(J)V
    .locals 0

    .line 1302
    iput-wide p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayAfterSwap:J

    return-void
.end method

.method public setDebugDelayBeforeAnnotationUpload(J)V
    .locals 0

    .line 1282
    iput-wide p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->debugDelayBeforeAnnotationUpload:J

    return-void
.end method

.method public setForceFailUpdatesBeforeSwap(Z)V
    .locals 0

    .line 1272
    iput-boolean p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->forceFailUpdatesBeforeSwap:Z

    return-void
.end method

.method protected verifyDownloadForUpdate(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;
        }
    .end annotation

    .line 745
    instance-of v0, p1, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;->FAIL_IF_ALREADY_ON_DEVICE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 746
    new-instance p2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 747
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 748
    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 747
    invoke-interface {v0, p2, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    .line 749
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 750
    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 749
    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 757
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 758
    :cond_0
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_CONTENT_ALREADY_ON_DEVICE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v0, "The local content GUID matches the update content GUID. Aborting update."

    invoke-direct {p1, v0, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p1

    .line 753
    :cond_1
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing metadata after a SilentUpdate download. This should not happen. Old metadata "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", Update metadata "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object p2, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_CONTENT_NOT_PRESENT:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    const-string v0, "Metadata missing post-download"

    invoke-direct {p1, v0, p2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
