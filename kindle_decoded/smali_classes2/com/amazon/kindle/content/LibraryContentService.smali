.class public Lcom/amazon/kindle/content/LibraryContentService;
.super Lcom/amazon/kindle/event/BaseEventProvider;
.source "LibraryContentService.java"

# interfaces
.implements Lcom/amazon/kindle/content/ILibraryService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;
    }
.end annotation


# static fields
.field private static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final DELETE_ITEM_METRIC:Ljava/lang/String; = "DeleteLocalItem"

.field private static final DELETE_LIST_OF_ITEMS_METRIC:Ljava/lang/String; = "DeleteListOfLocalItems"

.field private static final EXTERNAL_SDCARD_SCANNED_METRIC:Ljava/lang/String; = "ExternalSDCardScanned"

.field private static final LOCAL_CONTENT_BY_PATH_CLAUSE:Ljava/lang/String;

.field private static final MANIFEST_LOAD_CONTENT_BATCH_SIZE:I = 0x5

.field private static final MINUTE_IN_MILLIS:J = 0xea60L

.field private static final NUM_ITEMS_DELETED_METRIC:Ljava/lang/String; = "NumItemsDeleted"

.field private static final SUPPORTED_EVENT_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private additionalMetadataProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

.field private final asm:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private audioDownloadHandler:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private blockingBroker:Lcom/amazon/kindle/event/EventBroker;

.field private final bookOwnershipsRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

.field private final contentAddMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

.field private final contentDeleteMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

.field private final contentPluginInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final contentRevokeMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

.field private final contentUpdateMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

.field private final context:Landroid/content/Context;

.field private final dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

.field private deleteLocalFilesPendingRemovalLock:Ljava/lang/Object;

.field private final largeLibraryHelper:Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;

.field private libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final localContentChangedCallback:Lcom/amazon/kindle/scan/LocalContentChangedCallback;

.field private final localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

.field private metadataCache:Lcom/amazon/kindle/content/IContentMetadataCache;

.field private final scanExternalContentManager:Lcom/amazon/kindle/scan/ScanExternalContentManager;

