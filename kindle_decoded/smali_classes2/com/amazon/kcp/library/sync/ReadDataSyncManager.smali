.class public Lcom/amazon/kcp/library/sync/ReadDataSyncManager;
.super Ljava/lang/Object;
.source "ReadDataSyncManager.java"

# interfaces
.implements Lcom/amazon/kcp/sync/IReadDataSyncManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/sync/ReadDataSyncManager$ReadStateSyncUpdateHandler;
    }
.end annotation


# static fields
.field private static final LIBRARY_PREFS:Ljava/lang/String; = "LibrarySettings"

.field private static final PREVIOUS_UNREAD_VALUE:Ljava/lang/String; = "Unread"

.field private static final READ_STATE_DATASET:Ljava/lang/String; = "CurrentStates"

.field private static final READ_STATE_NAMESPACE:Ljava/lang/String; = "BookReadStates"

.field private static final TAG:Ljava/lang/String;

.field private static hasReportedFTUEMetrics:Z


# instance fields
.field private final annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final bookTypeFactory:Lcom/amazon/kcp/library/IBookTypeFactory;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private volatile isInitialized:Z

.field private final largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

.field private final sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

.field private final userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

.field private whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 104
    sput-boolean v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->hasReportedFTUEMetrics:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/annotation/IAnnotationsManager;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/IBookTypeFactory;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;Lcom/amazon/kcp/integrator/LargeLibraryRepository;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    .line 79
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 80
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->isInitialized:Z

    .line 112
    iput-object p3, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 113
    invoke-interface {p3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    .line 114
    iput-object p4, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    .line 115
    iput-object p5, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 116
    iput-object p6, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->bookTypeFactory:Lcom/amazon/kcp/library/IBookTypeFactory;

    .line 117
    iput-object p7, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    .line 118
    iput-object p9, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    const-string p4, "ReadDataFirstCreationTimeStamp"

    .line 119
    invoke-interface {p3, p4}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 120
    iget-object p3, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3, p4, p5}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string p5, "LibrarySettings"

    invoke-interface {p3, p5, v0, p4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    .line 123
    iget-object p3, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance p4, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;

    invoke-direct {p4, p0, p8, p1, p2}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;-><init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;Landroid/app/Application;Lcom/amazon/kindle/services/authentication/IAccountProvider;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->connectWhisperSync()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->hasReportedFTUEMetrics:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 65
    sput-boolean p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->hasReportedFTUEMetrics:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->fullSync()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->logWhisperSyncClientError()V

    return-void
.end method

.method static synthetic access$702(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->isInitialized:Z

    return p1
.end method

.method private connectWhisperSync()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->isInitialized:Z

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    if-eqz v0, :cond_0

    const-string v1, "BookReadStates"

    .line 197
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->connect([Ljava/lang/String;)Z

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    const-string v2, "CurrentStates"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->subscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->isInitialized:Z

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->logWhisperSyncClientError()V

    :cond_1
    :goto_0
    return-void
.end method

.method private fullSync()V
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->syncCloud()V

    .line 248
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->syncLocal()V

    :cond_0
    return-void
.end method

.method private handleUserLogout()V
    .locals 2

    const/4 v0, 0x0

    .line 420
    sput-boolean v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->hasReportedFTUEMetrics:Z

    .line 421
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$7;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$7;-><init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private logWhisperSyncClientError()V
    .locals 2

    .line 483
    sget-object v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "WhisperSyncClient is NULL !"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cleanSync()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$4;-><init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method convertToBookId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 398
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->parse(Landroid/net/Uri;)Lcom/amazon/kcp/library/sync/SyncIdentifier;

    move-result-object p1

    .line 399
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->bookTypeFactory:Lcom/amazon/kcp/library/IBookTypeFactory;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getBookId(Lcom/amazon/kcp/library/IBookTypeFactory;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/kindle/content/ContentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing syncId, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method convertToReadData(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ReadData;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 384
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 385
    invoke-virtual {v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->convertToBookId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->isInProgressFilterEnabled()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/amazon/kindle/util/ReadDataJsonUtil;->deserialize(Ljava/lang/String;Z)Lcom/amazon/kindle/content/ReadData;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected filterReadData(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ReadData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ReadData;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 296
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 299
    iget-object v3, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v5}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    .line 300
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ReadData;

    if-eqz v3, :cond_1

    .line 301
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v2

    if-ne v3, v2, :cond_0

    .line 302
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 305
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size before filtering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " size after filtering: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object p1
.end method

.method fixUnreadDatabaseValues()V
    .locals 10

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const-string v1, "HAS_FIXED_UNREAD_VALUES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    new-instance v3, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$3;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$3;-><init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V

    invoke-interface {v2, v0, v3}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v2

    .line 184
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 185
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v4, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 187
    iget-object v3, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    sget-object v7, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v5, v8

    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    :cond_1
    return-void
.end method

.method public handleSyncMetadataParseEvent(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$FTUESyncMetadataFinishedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 479
    invoke-virtual {p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->cleanSync()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 141
    iget-boolean v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->isInitialized:Z

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$2;-><init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public isSyncEnabled()Z
    .locals 10

    .line 462
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    const-string v1, "ReadDataFirstCreationTimeStamp"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    const-string v2, "last_syncmetadata_date"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    const-string v3, "ftue_sync_complete"

    invoke-interface {v2, v3}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    .line 466
    :goto_0
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v4

    :goto_1
    const/4 v3, 0x1

    const/4 v8, 0x0

    cmp-long v9, v6, v4

    if-eqz v9, :cond_2

    cmp-long v4, v0, v6

    if-lez v4, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 468
    :goto_2
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 469
    :goto_3
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    invoke-interface {v2}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getSyncStatus()Z

    move-result v2

    .line 470
    iget-object v4, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v4}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v4

    .line 472
    sget-object v5, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read data sync enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    return v3
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 408
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    sget-object v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$8;->$SwitchMap$com$amazon$kindle$krx$events$KRXAuthenticationEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 414
    sget-object v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid eventy type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->handleUserLogout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 313
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentUpdate;

    .line 314
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getSource()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ReadData;->getReadStateOrigin()Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->OTHER:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    if-eq v1, v3, :cond_0

    .line 318
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/amazon/kindle/content/ReadData;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v4

    .line 319
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ReadData;->getReadStateOrigin()Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/amazon/kindle/content/ReadData;-><init>(Lcom/amazon/kindle/krx/content/IBook$ReadState;Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;)V

    .line 318
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 324
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 325
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->updateWhisperSyncData(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public sync()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$5;-><init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method syncCloud()V
    .locals 2

    .line 257
    sget-object v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "Cloud Sync Started"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->syncAll()V

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->logWhisperSyncClientError()V

    .line 263
    :goto_0
    sget-object v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "Cloud Sync Complete"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method syncLocal()V
    .locals 4

    .line 272
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 274
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    const-string v2, "Local Sync Started"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    if-eqz v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    const-string v1, "BookReadStates"

    const-string v2, "CurrentStates"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->logWhisperSyncClientError()V

    .line 280
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->convertToReadData(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->filterReadData(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->updateLocalDb(Ljava/util/Map;)V

    .line 281
    sget-object v0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "Local Sync Complete"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/kindle/collections/sync/SyncException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 283
    sget-object v1, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Issue reading local CurrentStates dataset, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/sync/SyncException;->getCode()Lcom/amazon/kindle/collections/sync/SyncException$Code;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/sync/SyncException$Code;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method updateLocalDb(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ReadData;",
            ">;)V"
        }
    .end annotation

    .line 364
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 365
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 366
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    .line 367
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ReadData;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE_ORIGIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ReadData;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ReadData;->getReadStateOrigin()Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    sget-object v5, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->TAG:Ljava/lang/String;

    move-object v3, v6

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    .line 373
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->largeLibraryRepository:Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-eqz p1, :cond_1

    .line 376
    invoke-interface {p1, v7}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksReadingStateDidChange(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method updateWhisperSyncData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ReadData;",
            ">;)V"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$6;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$6;-><init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