.field private final scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    const-class v0, Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/event/EventType;

    .line 140
    sget-object v1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_ADD:Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_DELETE:Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 141
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/LibraryContentService;->SUPPORTED_EVENT_TYPES:Ljava/util/Collection;

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1134
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " like ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1136
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/LibraryContentService;->LOCAL_CONTENT_BY_PATH_CLAUSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/content/dao/ILibraryContentDAO;Lcom/amazon/kindle/content/loader/ILocalContentFactory;ILcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/content/IBookOwnershipRecorder;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kcp/application/IAppSettingsController;Lcom/amazon/kindle/scan/ScanLocalContentUtils;)V
    .locals 1

    .line 220
    invoke-direct {p0, p4}, Lcom/amazon/kindle/event/BaseEventProvider;-><init>(I)V

    .line 175
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService;->contentPluginInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 178
    new-instance p4, Lcom/amazon/kindle/event/EventBroker;

    invoke-direct {p4}, Lcom/amazon/kindle/event/EventBroker;-><init>()V

    iput-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService;->blockingBroker:Lcom/amazon/kindle/event/EventBroker;

    .line 188
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemovalLock:Ljava/lang/Object;

    .line 190
    invoke-static {}, Lcom/amazon/kindle/content/ContentMetadataCacheFactory;->getContentMetadataCache()Lcom/amazon/kindle/content/IContentMetadataCache;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService;->metadataCache:Lcom/amazon/kindle/content/IContentMetadataCache;

    .line 194
    new-instance p4, Lcom/amazon/kindle/content/LibraryContentService$1;

    invoke-direct {p4, p0}, Lcom/amazon/kindle/content/LibraryContentService$1;-><init>(Lcom/amazon/kindle/content/LibraryContentService;)V

    iput-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentChangedCallback:Lcom/amazon/kindle/scan/LocalContentChangedCallback;

    .line 221
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->context:Landroid/content/Context;

    .line 222
    iput-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    .line 223
    iput-object p3, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    .line 224
    iput-object p5, p0, Lcom/amazon/kindle/content/LibraryContentService;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 225
    iput-object p6, p0, Lcom/amazon/kindle/content/LibraryContentService;->bookOwnershipsRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    .line 226
    iput-object p7, p0, Lcom/amazon/kindle/content/LibraryContentService;->asm:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 227
    iput-object p8, p0, Lcom/amazon/kindle/content/LibraryContentService;->appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    .line 228
    new-instance p1, Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;-><init>(Lcom/amazon/kindle/content/LibraryContentService$1;)V

    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->largeLibraryHelper:Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;

    .line 229
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 232
    invoke-direct {p0, p5}, Lcom/amazon/kindle/content/LibraryContentService;->registerAuthenticationListener(Lcom/amazon/kcp/application/IAuthenticationManager;)V

    .line 233
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-string p2, "CONTENT_UPDATE"

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createTopicMessageQueue(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->contentUpdateMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    .line 234
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-string p2, "CONTENT_ADD"

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createTopicMessageQueue(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->contentAddMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    .line 235
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-string p2, "CONTENT_DELETE"

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createTopicMessageQueue(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->contentDeleteMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    .line 236
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-string p2, "CONTENT_REVOKED"

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createTopicMessageQueue(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->contentRevokeMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    .line 238
    new-instance p1, Lcom/amazon/kindle/scan/ScanExternalContentManager;

    invoke-direct {p1}, Lcom/amazon/kindle/scan/ScanExternalContentManager;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->scanExternalContentManager:Lcom/amazon/kindle/scan/ScanExternalContentManager;

    .line 239
    invoke-virtual {p1}, Lcom/amazon/kindle/scan/ScanExternalContentManager;->initialize()V

    .line 240
    iput-object p9, p0, Lcom/amazon/kindle/content/LibraryContentService;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    .line 241
    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentChangedCallback:Lcom/amazon/kindle/scan/LocalContentChangedCallback;

    invoke-virtual {p9, p1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->setLocalContentChangedCallback(Lcom/amazon/kindle/scan/LocalContentChangedCallback;)V

    .line 242
    invoke-direct {p0, p8, p7}, Lcom/amazon/kindle/content/LibraryContentService;->handleDocumentSizeMigration(Lcom/amazon/kcp/application/IAppSettingsController;Lcom/amazon/kindle/download/assets/IAssetStateManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/content/LibraryContentService;)Ljava/util/Collection;
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getDocumentsForSizeMigration()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Z
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->deleteAsinSpecificDirectories(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/amazon/kindle/content/LibraryContentService;->largeLibraryHelper:Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/io/IFileConnectionFactory;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->deletePluginSidecars(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/amazon/kindle/content/LibraryContentService;)Landroid/content/Context;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/amazon/kindle/content/LibraryContentService;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/dao/ILibraryContentDAO;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/event/Event;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentDelete(Lcom/amazon/kindle/event/Event;)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kcp/application/IAuthenticationManager;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/amazon/kindle/content/LibraryContentService;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/content/LibraryContentService;)Ljava/lang/Object;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemovalLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addLocalContent(Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)V
    .locals 2

    .line 3252
    new-instance v0, Lcom/amazon/kindle/content/LibraryContentService$19;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService$19;-><init>(Lcom/amazon/kindle/content/LibraryContentService;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 3260
    :try_start_0
    invoke-static {p3, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->executeSequentialFileOperation(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    if-nez p1, :cond_0

    .line 3263
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to add local content, Invalid required assets for book"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3265
    sget-object p3, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3266
    sget-object p3, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3267
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3270
    sget-object p3, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error adding local content. Book id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private associateUserToSideLoadContent(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 505
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    sget-object p3, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2, p3, p1, v0, v1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->associateUserToContent(Ljava/lang/String;Ljava/util/Collection;J)V

    goto :goto_2

    .line 506
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 507
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 508
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 511
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 512
    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 513
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 514
    :cond_2
    invoke-interface {p3, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 515
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 521
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    sget-object p2, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1, p2, v0, v3, v4}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->associateUserToContent(Ljava/lang/String;Ljava/util/Collection;J)V

    .line 522
    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    sget-object p2, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    const-wide/16 v3, 0x1f4

    invoke-interface {p1, p2, v1, v3, v4}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->associateUserToContent(Ljava/lang/String;Ljava/util/Collection;J)V

    .line 523
    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    sget-object p2, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->associateUserToContent(Ljava/lang/String;Ljava/util/Collection;J)V

    :goto_2
    return-void
.end method

.method private deleteAsinSpecificDirectories(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2514
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 2518
    :cond_0
    sget-object v1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting removal of asin directories for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    .line 2521
    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    .line 2522
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v2

    .line 2524
    invoke-interface {v2, p1}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v3

    .line 2526
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 2527
    invoke-interface {v2, v3}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->revokeOwnership(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2530
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2531
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2532
    invoke-static {v2}, Lcom/amazon/kindle/io/FileSystemHelper;->renameAndDeleteDirectory(Ljava/io/File;)Z

    move-result v2

    and-int/2addr v5, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 2539
    :cond_2
    :goto_0
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPaths(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 2540
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_4

    .line 2541
    new-instance v1, Ljava/io/File;

    aget-object v2, p1, p2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2543
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2544
    invoke-static {v1}, Lcom/amazon/kindle/io/FileSystemHelper;->renameAndDeleteDirectory(Ljava/io/File;)Z

    move-result v1

    and-int/2addr v1, v5

    move v5, v1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return v5

    :cond_5
    :goto_3
    return v0
.end method

.method private deletePendingSidecars(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 2651
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2652
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/amazon/kindle/content/LibraryContentService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2653
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2654
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not deleting pending sidecars because local content still exists for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2658
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-interface {p2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2660
    new-instance p1, Lcom/amazon/kindle/content/LibraryContentService$16;

    invoke-direct {p1, p0, p2, v0, p3}, Lcom/amazon/kindle/content/LibraryContentService$16;-><init>(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    invoke-virtual {v1, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2677
    array-length p2, p1

    if-eqz p2, :cond_4

    .line 2678
    array-length p2, p1

    :goto_1
    if-ge v3, p2, :cond_4

    aget-object p3, p1, v3

    .line 2679
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2680
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 2682
    :cond_2
    invoke-static {p3}, Lcom/amazon/kindle/io/FileSystemHelper;->renameAndDeleteDirectory(Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 2683
    sget-object p3, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string v0, "Unable to move sidecar sub directory"

    invoke-static {p3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private deletePluginSidecars(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/io/IFileConnectionFactory;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 2555
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSidecarProviderRegistry()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2557
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;->getAllSidecars(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2558
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2559
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2560
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_0

    .line 2562
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete sidecar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it does not  exist"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private emitDeleteItemsMetric(Ljava/lang/String;I)V
    .locals 6

    .line 1819
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 1821
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 1823
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NumItemsDeleted"

    invoke-static {p2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    const-string v1, "LibraryContentService"

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1819
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private getDeletedOrMovedCallableForFilepath(Ljava/lang/String;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2143
    new-instance v0, Lcom/amazon/kindle/content/LibraryContentService$12;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/content/LibraryContentService$12;-><init>(Lcom/amazon/kindle/content/LibraryContentService;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDocumentsForSizeMigration()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/content/LibraryContentService$4;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/content/LibraryContentService$4;-><init>(Lcom/amazon/kindle/content/LibraryContentService;)V

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private handleDocumentSizeMigration(Lcom/amazon/kcp/application/IAppSettingsController;Lcom/amazon/kindle/download/assets/IAssetStateManager;)V
    .locals 2

    .line 282
    invoke-interface {p1}, Lcom/amazon/kcp/application/IAppSettingsController;->hasMigratedDocumentSizeInformation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/content/LibraryContentService$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/kindle/content/LibraryContentService$3;-><init>(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kcp/application/IAppSettingsController;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private isDemo()Z
    .locals 3

    const/4 v0, 0x0

    .line 2723
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.amazon.kindle.isDemo"

    .line 2724
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private isUserChild()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->isRestrictedAccount()Z

    move-result v0

    return v0
.end method

.method private loadManifestContent(Ljava/lang/String;Ljava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1180
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->isSDCardFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1181
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getLastScanned()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1183
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_7

    .line 1188
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1193
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1195
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string p2, "No asin directories found"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1200
    :cond_2
    new-instance v1, Lcom/amazon/kindle/content/LibraryContentService$7;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/content/LibraryContentService$7;-><init>(Lcom/amazon/kindle/content/LibraryContentService;)V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/io/File;

    .line 1212
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1216
    :goto_1
    array-length v7, p1

    if-ge v5, v7, :cond_6

    .line 1218
    array-length v7, p1

    sub-int/2addr v7, v5

    if-ge v7, v1, :cond_3

    .line 1222
    new-array v2, v7, [Ljava/io/File;

    goto :goto_2

    :cond_3
    const/4 v7, 0x5

    .line 1227
    :goto_2
    invoke-static {p1, v5, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1228
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1229
    iget-object v8, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, p2, v0, v2}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->loadManifestContent(Ljava/lang/String;Ljava/util/Set;Ljava/lang/Long;[Ljava/io/File;)Ljava/util/Collection;

    move-result-object v8

    .line 1230
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/kindle/content/ContentMetadata;

    .line 1231
    invoke-virtual {v10}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1235
    :cond_4
    invoke-virtual {p0, v3}, Lcom/amazon/kindle/content/LibraryContentService;->updateScannedMetadata(Ljava/util/Map;)V

    .line 1237
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v9

    invoke-interface {v9}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v9

    .line 1238
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/kindle/content/ContentMetadata;

    .line 1241
    invoke-virtual {v11}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->requestAnnotationsDownload(Ljava/lang/String;)V

    goto :goto_4

    .line 1244
    :cond_5
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v5, v7

    goto :goto_1

    :cond_6
    if-lez v6, :cond_7

    .line 1250
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "LibraryContentService"

    const-string v0, "ExternalSDCardScanned"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private publishContentAddEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Lcom/amazon/kindle/content/LibraryContentAddPayload;",
            ">;)V"
        }
    .end annotation

    .line 2934
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    .line 2936
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/LibraryContentAddPayload;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->onContentAdd(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V

    .line 2937
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->contentAddMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/events/ITopicMessageQueue;->publish(Ljava/lang/Object;Z)V

    return-void
.end method

.method private publishContentDelete(Lcom/amazon/kindle/event/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2941
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    .line 2943
    new-instance v0, Lcom/amazon/kindle/content/ContentDelete;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/content/ContentDelete;-><init>(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2944
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V

    .line 2945
    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->contentDeleteMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/events/ITopicMessageQueue;->publish(Ljava/lang/Object;Z)V

    return-void
.end method

.method private recordCorrespondingSampleToDelete(Ljava/util/Collection;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3058
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 3059
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 3060
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3061
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3062
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3064
    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3065
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3068
    :cond_1
    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3069
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private registerAuthenticationListener(Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 2

    .line 246
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/content/LibraryContentService$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/content/LibraryContentService$2;-><init>(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kcp/application/IAuthenticationManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private removeSamplesAssociatedToFullBooks(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 3002
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/content/filter/OwnedSamplesFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/content/filter/OwnedSamplesFilter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;

    move-result-object v0

    .line 3003
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3004
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 3006
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3008
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/ContentMetadata;

    .line 3009
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/amazon/kindle/content/LibraryContentService;->recordCorrespondingSampleToDelete(Ljava/util/Collection;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    .line 3013
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3014
    invoke-direct {p0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->updateToLocalOnly(Ljava/util/Collection;)V

    .line 3018
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3019
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string v0, "Deleting a sample to replace it with the fullbook"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;ZZ)V

    :cond_2
    return-void
.end method

.method private shouldUpateToDownloading(Lcom/amazon/kindle/model/content/ContentState;)Z
    .locals 1

    .line 3285
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private shouldUpateToQueue(Lcom/amazon/kindle/model/content/ContentState;)Z
    .locals 1

    .line 3275
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private static toFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    if-eqz p0, :cond_0

    .line 1055
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private updateMetadataOnly(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 7

    .line 1556
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1558
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/content/LibraryContentService;->processAuthorChanges(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V

    .line 1559
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/content/LibraryContentService;->processTitleChanges(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V

    .line 1561
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1562
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1563
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 1562
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1566
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GUID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1567
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 1566
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getPublisher()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1570
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLISHER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1571
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getPublisher()Ljava/lang/String;

    move-result-object v2

    .line 1570
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1574
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1575
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1574
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1578
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1579
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1578
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    :cond_4
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1582
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getLastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1581
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->WATERMARK:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1584
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getWaterMark()Ljava/lang/String;

    move-result-object v2

    .line 1583
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->OWNERSHIP_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1586
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v2

    .line 1585
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1588
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    .line 1587
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1590
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    .line 1589
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1592
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    .line 1593
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v2

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v2

    .line 1592
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1591
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->CLIPPING_BALANCE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1595
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getClippingBalance()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1594
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 1597
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1600
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    :cond_6
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateToLocalOnly(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3031
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3032
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v2, 0x0

    .line 3033
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/ContentMetadata;->setArchivable(Z)V

    goto :goto_0

    .line 3036
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    .line 3037
    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->addOrUpdateMetadata(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 3038
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentUpdate;

    .line 3039
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3042
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3043
    new-instance v0, Lcom/amazon/kindle/event/Event;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentUpdateEvent(Lcom/amazon/kindle/event/Event;)V

    :cond_2
    return-void
.end method

.method private updateToNewMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1546
    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/content/LibraryContentService;->updateMetadataOnly(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 1548
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->addContentMetadata(Ljava/util/Collection;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addCanceledBookToPendingDeletionTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 2788
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2789
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 2791
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2796
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object p2

    .line 2797
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const-string v1, ".prc"

    if-eqz v0, :cond_1

    .line 2798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 2800
    :goto_0
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2801
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lcom/amazon/kindle/io/FileSystemHelper;->getDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "//"

    const-string v3, "/"

    .line 2802
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 2803
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_EBOK.prc"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 2806
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2810
    :cond_3
    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".kfx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2811
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    .line 2813
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2814
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2815
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v4, v0

    goto :goto_2

    :cond_5
    move-object v4, p2

    .line 2820
    :goto_2
    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    .line 2821
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 2820
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->insertToPendingTable(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 531
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kindle/content/LibraryContentService;->addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 537
    invoke-virtual/range {v0 .. v8}, Lcom/amazon/kindle/content/LibraryContentService;->addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    return-object v0
.end method

.method public addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 544
    invoke-virtual/range {v0 .. v9}, Lcom/amazon/kindle/content/LibraryContentService;->addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    return-object v0
.end method

.method public addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 33

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v10, p4

    move/from16 v17, p6

    .line 551
    new-instance v18, Lcom/amazon/kindle/content/UserContent;

    move-object/from16 v16, v18

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v19

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const-wide/16 v25, 0x0

    const-string v27, "-1"

    const-string v28, "-1"

    const-string v29, ""

    const-wide/16 v30, 0x0

    invoke-direct/range {v18 .. v31}, Lcom/amazon/kindle/content/UserContent;-><init>(Ljava/lang/String;JIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 564
    new-instance v15, Lcom/amazon/kindle/content/ContentMetadata;

    move-object v0, v15

    .line 565
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    sget-object v14, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    move-object/from16 v32, v15

    move-object/from16 v15, v18

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;ZZ)V

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-object/from16 v2, v32

    invoke-virtual {v2, v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setDeliveryDate(J)V

    move/from16 v0, p5

    .line 585
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setHasMutlimediaContent(Z)V

    move/from16 v0, p7

    .line 586
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setIsFalkorEpisode(Z)V

    move/from16 v0, p9

    .line 587
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setIsHidden(Z)V

    .line 589
    invoke-static/range {p8 .. p8}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v0, p8

    .line 590
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setContentType(Ljava/lang/String;)V

    .line 593
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/LibraryContentService;->addContentMetadata(Ljava/util/Collection;)V

    return-object v2
.end method

.method public addContentMetadata(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 600
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->UNSPECIFIED:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/content/LibraryContentService;->addContentMetadata(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V

    return-void
.end method

.method public declared-synchronized addContentMetadata(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;",
            "Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 412
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 416
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 417
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v4

    .line 420
    sget-object v5, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->FULL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    invoke-virtual {v5, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->PARTIAL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    invoke-virtual {v5, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 421
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-ne v5, v6, :cond_0

    .line 422
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v2, v4

    goto :goto_0

    .line 425
    :cond_1
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 430
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 432
    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v3, p1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->addOrUpdateMetadata(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 433
    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService;->largeLibraryHelper:Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;

    invoke-static {v4, v0}, Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;->access$200(Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;Ljava/util/Collection;)V

    .line 435
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 436
    new-instance v4, Lcom/amazon/kindle/event/Event;

    new-instance v5, Lcom/amazon/kindle/content/LibraryContentAddPayload;

    invoke-direct {v5, p1, p2}, Lcom/amazon/kindle/content/LibraryContentAddPayload;-><init>(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V

    sget-object p1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_ADD:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v4, v2, v5, p1}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-direct {p0, v4}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentAddEvent(Lcom/amazon/kindle/event/Event;)V

    .line 440
    :cond_3
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/ContentUpdate;

    .line 441
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 444
    :cond_4
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 445
    new-instance p1, Lcom/amazon/kindle/event/Event;

    sget-object v4, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-direct {p1, v2, v3, v4}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentUpdateEvent(Lcom/amazon/kindle/event/Event;)V

    .line 449
    :cond_5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 450
    invoke-direct {p0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->removeSamplesAssociatedToFullBooks(Ljava/util/Collection;)V

    .line 454
    :cond_6
    sget-object p1, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 455
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 456
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 457
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 458
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isDefaultContentSupported()Z

    move-result v3

    .line 459
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/ContentMetadata;

    .line 462
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 463
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->isDownloadedFromRemoteTodo()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-ne v5, v6, :cond_7

    .line 464
    :cond_8
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_7

    .line 466
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isDefaultContent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 467
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isChineseLanguage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 468
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 470
    :cond_9
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 476
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "= ? AND ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->DOWNLOADING_FROM_REMOTE_TODO:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=? OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v4, v5, v0}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 481
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 482
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/db/Batch;

    .line 483
    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    const-string v5, "KindleContent"

    invoke-virtual {v3}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getBookIds(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 486
    :cond_b
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 487
    invoke-direct {p0, p1, v1, v2}, Lcom/amazon/kindle/content/LibraryContentService;->associateUserToSideLoadContent(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 488
    new-instance v0, Lcom/amazon/kindle/event/Event;

    sget-object v1, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    new-instance v2, Lcom/amazon/kindle/content/LibraryContentAddPayload;

    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    sget-object v4, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    .line 489
    invoke-interface {v3, p1, v4}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Lcom/amazon/kindle/content/LibraryContentAddPayload;-><init>(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V

    sget-object p1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_ADD:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    .line 488
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentAddEvent(Lcom/amazon/kindle/event/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addLocalContent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 3

    .line 1481
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1482
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->loadLocalContent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    .line 1484
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/content/LibraryContentService$8;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kindle/content/LibraryContentService$8;-><init>(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    .line 1492
    invoke-direct {p0, p2, p1, v0}, Lcom/amazon/kindle/content/LibraryContentService;->updateToNewMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 1494
    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getOwners(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    .line 1495
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1496
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->bookOwnershipsRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/content/IBookOwnershipRecorder;->addOwnership(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-object p2

    .line 1501
    :cond_1
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string p2, "In addLocalContnet(), invalid param: passed in userId is null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addLocalDownloadingContent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 1508
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1509
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->loadLocalContent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p3

    .line 1511
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p4

    new-instance v0, Lcom/amazon/kindle/content/LibraryContentService$9;

    invoke-direct {v0, p0, p3}, Lcom/amazon/kindle/content/LibraryContentService$9;-><init>(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p4, 0x1

    .line 1519
    invoke-direct {p0, p3, p1, p4}, Lcom/amazon/kindle/content/LibraryContentService;->updateToNewMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    .line 1521
    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-virtual {p3}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getOwners(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    .line 1522
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1523
    iget-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService;->bookOwnershipsRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p4, p2, v0}, Lcom/amazon/kindle/content/IBookOwnershipRecorder;->addOwnership(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    .line 1526
    :cond_0
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addLocalDownloadingContent fail, metadata is null. filePath "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p3

    .line 1530
    :cond_2
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string p2, "Invalid param, userId is null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public associateUserToContent(Ljava/lang/String;Ljava/util/Collection;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;Z)V"
        }
    .end annotation

    .line 2223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2225
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 2226
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2227
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 2228
    invoke-virtual {v2, p1, p3}, Lcom/amazon/kindle/content/ContentMetadata;->setOwner(Ljava/lang/String;Z)V

    .line 2229
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2231
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p2, p1, v0, v2, v3}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->associateUserToContent(Ljava/lang/String;Ljava/util/Collection;J)V

    .line 2232
    new-instance p2, Lcom/amazon/kindle/event/Event;

    new-instance p3, Lcom/amazon/kindle/content/LibraryContentAddPayload;

    sget-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->UNSPECIFIED:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    invoke-direct {p3, v1, v0}, Lcom/amazon/kindle/content/LibraryContentAddPayload;-><init>(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V

    sget-object v0, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_ADD:Lcom/amazon/kindle/event/EventType;

    invoke-direct {p2, p1, p3, v0}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-direct {p0, p2}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentAddEvent(Lcom/amazon/kindle/event/Event;)V

    .line 2234
    iget-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService;->bookOwnershipsRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    invoke-interface {p2, p1, v1}, Lcom/amazon/kindle/content/IBookOwnershipRecorder;->addOwnership(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method protected checkAndRemoveOldestBackIssues(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 29

    move-object/from16 v8, p0

    if-eqz p1, :cond_9

    .line 2352
    invoke-static/range {p1 .. p1}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2353
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2357
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v10

    .line 2359
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    const-wide/32 v1, 0xea60

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x5265c00

    const/4 v11, 0x0

    if-ne v10, v0, :cond_0

    .line 2361
    iget-object v0, v8, Lcom/amazon/kindle/content/LibraryContentService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/amazon/kindle/krl/R$integer;->nwstd_newspapers_back_issues_kept_days_count:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v12, v0

    mul-long v12, v12, v5

    .line 2364
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v5, Lcom/amazon/kcp/debug/DebugActivity;->NewsstandLibraryBackissuesTimeLimit_newspapers:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_1

    :goto_0
    mul-long v12, v5, v1

    goto :goto_1

    .line 2368
    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v10, v0, :cond_7

    .line 2370
    iget-object v0, v8, Lcom/amazon/kindle/content/LibraryContentService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/amazon/kindle/krl/R$integer;->nwstd_magazines_back_issues_kept_days_count:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v12, v0

    mul-long v12, v12, v5

    .line 2373
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v5, Lcom/amazon/kcp/debug/DebugActivity;->NewsstandLibraryBackissuesTimeLimit_magazines:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_1

    goto :goto_0

    .line 2399
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v12, v0, v12

    .line 2407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2408
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2409
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <> ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2410
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = 0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2411
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IN (?) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2412
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IN (?,?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    .line 2413
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v3, v14

    const/4 v0, 0x2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    .line 2414
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    .line 2415
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2416
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v1, "KindleContent"

    move-object/from16 v0, p0

    .line 2407
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kindle/content/LibraryContentService;->getBookIds(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2418
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 2419
    iget-object v1, v8, Lcom/amazon/kindle/content/LibraryContentService;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    if-ge v11, v0, :cond_4

    .line 2423
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2424
    iget-object v4, v8, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v4, v3, v1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    .line 2426
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v4

    cmp-long v6, v4, v12

    if-lez v6, :cond_2

    goto :goto_3

    .line 2431
    :cond_2
    invoke-virtual {v8, v3}, Lcom/amazon/kindle/content/LibraryContentService;->isBookOpened(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    .line 2436
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2437
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v6, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 2440
    invoke-virtual {v8, v3, v5, v4}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2444
    :cond_4
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v10, v1, :cond_5

    .line 2445
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v15

    sget-object v18, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    int-to-long v3, v0

    const-string v16, "NewsstandNewspaperBackIssuesTimer"

    const-string v17, "All"

    move-wide/from16 v19, v3

    invoke-virtual/range {v15 .. v20}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 2447
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v19

    sget-object v22, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    int-to-long v3, v2

    const-string v20, "NewsstandNewspaperBackIssuesTimer"

    const-string v21, "Expired"

    move-wide/from16 v23, v3

    invoke-virtual/range {v19 .. v24}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 2449
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v23

    sget-object v26, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    sub-int/2addr v0, v2

    int-to-long v0, v0

    const-string v24, "NewsstandNewspaperBackIssuesTimer"

    const-string v25, "Current"

    move-wide/from16 v27, v0

    invoke-virtual/range {v23 .. v28}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    goto :goto_4

    .line 2451
    :cond_5
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v10, v1, :cond_6

    .line 2452
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v15

    sget-object v18, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    int-to-long v3, v0

    const-string v16, "NewsstandMagazineBackIssuesTimer"

    const-string v17, "All"

    move-wide/from16 v19, v3

    invoke-virtual/range {v15 .. v20}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 2454
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v19

    sget-object v22, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    int-to-long v3, v2

    const-string v20, "NewsstandMagazineBackIssuesTimer"

    const-string v21, "Expired"

    move-wide/from16 v23, v3

    invoke-virtual/range {v19 .. v24}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 2456
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v23

    sget-object v26, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    sub-int/2addr v0, v2

    int-to-long v0, v0

    const-string v24, "NewsstandMagazineBackIssuesTimer"

    const-string v25, "Current"

    move-wide/from16 v27, v0

    invoke-virtual/range {v23 .. v28}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 2461
    :cond_6
    :goto_4
    invoke-virtual {v8, v14}, Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemoval(Z)V

    goto :goto_5

    .line 2386
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Newsstand : cleaning old back-issues error : Unknown periodical type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "],skipping cleaning."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2389
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2390
    iget-object v1, v8, Lcom/amazon/kindle/content/LibraryContentService;->context:Landroid/content/Context;

    invoke-static {v1, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2392
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2394
    :cond_8
    sget-object v1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public createFilterForBookTypes(Ljava/util/Set;)Lcom/amazon/kindle/content/filter/SQLQueryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;)",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;"
        }
    .end annotation

    .line 1476
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->createFilterForBookTypes(Ljava/util/Set;)Lcom/amazon/kindle/content/filter/SQLQueryFilter;

    move-result-object p1

    return-object p1
.end method

.method deleteAssociatedFiles(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2577
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".luc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->emptyDirectory(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2581
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".luci"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->emptyDirectory(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2585
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".lucene"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->emptyDirectory(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    :cond_3
    if-eqz p4, :cond_7

    .line 2592
    invoke-static {p4}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTicrFileNameForBook(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    .line 2593
    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2594
    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2597
    :cond_4
    invoke-static {p4}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTicrBackupFileNameForBook(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    .line 2598
    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2599
    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2602
    :cond_5
    invoke-static {p4}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTicrFileNameForBook(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    .line 2603
    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2604
    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2607
    :cond_6
    invoke-static {p4}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTicrBackupFileNameForBook(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    .line 2608
    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2609
    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2614
    :cond_7
    new-instance v0, Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/models/BookFileEnumerator;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 2615
    invoke-virtual {v0, p3, p4}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->getBookPageNumbers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v1

    .line 2616
    invoke-static {p1, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2617
    invoke-virtual {v0, p3, p4}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->getBookSettings(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v1

    .line 2618
    invoke-static {p1, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2619
    invoke-virtual {v0, p3, p4}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->getEncryptedBookSettings(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v1

    .line 2620
    invoke-static {p1, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2621
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->bookOwnershipsRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    invoke-interface {v1, p4}, Lcom/amazon/kindle/content/IBookOwnershipRecorder;->removeOwnership(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 2624
    invoke-virtual {v0, p3}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->getPdocIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2625
    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 2628
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSidecarProviderRegistry()Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eqz p4, :cond_8

    .line 2631
    invoke-interface {p4}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    .line 2630
    :goto_0
    invoke-interface {v0, p2, p3, v1}, Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;->getAllSidecars(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 2632
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2633
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2634
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_1

    .line 2636
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete sidecar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2637
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it does not exist"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 2642
    :cond_a
    invoke-direct {p0, p4, p1, p3}, Lcom/amazon/kindle/content/LibraryContentService;->deletePendingSidecars(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V

    return-void
.end method

.method deleteAudioContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1862
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->audioDownloadHandler:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

    if-nez v0, :cond_1

    .line 1864
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1865
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getAudioDownloadHandler()Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->audioDownloadHandler:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

    .line 1868
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->audioDownloadHandler:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

    if-eqz v0, :cond_2

    .line 1869
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1872
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kcp/library/ILibraryController;->getKrxBook(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 1873
    iget-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService;->audioDownloadHandler:Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;->onAudioBookDelete(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_2
    return-void
.end method

.method public deleteContentMetadata(Ljava/lang/String;)V
    .locals 12

    .line 780
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 787
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 788
    new-instance v1, Lcom/amazon/kindle/content/LibraryContentService$5;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/content/LibraryContentService$5;-><init>(Lcom/amazon/kindle/content/LibraryContentService;)V

    .line 798
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kindle/content/LibraryContentService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;

    move-result-object v1

    .line 799
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 800
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    .line 802
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v4, p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 805
    sget-object v4, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Forcing addition of local content delete - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getLastModified()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 805
    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v6, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getLastModified()J

    move-result-wide v9

    move-object v11, p1

    invoke-interface/range {v6 .. v11}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->insertToPendingTable(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 815
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->asm:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->unpersistAllAssets(Ljava/util/List;)V

    .line 816
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->deleteAllContentByUser(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 817
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->deletePendingUserContent(Z)V

    .line 818
    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->largeLibraryHelper:Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;

    invoke-static {p1, v0}, Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;->access$400(Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;Ljava/util/Collection;)V

    return-void
.end method

.method public deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 730
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/content/LibraryContentService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 742
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 747
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 748
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 750
    invoke-interface {v2}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 751
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->informBookCloseToUser()V

    goto :goto_0

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2, p4}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 759
    iget-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService;->largeLibraryHelper:Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;

    invoke-static {p4, p1}, Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;->access$300(Lcom/amazon/kindle/content/LibraryContentService$LargeLibraryHelper;Ljava/util/Collection;)V

    .line 760
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/content/LibraryContentService;->deletePendingUserContent(Z)V

    .line 761
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 762
    iget-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {p4, p3, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p4

    if-nez p4, :cond_3

    .line 764
    invoke-static {p3}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p3

    .line 766
    iget-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService;->asm:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {p4, p3}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->purgeAssets(Lcom/amazon/kindle/model/content/IBookID;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public deleteItemLocally(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1729
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/content/LibraryContentService;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method public deleteItemLocally(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 2

    .line 1753
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1756
    invoke-interface {p3}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1757
    invoke-interface {p3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    invoke-interface {p3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->informBookCloseToUser()V

    .line 1762
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p3

    .line 1764
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->asm:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {v0, p3}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->purgeAssets(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 1765
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->addCanceledBookToPendingDeletionTable(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "DeleteLocalItem"

    .line 1766
    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/content/LibraryContentService;->emitDeleteItemsMetric(Ljava/lang/String;I)V

    if-eqz p4, :cond_1

    .line 1769
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadataToRemoteState(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    xor-int/2addr p4, v0

    .line 1773
    invoke-virtual {p0, v0, p4, p5}, Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemoval(ZZZ)V

    if-eqz p6, :cond_2

    .line 1776
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->deleteAudioContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    :cond_2
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/content/LibraryContentService;->deleteRecentSearchHistoryOnDeletingBook(Lcom/amazon/kindle/model/content/IBookID;)V

    return-void
.end method

.method public deleteItemsLocally(Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1785
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1787
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1788
    invoke-static {v1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    .line 1789
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1790
    invoke-virtual {p0, v1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->deleteAudioContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/content/LibraryContentService;->deleteRecentSearchHistoryOnDeletingBook(Lcom/amazon/kindle/model/content/IBookID;)V

    goto :goto_0

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->asm:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {v0, p3}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->unpersistAllAssets(Ljava/util/List;)V

    .line 1798
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    const-string v0, "DeleteListOfLocalItems"

    invoke-direct {p0, v0, p3}, Lcom/amazon/kindle/content/LibraryContentService;->emitDeleteItemsMetric(Ljava/lang/String;I)V

    .line 1800
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 1801
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1805
    :cond_2
    invoke-virtual {p0, p3, p2}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadataToRemoteState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 1809
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemoval(Z)V

    return-void
.end method

.method public deleteLocalFilesPendingRemoval(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1905
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemoval(ZZZ)V

    return-void
.end method

.method public deleteLocalFilesPendingRemoval(ZZZ)V
    .locals 1

    .line 1910
    new-instance v0, Lcom/amazon/kindle/content/LibraryContentService$11;

    invoke-direct {v0, p0, p2, p3}, Lcom/amazon/kindle/content/LibraryContentService$11;-><init>(Lcom/amazon/kindle/content/LibraryContentService;ZZ)V

    if-eqz p1, :cond_0

    .line 2023
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 2025
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public deleteOfficeDocsEntriesInDB()V
    .locals 3

    .line 902
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/content/LibraryContentService;->createFilterForBookTypes(Ljava/util/Set;)Lcom/amazon/kindle/content/filter/SQLQueryFilter;

    move-result-object v0

    .line 903
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/content/LibraryContentService;->getBookIds(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v0

    .line 904
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/amazon/kindle/content/LibraryContentService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public deleteOrUpdateMetadata(Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 916
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 917
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 919
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 920
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 921
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 922
    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v4, v3, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_2

    .line 924
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 925
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 926
    :cond_2
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v5, v6, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 929
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 927
    :cond_4
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 934
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 935
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string p2, "Removing contents from Library for ownership revocation (JP)"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 936
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 939
    :cond_6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 940
    invoke-direct {p0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->updateToLocalOnly(Ljava/util/Collection;)V

    :cond_7
    return-void
.end method

.method public deletePendingUserContent(Z)V
    .locals 1

    .line 824
    new-instance v0, Lcom/amazon/kindle/content/LibraryContentService$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/content/LibraryContentService$6;-><init>(Lcom/amazon/kindle/content/LibraryContentService;Z)V

    if-eqz p1, :cond_0

    .line 894
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 896
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method deleteRecentSearchHistoryOnDeletingBook(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1836
    invoke-static {}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->getInstance()Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    move-result-object v0

    .line 1841
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1844
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->deleteAllTermsForBookId(Ljava/lang/String;)I

    goto :goto_0

    .line 1847
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1850
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->deleteAllTermsForBookId(Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public duplicateAllUnregisteredSideloadedContent(Ljava/lang/String;)V
    .locals 5

    .line 2252
    sget-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    new-instance v1, Lcom/amazon/kindle/content/LibraryContentService$14;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/content/LibraryContentService$14;-><init>(Lcom/amazon/kindle/content/LibraryContentService;)V

    .line 2253
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v0

    .line 2276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2278
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/ContentMetadata;

    .line 2279
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2280
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v4, 0x1

    .line 2281
    invoke-virtual {v3, p1, v4}, Lcom/amazon/kindle/content/ContentMetadata;->setOwner(Ljava/lang/String;Z)V

    .line 2282
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2284
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->duplicateUnregisteredSideloadedContent(Ljava/lang/String;)V

    .line 2290
    invoke-direct {p0}, Lcom/amazon/kindle/content/LibraryContentService;->isDemo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2291
    new-instance v0, Lcom/amazon/kindle/event/Event;

    new-instance v1, Lcom/amazon/kindle/content/LibraryContentAddPayload;

    sget-object v3, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->UNSPECIFIED:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/content/LibraryContentAddPayload;-><init>(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V

    sget-object v2, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_ADD:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentAddEvent(Lcom/amazon/kindle/event/Event;)V

    :cond_1
    return-void
.end method

.method public duplicateUnregisteredUserSideloadedContent(Ljava/lang/String;Z)V
    .locals 5

    .line 2298
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isSideloadPermissionChangesEnabled()Z

    move-result v0

    .line 2299
    invoke-static {}, Lcom/amazon/kindle/content/SideloadedContentUtilsManager;->getInstance()Lcom/amazon/kindle/content/SideloadedContentUtils;

    move-result-object v1

    .line 2300
    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    sget-object v3, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    new-instance v4, Lcom/amazon/kindle/content/LibraryContentService$15;

    invoke-direct {v4, p0, p2, v0, v1}, Lcom/amazon/kindle/content/LibraryContentService$15;-><init>(Lcom/amazon/kindle/content/LibraryContentService;ZZLcom/amazon/kindle/content/SideloadedContentUtils;)V

    .line 2301
    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;

    move-result-object p2

    .line 2327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2328
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v3, 0x1

    .line 2329
    invoke-virtual {v2, p1, v3}, Lcom/amazon/kindle/content/ContentMetadata;->setOwner(Ljava/lang/String;Z)V

    .line 2330
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 2331
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2334
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->addOrUpdateMetadata(Ljava/util/Collection;)Ljava/util/Collection;

    .line 2340
    invoke-direct {p0}, Lcom/amazon/kindle/content/LibraryContentService;->isDemo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2344
    new-instance v0, Lcom/amazon/kindle/event/Event;

    new-instance v1, Lcom/amazon/kindle/content/LibraryContentAddPayload;

    sget-object v2, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->UNSPECIFIED:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    invoke-direct {v1, p2, v2}, Lcom/amazon/kindle/content/LibraryContentAddPayload;-><init>(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V

    sget-object p2, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_ADD:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v0, p1, v1, p2}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentAddEvent(Lcom/amazon/kindle/event/Event;)V

    :cond_1
    return-void
.end method

.method public forceRescanFileSystem()V
    .locals 2

    .line 2839
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scanForLocalContent(Z)V

    return-void
.end method

.method public getAdditionalMetadataForBook(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2964
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->additionalMetadataProviders:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2969
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 2971
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->additionalMetadataProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;

    .line 2972
    invoke-interface {v2, p1, p2}, Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;->get(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2973
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getAllContentMetadata(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/util/ConcurrentDataModificationException;
        }
    .end annotation

    .line 2954
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getAllContentMetadata(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBookIds(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1470
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getBookIds(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getBookIds(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1464
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getBookIds(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 3

    .line 1665
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->metadataCache:Lcom/amazon/kindle/content/IContentMetadataCache;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/IContentMetadataCache;->getMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 1673
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1674
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/content/LibraryContentService;->loadLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    :cond_1
    return-object v0

    .line 1679
    :cond_2
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v0, p1, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 1682
    invoke-virtual {p0, v0, p3, p4}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p2, 0x0

    .line 1684
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {v0, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1685
    iget-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, p3

    :goto_0
    new-instance v2, Lcom/amazon/kindle/content/LibraryContentService$10;

    invoke-direct {v2, p0, p1, p3}, Lcom/amazon/kindle/content/LibraryContentService$10;-><init>(Lcom/amazon/kindle/content/LibraryContentService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0, v2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1713
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 1714
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result p3

    if-nez p3, :cond_5

    .line 1715
    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->metadataCache:Lcom/amazon/kindle/content/IContentMetadataCache;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/content/IContentMetadataCache;->putMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V

    if-eqz p4, :cond_6

    .line 1717
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1718
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/content/LibraryContentService;->loadLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    :cond_6
    return-object p2

    :cond_7
    return-object v1
.end method

.method public getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 352
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object p2

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->metadataCache:Lcom/amazon/kindle/content/IContentMetadataCache;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/IContentMetadataCache;->getMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    invoke-static {v0, v1}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->migrateDocumentIfNeeded(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/application/IAppSettingsController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    move-object v0, p1

    .line 364
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->metadataCache:Lcom/amazon/kindle/content/IContentMetadataCache;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/content/IContentMetadataCache;->putMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V

    :cond_2
    return-object v0
.end method

.method public getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 0

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 383
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->loadLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    :cond_0
    return-object p1
.end method

.method public getContentMetadata(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-nez p1, :cond_0

    .line 374
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 375
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getContentSnapshot()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 2192
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/content/LibraryContentService$13;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/content/LibraryContentService$13;-><init>(Lcom/amazon/kindle/content/LibraryContentService;)V

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCoverMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2068
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    .line 2069
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2070
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public bridge synthetic getCoverMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/IListableBook;
    .locals 0

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->getCoverMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentUserBookAsins(I)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3129
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->startLibraryLookup()Lcom/amazon/kindle/content/ILibraryLookupBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryLookupBuilder;->currentUser()Lcom/amazon/kindle/content/ILibraryLookupBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/ILibraryLookupBuilder;->limit(Ljava/lang/Integer;)Lcom/amazon/kindle/content/ILibraryLookupBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/content/ILibraryLookupBuilder;->getAsins()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method getDRMVoucherFilePath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 6

    .line 1341
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v0

    .line 1343
    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 1344
    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService;->asm:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v3, v1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAssets(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v1

    .line 1345
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 1346
    sget-object v4, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v3
.end method

.method public getDictionaryFieldFromAsin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3092
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getDictionaryFieldFromAsin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDictionaryInfoFromTable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            ">;"
        }
    .end annotation

    .line 3087
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getDictionaryInfoFromTable()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDictionaryInfoFromTableForASIN([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            ">;"
        }
    .end annotation

    .line 3082
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getDictionaryInfoFromTableForASIN([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getIdOfMostRecentIssueOfPeriodical(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 2481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2486
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2487
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->IS_MOST_RECENT_ISSUE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2488
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = 1 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2489
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in (?,?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v4, v9

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    .line 2490
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v4, v2

    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    .line 2491
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v4, v2

    const-string v2, "KindleContent"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2486
    invoke-interface/range {v1 .. v8}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getBookIds(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2493
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2497
    :cond_0
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemCountInCarousel(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x0

    .line 2762
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    const-string v2, "UserContent"

    const-string v3, "COUNT(*)"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2763
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v0

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2762
    invoke-interface/range {v1 .. v9}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2767
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2768
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz p1, :cond_2

    .line 2770
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 2762
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_1

    .line 2770
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2771
    :catch_0
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string v1, "Error getting Item count for carousel"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0
.end method

.method public getLocalBook(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2242
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2244
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->loadLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 2245
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getLocalBookIdsWithWhispersyncedAnnotations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2834
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getLocalBookIdsWithWhispersyncedAnnotations()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getLocalContentByPath(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 1067
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getLocalContentByPath(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalContentFactory()Lcom/amazon/kindle/content/loader/ILocalContentFactory;
    .locals 1

    .line 1657
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    return-object v0
.end method

.method getSideloadedMetadataWithExistingKey(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/content/ContentMetadata;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2042
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kindle/model/content/SideloadBookID;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2045
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/kindle/model/content/SideloadBookID;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/SideloadBookID;

    move-result-object v0

    goto :goto_0

    .line 2048
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/amazon/kindle/content/LibraryContentService;->getLocalContentByPath(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2050
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 2056
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setBookID(Lcom/amazon/kindle/model/content/IBookID;)V

    :cond_2
    return-object p1
.end method

.method public getSupportedEventTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentService;->SUPPORTED_EVENT_TYPES:Ljava/util/Collection;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2218
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getUserIds()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getWatermarkSnapshotList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/models/WatermarkSnapshot;",
            ">;"
        }
    .end annotation

    .line 2173
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getContentSnapshot()Ljava/util/Collection;

    move-result-object v0

    .line 2175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 2177
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 2178
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    .line 2179
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eq v4, v5, :cond_1

    .line 2180
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v4, v5, :cond_1

    .line 2181
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v4, v5, :cond_0

    :cond_1
    if-eqz v3, :cond_0

    .line 2182
    new-instance v4, Lcom/amazon/kcp/library/models/WatermarkSnapshot;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getWaterMark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-direct {v4, v3, v5, v2}, Lcom/amazon/kcp/library/models/WatermarkSnapshot;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public handleFileEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2077
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received File system event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", relativePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const-string v0, "."

    .line 2082
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ignoring "

    if-nez v0, :cond_8

    const-string v0, "_temp"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 2087
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2090
    iget-object p3, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    invoke-interface {p3, p2}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->isFileSupported(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 2091
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as it is not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_2
    and-int/lit8 p3, p1, 0x8

    const/16 v0, 0x8

    if-eq p3, v0, :cond_3

    and-int/lit16 p3, p1, 0x80

    const/16 v0, 0x80

    if-ne p3, v0, :cond_5

    :cond_3
    const/4 p3, 0x1

    .line 2098
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemoval(Z)V

    .line 2101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling local factory for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2103
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->loadLocalContent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    const/4 v1, 0x0

    .line 2107
    invoke-virtual {p0, v0, p2, v1}, Lcom/amazon/kindle/content/LibraryContentService;->getSideloadedMetadataWithExistingKey(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/kindle/content/ContentMetadata;

    .line 2114
    invoke-direct {p0}, Lcom/amazon/kindle/content/LibraryContentService;->isUserChild()Z

    move-result v1

    xor-int/2addr p3, v1

    .line 2116
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/content/LibraryContentService;->updateToNewMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Z)V

    if-eqz p3, :cond_5

    if-eqz v0, :cond_5

    .line 2119
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p3

    sget-object v1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SideloadedContentFileExt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/amazon/kindle/io/FileSystemHelper;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    iget-object p3, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getOwners(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p3

    .line 2121
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2122
    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService;->bookOwnershipsRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/amazon/kindle/content/IBookOwnershipRecorder;->addOwnership(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    .line 2125
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookPreloader()Lcom/amazon/kcp/application/IBookPreloader;

    move-result-object p3

    invoke-interface {p3, v0}, Lcom/amazon/kcp/application/IBookPreloader;->preload(Lcom/amazon/kindle/content/ContentMetadata;)V

    :cond_5
    and-int/lit16 p3, p1, 0x200

    const/16 v0, 0x200

    if-eq p3, v0, :cond_6

    const/16 p3, 0x40

    and-int/2addr p1, p3

    if-ne p1, p3, :cond_7

    .line 2132
    :cond_6
    invoke-direct {p0, p2}, Lcom/amazon/kindle/content/LibraryContentService;->getDeletedOrMovedCallableForFilepath(Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object p1

    .line 2135
    :try_start_0
    invoke-static {p2, p1}, Lcom/amazon/kindle/io/FileSystemHelper;->executeSequentialFileOperation(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2137
    sget-object p2, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string p3, "Error clean up after content delete/move"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void

    .line 2083
    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as it is hidden/temporary"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method initializeContentPlugin()V
    .locals 5

    .line 2884
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->contentPluginInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 2885
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->contentPluginInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2886
    invoke-static {}, Lcom/amazon/kindle/krx/PluginInitializer;->getInstance()Lcom/amazon/kindle/krx/plugin/IPluginInitializer;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->content_change:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kindle/krx/plugin/IPluginInitializer;->initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;I)V

    .line 2888
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insertDictionaryInfoToTable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            ">;)V"
        }
    .end annotation

    .line 3077
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->insertDictionaryInfoToTable(Ljava/util/List;)V

    return-void
.end method

.method protected isBookOpened(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2472
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 2476
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSDCardFeatureEnabled()Z
    .locals 1

    .line 1458
    invoke-static {}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->isExternalSDCardFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/filter/ContentMetadataFilter;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public listDictionaryContent(Ljava/lang/String;Lcom/amazon/kindle/model/content/DictionaryType;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/model/content/DictionaryType;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 1088
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->listDictionaryContent(Ljava/lang/String;Lcom/amazon/kindle/model/content/DictionaryType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected loadLocalContent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1265
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->loadLocalContents(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Ljava/util/Collection;

    move-result-object p1

    .line 1268
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1269
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    .line 1270
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/amazon/kindle/content/LibraryContentService;->getSideloadedMetadataWithExistingKey(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/kindle/content/ContentMetadata;

    .line 1272
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1277
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1279
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1280
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1290
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1291
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1293
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    .line 1294
    invoke-virtual {p0, v3}, Lcom/amazon/kindle/content/LibraryContentService;->getDRMVoucherFilePath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v3

    .line 1295
    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    invoke-interface {v4, v2}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->contentExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1297
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_1

    .line 1300
    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    invoke-interface {v4, v3}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->contentExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1302
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1309
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1311
    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    invoke-interface {v3, v2}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->contentExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1313
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1320
    :cond_4
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/content/LibraryContentService;->updateScannedMetadata(Ljava/util/Map;)V

    .line 1323
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1325
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1327
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v2, :cond_5

    .line 1328
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 1329
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1330
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1329
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    :cond_5
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public loadLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 390
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->localContentFactory:Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->loadLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "delete content metadata on deregistration took "

    .line 3102
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne v1, v2, :cond_0

    .line 3103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3105
    :try_start_0
    sget-object v3, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string v4, "Deleting content metadata on de-registration"

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getUser()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->deleteContentMetadata(Ljava/lang/String;)V

    .line 3107
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCollectionsDAO()Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->deleteAllCollections()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3109
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3109
    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v3, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3109
    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onDownloadStateUpdate(Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;)V
    .locals 9
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 3134
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object v0

    .line 3135
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    .line 3136
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    .line 3137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " book id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3138
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3139
    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->UNKNOWN:Lcom/amazon/kindle/model/content/ContentState;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    .line 3140
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3142
    sget-object v5, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->CANCEL:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/4 v6, 0x1

    if-eq v0, v5, :cond_1

    .line 3143
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3145
    :cond_1
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3147
    sget-object v5, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receive Download Status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    sget-object v5, Lcom/amazon/kindle/content/LibraryContentService$20;->$SwitchMap$com$amazon$kindle$services$download$IDownloadRequestGroup$GroupDownloadStatus:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    const/4 v5, 0x0

    const-string v7, "Going to update ContentState to  "

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 3237
    :pswitch_0
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3238
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3240
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    invoke-virtual {p0, v1, v5, v4}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3245
    invoke-virtual {p0, v1, v5}, Lcom/amazon/kindle/content/LibraryContentService;->addCanceledBookToPendingDeletionTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    invoke-virtual {p0, v6}, Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemoval(Z)V

    goto/16 :goto_2

    .line 3230
    :pswitch_1
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->PAUSED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3232
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->PAUSED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    invoke-virtual {p0, v1, v5, v4}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 3223
    :pswitch_2
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->PAUSED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3225
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->PAUSED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    invoke-virtual {p0, v1, v5, v4}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 3205
    :pswitch_3
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object p1

    .line 3206
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    .line 3208
    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->isErrorRetryable(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3209
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    goto :goto_1

    .line 3211
    :cond_2
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    .line 3214
    :goto_1
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getContentMetadataUpdate()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3215
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3217
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    invoke-virtual {p0, v1, v5, v4}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 3197
    :pswitch_4
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3199
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->FAILED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    invoke-virtual {p0, v1, v5, v4}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 3188
    :pswitch_5
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3190
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    .line 3191
    invoke-static {v1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    .line 3192
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getMainContentFile()Ljava/lang/String;

    move-result-object p1

    .line 3190
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/content/LibraryContentService;->addLocalContent(Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3176
    :pswitch_6
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3178
    invoke-virtual {p0, v1, v5, v4}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3179
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    .line 3180
    invoke-static {v1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    .line 3181
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getMainContentFile()Ljava/lang/String;

    move-result-object p1

    .line 3179
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/content/LibraryContentService;->addLocalContent(Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)V

    goto :goto_2

    .line 3163
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/amazon/kindle/content/LibraryContentService;->shouldUpateToDownloading(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 3167
    :cond_3
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3169
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    invoke-virtual {p0, v1, v5, v4}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 3150
    :pswitch_8
    invoke-direct {p0, v3}, Lcom/amazon/kindle/content/LibraryContentService;->shouldUpateToQueue(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 3154
    :cond_4
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3155
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    invoke-virtual {p0, v1, v5, v4}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepopulateCoverState()V
    .locals 1

    .line 3300
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->prepopulateCoverState()V

    return-void
.end method

.method processAuthorChanges(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1610
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1612
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 1616
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1617
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v2

    .line 1616
    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 1621
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    move-result-object p1

    .line 1622
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1624
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1625
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object p2

    .line 1624
    invoke-interface {p1, v1, v2, p2}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1622
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method processTitleChanges(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1630
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1632
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1633
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 1632
    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 1637
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1638
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v2

    .line 1637
    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 1642
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    move-result-object p1

    .line 1643
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1645
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1646
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 1645
    invoke-interface {p1, v1, v2, p2}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1643
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method publishContentRevokeEvent(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2929
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->contentRevokeMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/events/ITopicMessageQueue;->publish(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public publishContentUpdateEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/Event<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;>;)V"
        }
    .end annotation

    .line 2917
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->shouldPostOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2918
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->publishEventOnMainThread(Lcom/amazon/kindle/event/Event;)V

    goto :goto_0

    .line 2920
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    .line 2923
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->onContentUpdate(Ljava/util/Collection;)V

    .line 2924
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->contentUpdateMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/Event;->getPayload()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/events/ITopicMessageQueue;->publish(Ljava/lang/Object;Z)V

    return-void
.end method

.method public publishEvent(Lcom/amazon/kindle/event/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 2878
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->initializeContentPlugin()V

    .line 2879
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->blockingBroker:Lcom/amazon/kindle/event/EventBroker;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/event/EventBroker;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    .line 2880
    invoke-super {p0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    return-void
.end method

.method public publishEventOnMainThread(Lcom/amazon/kindle/event/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 2898
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2899
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2900
    new-instance v1, Lcom/amazon/kindle/content/LibraryContentService$18;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/content/LibraryContentService$18;-><init>(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/event/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2907
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    :goto_0
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    move-object v0, p0

    .line 1124
    iget-object v1, v0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryNumberEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->queryNumberEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public registerAdditionalMetadataProvider(Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;)V
    .locals 1

    .line 2984
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->additionalMetadataProviders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->additionalMetadataProviders:Ljava/util/List;

    .line 2987
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->additionalMetadataProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 2853
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering handler (non-blocking) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for events "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/event/IEventHandler;->getEventTypes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2856
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    return-void
.end method

.method public replaceItemContent(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    move-object/from16 v10, p3

    const-string v11, "Deleting the source item to replace content"

    .line 947
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v3, v12

    const/4 v13, 0x1

    aput-object v1, v3, v13

    const-string v4, "Replacing item content, sourceItemBookId: %s, targetItemBookId: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    .line 955
    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v0

    .line 956
    new-instance v3, Ljava/io/File;

    invoke-interface {v0, v9}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v10}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 961
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 962
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v6

    .line 963
    invoke-interface {v6, v9}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/kindle/content/LibraryContentService;->toFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 967
    :try_start_0
    iget-object v14, v8, Lcom/amazon/kindle/content/LibraryContentService;->asm:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->unpersistAllAssets(Ljava/util/List;)V

    .line 968
    iget-object v14, v8, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->deleteLocalContent(Ljava/util/Collection;)V

    .line 969
    invoke-virtual {v8, v12}, Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemoval(Z)V

    .line 972
    iget-object v14, v8, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v15, v2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->updateLocalContentKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v2, v8, Lcom/amazon/kindle/content/LibraryContentService;->asm:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v2, v14, v15}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->updateGroupId(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v2

    .line 975
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v10, v14}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getBookAnnotationsManager(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v2

    .line 976
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->updateBookId(Ljava/lang/String;)V

    .line 980
    new-instance v2, Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_0

    .line 983
    invoke-interface {v6, v1}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/content/LibraryContentService;->toFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 985
    :goto_1
    new-instance v6, Ljava/io/File;

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 988
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 989
    sget-object v14, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v15, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v14, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v6, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getMrpr()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->WAYPOINTS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getWaypointsAsJSON()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getFurthestPositionRead()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iget-object v4, v8, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v10, v6}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->updateMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1003
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1004
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_2

    .line 1007
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1012
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    .line 1013
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1014
    invoke-static {v2}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->deleteDirectory(Ljava/io/File;)V

    goto :goto_2

    .line 1019
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1020
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    .line 1021
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    .line 1022
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1023
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1025
    array-length v5, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 1026
    invoke-static {v7, v2, v12}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1029
    :cond_5
    invoke-static {v3}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->deleteDirectory(Ljava/io/File;)V

    goto :goto_3

    .line 1031
    :cond_6
    invoke-static {v3, v2}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_3

    .line 1034
    :cond_7
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string v2, "Replacing item content succeeded, sourceItemBookId: %s, targetItemBookId: %s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v9, v4, v12

    aput-object v1, v4, v13

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0, v10, v12, v13}, Lcom/amazon/kindle/content/LibraryContentService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;ZZ)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1039
    :try_start_1
    sget-object v2, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string v3, "Replacing item content failed, sourceItemBookId: %s, targetItemBookId: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v12

    aput-object v1, v4, v13

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1042
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/content/LibraryContentService;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 1044
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    :goto_5
    sget-object v1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    invoke-static {v1, v11}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1, v10, v12, v13}, Lcom/amazon/kindle/content/LibraryContentService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;ZZ)V

    .line 1050
    throw v0

    .line 959
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Source item does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public revokeItemLocally(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 2

    .line 1734
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentRevokeEvent(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 1735
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/amazon/kindle/content/LibraryContentService;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public revokeItemsFromSyncMetadata(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1740
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1741
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1742
    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v3, v2, v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    .line 1743
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentRevokeEvent(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_0

    .line 1746
    :cond_0
    sget-object v1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    const-string v2, "Deleting content by SMD ownership revocation"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1747
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/content/LibraryContentService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected scanPath(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1144
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1146
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1149
    iget-object v5, v1, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    sget-object v6, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_USERCONTENT_LOCALCONTENT:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lc."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1150
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    aput-object v8, v7, v14

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1151
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x1

    aput-object v8, v7, v15

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1152
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x2

    aput-object v8, v7, v13

    sget-object v8, Lcom/amazon/kindle/content/LibraryContentService;->LOCAL_CONTENT_BY_PATH_CLAUSE:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, v16

    .line 1149
    invoke-interface/range {v5 .. v13}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1155
    :goto_0
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1156
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1157
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x2

    .line 1158
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 1161
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1163
    :cond_1
    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/kindle/content/LibraryContentService;->loadLocalContent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1165
    invoke-direct {v1, v0, v4}, Lcom/amazon/kindle/content/LibraryContentService;->loadManifestContent(Ljava/lang/String;Ljava/util/Set;)V

    .line 1168
    iget-object v0, v1, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    const v2, 0x7fffffff

    invoke-interface {v0, v2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->clearListOfFilesPendingDeletion(I)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 1149
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v5, :cond_2

    .line 1161
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v3
.end method

.method public searchForContent(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 3295
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->listContentForSearch(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public setIsInCarousel(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    .line 2739
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2740
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 2743
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2744
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsInCarousel()Z

    move-result v1

    if-ne v1, p3, :cond_1

    goto :goto_0

    .line 2749
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v1, p1, p3}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->setIsInCarousel(Ljava/lang/String;Z)V

    .line 2750
    sget-object v1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_IN_CAROUSEL field updated with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " for book "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    sget-object p3, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    .line 2753
    new-instance v1, Lcom/amazon/kindle/content/ContentUpdate;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/amazon/kindle/content/ContentUpdate;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;Z)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2755
    new-instance p3, Lcom/amazon/kindle/event/Event;

    sget-object p4, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-direct {p3, p2, p1, p4}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-virtual {p0, p3}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentUpdateEvent(Lcom/amazon/kindle/event/Event;)V

    return-void

    .line 2745
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "OldMetadata is null or content isInCarousel is "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLibraryManager(Lcom/amazon/kindle/krx/library/ILibraryManager;)V
    .locals 0

    .line 2992
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    return-void
.end method

.method public shouldPostOnMainThread()Z
    .locals 2

    .line 2949
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->post_content_event_on_main_thread:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public startLibraryLookup()Lcom/amazon/kindle/content/ILibraryLookupBuilder;
    .locals 1

    .line 3123
    new-instance v0, Lcom/amazon/kindle/content/LibraryLookupBuilder;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/content/LibraryLookupBuilder;-><init>(Lcom/amazon/kindle/content/ILibraryService;)V

    return-object v0
.end method

.method public supportsSortableColumns()Z
    .locals 1

    .line 3117
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->supportsSortableColumns()Z

    move-result v0

    return v0
.end method

.method public unregisterHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 2868
    invoke-super {p0, p1}, Lcom/amazon/kindle/event/BaseEventProvider;->unregisterHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    return-void
.end method

.method public updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 4

    .line 607
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 610
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v1, Lcom/amazon/kindle/event/Event;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amazon/kindle/content/ContentUpdate;

    invoke-direct {v3, p1, p1, v0}, Lcom/amazon/kindle/content/ContentUpdate;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;)V

    .line 612
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v1, v2, p1, v0}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    .line 611
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentUpdateEvent(Lcom/amazon/kindle/event/Event;)V

    return-void
.end method

.method public updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 626
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 639
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string v5, "Library"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 652
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    return-void
.end method

.method public updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 666
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    .line 671
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 674
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_1

    .line 677
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 678
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService;->asm:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->purgeAssets(Lcom/amazon/kindle/model/content/IBookID;)V

    goto :goto_0

    .line 680
    :cond_1
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_2

    .line 681
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 683
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/content/ContentSizeUtil;->getContentSize(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)J

    move-result-wide v0

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 693
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->updateMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 700
    sget-object v1, Lcom/amazon/kindle/content/LibraryContentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error updating metadata "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error updating metadata where metadataId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 p1, 0x1

    .line 709
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->deletePendingUserContent(Z)V

    goto :goto_2

    .line 712
    :cond_4
    new-instance p1, Lcom/amazon/kindle/event/Event;

    new-instance v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 713
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object v1, v0

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/content/ContentUpdate;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;ZLjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    sget-object p4, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-direct {p1, p2, p3, p4}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    .line 712
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->publishContentUpdateEvent(Lcom/amazon/kindle/event/Event;)V

    :goto_2
    return-void
.end method

.method updateContentMetadataToRemoteState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1885
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1886
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/LibraryContentService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1894
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/model/content/ContentState;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/amazon/kindle/content/LibraryContentService;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1896
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1899
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method updateScannedMetadata(Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1359
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    .line 1361
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v6, v6, v5, v6}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1363
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1364
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1366
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/db/Batch;

    .line 1367
    iget-object v10, v1, Lcom/amazon/kindle/content/LibraryContentService;->dao:Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    sget-object v11, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_USERCONTENT:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1368
    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    .line 1369
    invoke-virtual {v8}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1367
    invoke-interface/range {v10 .. v18}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1370
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1371
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1372
    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v6

    goto :goto_1

    :cond_2
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1374
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1375
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v11, :cond_1

    .line 1376
    sget-object v12, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1377
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_5

    .line 1380
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1383
    :cond_5
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1384
    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kindle/content/ContentMetadata;

    .line 1385
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1388
    :cond_6
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1390
    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 1367
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v8, :cond_7

    .line 1380
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v3

    .line 1397
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/content/LibraryContentService;->isUserChild()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1398
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1399
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/content/ContentMetadata;

    .line 1404
    iget-object v6, v1, Lcom/amazon/kindle/content/LibraryContentService;->bookOwnershipsRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    invoke-virtual {v5}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/amazon/kindle/content/IBookOwnershipRecorder;->getOwners(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Collection;

    move-result-object v6

    .line 1406
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1407
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1409
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1410
    iget-object v6, v1, Lcom/amazon/kindle/content/LibraryContentService;->bookOwnershipsRecorder:Lcom/amazon/kindle/content/IBookOwnershipRecorder;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazon/kindle/content/IBookOwnershipRecorder;->addOwnership(Ljava/lang/String;Ljava/util/Collection;)V

    :cond_a
    const/4 v7, 0x1

    goto :goto_7

    .line 1413
    :cond_b
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_c
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1417
    iget-object v10, v1, Lcom/amazon/kindle/content/LibraryContentService;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v10, v8}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1418
    invoke-virtual {v5}, Lcom/amazon/kindle/content/ContentMetadata;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/content/ContentMetadata;

    .line 1419
    invoke-virtual {v7, v8, v4}, Lcom/amazon/kindle/content/ContentMetadata;->setOwner(Ljava/lang/String;Z)V

    .line 1421
    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 1422
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    :cond_d
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    if-nez v7, :cond_9

    .line 1431
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 1432
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 1433
    invoke-virtual {v5}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v8

    .line 1432
    invoke-virtual {v1, v6, v5, v7, v8}, Lcom/amazon/kindle/content/LibraryContentService;->deleteAssociatedFiles(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V

    goto/16 :goto_5

    .line 1436
    :cond_f
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1437
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1438
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/content/LibraryContentService;->isDemo()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1440
    sget-object v5, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->RESTRICT_CAROUSEL:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    invoke-virtual {v1, v3, v5}, Lcom/amazon/kindle/content/LibraryContentService;->addContentMetadata(Ljava/util/Collection;Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;)V

    goto :goto_9

    .line 1442
    :cond_11
    invoke-virtual {v1, v3}, Lcom/amazon/kindle/content/LibraryContentService;->addContentMetadata(Ljava/util/Collection;)V

    .line 1444
    :goto_9
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookPreloader()Lcom/amazon/kcp/application/IBookPreloader;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/amazon/kcp/application/IBookPreloader;->preload(Ljava/util/Collection;)V

    goto :goto_8

    .line 1451
    :cond_12
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kindle/content/LibraryContentService;->updateToNewMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Z)V

    goto :goto_a

    :cond_13
    return-void
.end method
