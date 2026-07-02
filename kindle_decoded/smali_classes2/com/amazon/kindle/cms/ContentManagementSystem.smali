.class public Lcom/amazon/kindle/cms/ContentManagementSystem;
.super Ljava/lang/Object;
.source "ContentManagementSystem.java"

# interfaces
.implements Lcom/amazon/kindle/cms/IContentManagementSystem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;,
        Lcom/amazon/kindle/cms/ContentManagementSystem$CoverUpdateCallable;,
        Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;,
        Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;,
        Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;,
        Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;,
        Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;,
        Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;
    }
.end annotation


# static fields
.field private static final ACTION_CMS_FTUE_COMPLETE:Ljava/lang/String; = "com.amazon.kindle.tablet.ftue_complete"

.field private static final CMS_FTUE_PERMISSION:Ljava/lang/String; = "com.amazon.kindle.tablet.permission.ftue"

.field private static final KINDLE_FTUE_URI:Ljava/lang/String; = "amazon-ftue://com.amazon.kindle.tablet.ftue/kindle"

.field private static final SYNC_TAG:Ljava/lang/String; = "DBSyncIssue"

.field private static final TAG:Ljava/lang/String; = "ContentManagementSystem"

.field static cmsServer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/kindle/cms/api/CMSServer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cmsApi:Lcom/amazon/kindle/cms/api/CMSApi;

.field connectionCallback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

.field private final contentAddEventHandlerForCMS:Lcom/amazon/kindle/cms/ContentAddEventHandlerForCMS;

.field private final contentDeleteEventHandlerForCMS:Lcom/amazon/kindle/cms/ContentDeleteEventHandlerForCMS;

.field private final contentUpdateEventHandlerForCMS:Lcom/amazon/kindle/cms/ContentUpdateEventHandlerForCMS;

.field private context:Landroid/content/Context;

.field private downloadingItemsTracker:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/DownloadProgressCapable;",
            ">;"
        }
    .end annotation
.end field

.field volatile eventDAO:Lcom/amazon/kindle/cms/ICMSEventDAO;

.field private eventDAOLock:Ljava/lang/Object;

.field private isFtueInProgress:Z

.field libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private worker:Ljava/util/concurrent/ExecutorService;

.field private workerInitializationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/cms/ContentManagementSystem;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->isFtueInProgress:Z

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/cms/ContentManagementSystem;)Ljava/util/Map;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->downloadingItemsTracker:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/cms/ContentManagementSystem;)Lcom/amazon/kindle/cover/ICoverImageService;
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getCoverImageService()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/cms/ContentManagementSystem;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->context:Landroid/content/Context;

    return-object p0
.end method

.method private addItemToCarouselAndFlagForMLT(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    .line 1047
    invoke-static/range {p1 .. p1}, Lcom/amazon/kindle/cms/CMSUtils;->restrictFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_1

    .line 1048
    iget-object v1, v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$bool;->add_pdocs_to_carousel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v12, ");"

    const-string v13, ", true, "

    const-string v14, "addToCarousel("

    const/4 v15, 0x1

    const-string v6, ", "

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_0

    .line 1049
    iget-object v1, v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1, v9, v7, v11, v10}, Lcom/amazon/kindle/content/ILibraryService;->setIsInCarousel(Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v11, v6

    goto :goto_0

    .line 1051
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1052
    sget-object v1, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cms/api/CMSServer;

    const/4 v5, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v11, v6

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/cms/api/CMSServer;->addToCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZ)V

    .line 1053
    iget-object v1, v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1, v9, v7, v15, v10}, Lcom/amazon/kindle/content/ILibraryService;->setIsInCarousel(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1055
    :goto_0
    iget-object v1, v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1, v9, v7, v15, v10}, Lcom/amazon/kindle/content/ILibraryService;->setIsInCarousel(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1057
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->isPeriodicalBackissue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1058
    iget-object v1, v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getIdOfMostRecentIssueOfPeriodical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1064
    sget-object v1, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cms/api/CMSServer;

    const/4 v5, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v9

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/cms/api/CMSServer;->addToCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZ)V

    .line 1065
    iget-object v1, v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1, v9, v7, v15, v10}, Lcom/amazon/kindle/content/ILibraryService;->setIsInCarousel(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getCoverImageService()Lcom/amazon/kindle/cover/ICoverImageService;
    .locals 1

    .line 127
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v0

    return-object v0
.end method

.method private onFTUEMetadataParseEnd()V
    .locals 2

    .line 339
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$4;

    const-string v1, "FTUE Metadata Parse End"

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/cms/ContentManagementSystem$4;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->run()V

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->isFtueInProgress:Z

    return-void
.end method

.method private onFTUEMetadataParseStart()V
    .locals 2

    .line 319
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$3;

    const-string v1, "FTUE Metadata Parse Start"

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/cms/ContentManagementSystem$3;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->run()V

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->isFtueInProgress:Z

    return-void
.end method

.method private onPartialFTUEMetadataParseEnd()V
    .locals 3

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.kindle.tablet.ftue_complete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "amazon-ftue://com.amazon.kindle.tablet.ftue/kindle"

    .line 363
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 364
    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->context:Landroid/content/Context;

    const-string v2, "com.amazon.kindle.tablet.permission.ftue"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->addStoreRedirectVerbsToCms()V

    .line 366
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->addGoodreadsRedirectVerb()V

    .line 367
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->insertReaderLibraryActionItems()V

    return-void
.end method

.method private submitTask(Ljava/util/concurrent/Callable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;Z)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->workerInitializationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->worker:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 178
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 179
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object p2

    const-string v1, "CMS_worker"

    .line 180
    invoke-interface {p2, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    invoke-interface {p2}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->worker:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 174
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object p2

    const-string v1, "CMS_worker"

    .line 175
    invoke-interface {p2, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 176
    invoke-interface {p2}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->worker:Ljava/util/concurrent/ExecutorService;

    .line 182
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addGoodreadsRedirectVerb()V
    .locals 2

    .line 188
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ContentManagementSystem"

    const-string v1, "Attempted to add goodreads redirect verbs to CMS without a CMS server"

    .line 189
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 194
    :cond_0
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$1;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 217
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;ZZ)V
    .locals 7

    if-eqz p1, :cond_0

    .line 413
    new-instance v6, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/cms/ContentManagementSystem$AddOrUpdateCallable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;ZZ)V

    const/4 p1, 0x0

    invoke-direct {p0, v6, p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->submitTask(Ljava/util/concurrent/Callable;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "ContentManagementSystem"

    const-string p2, "Aborting add or update because itemMetadata passed in to add/update is null"

    .line 415
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 422
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazon/kindle/cms/ContentManagementSystem;->addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;ZZ)V

    return-void
.end method

.method addOrUpdateMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;ZLjava/util/Collection;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Z",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    if-nez v10, :cond_13

    const/4 v1, 0x0

    .line 461
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v11, 0x1

    .line 462
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/cms/api/CMSServer;

    if-eqz v0, :cond_d

    .line 465
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    if-ne v2, v3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 466
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    if-ne v3, v4, :cond_2

    .line 467
    monitor-exit p0

    return-void

    .line 469
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    .line 471
    instance-of v4, v3, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    if-eqz v4, :cond_3

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting add or update for itemID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " since this is a silent update"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    monitor-exit p0

    return-void

    .line 476
    :cond_3
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v5

    .line 477
    iget-object v4, v7, Lcom/amazon/kindle/cms/ContentManagementSystem;->downloadingItemsTracker:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getCoverImageService()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v4

    if-eqz v2, :cond_4

    .line 482
    sget-object v6, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v4, v8, v6, v11}, Lcom/amazon/kindle/cover/ICoverImageService;->upgradeCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V

    .line 483
    sget-object v6, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v4, v8, v6, v11}, Lcom/amazon/kindle/cover/ICoverImageService;->upgradeCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V

    .line 486
    :cond_4
    new-instance v6, Lcom/amazon/kindle/cms/api/Thumbnail;

    sget-object v12, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v4, v8, v12}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 487
    invoke-interface {v4, v8, v13}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v13

    .line 488
    invoke-interface {v4, v8}, Lcom/amazon/kindle/cover/ICoverImageService;->getExploreCoverLocation(Lcom/amazon/kindle/model/content/IListableBook;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v12, v13, v4}, Lcom/amazon/kindle/cms/api/Thumbnail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v4, v7, Lcom/amazon/kindle/cms/ContentManagementSystem;->context:Landroid/content/Context;

    invoke-static {v8, v6, v4}, Lcom/amazon/kindle/cms/CMSUtils;->getCMSItemFromMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cms/api/Thumbnail;Landroid/content/Context;)Lcom/amazon/kindle/cms/api/Item;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v0, "ContentManagementSystem"

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborting add or update for itemID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because we could not build a CMS item for it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    monitor-exit p0

    return-void

    .line 495
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kindle/cms/CMSUtils;->getCMSUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 496
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v12

    if-nez p2, :cond_6

    .line 498
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v3, v13, v15

    if-lez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eqz p2, :cond_7

    .line 499
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v15

    cmp-long v17, v13, v15

    if-gez v17, :cond_7

    const/4 v13, 0x1

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    if-eqz v2, :cond_8

    .line 502
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v16

    cmp-long v2, v14, v16

    if-gtz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-nez v3, :cond_9

    if-nez v13, :cond_9

    if-eqz v2, :cond_a

    .line 505
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding delivery to cms for bookId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    invoke-interface {v0, v6, v12, v5}, Lcom/amazon/kindle/cms/api/CMSServer;->postAsDelivery(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 509
    :cond_a
    sget-object v2, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/cms/api/CMSServer;->beginUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 510
    :try_start_2
    invoke-interface {v13, v4}, Lcom/amazon/kindle/cms/api/Update;->updateItem(Lcom/amazon/kindle/cms/api/Item;)V

    if-eqz p3, :cond_b

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v12

    move/from16 v6, p5

    .line 514
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/cms/ContentManagementSystem;->addItemToCarouselAndFlagForMLT(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 518
    :cond_b
    :try_start_3
    iget-boolean v0, v7, Lcom/amazon/kindle/cms/ContentManagementSystem;->isFtueInProgress:Z

    if-nez v0, :cond_c

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v2, p4

    :try_start_4
    invoke-interface {v0, v2, v11}, Lcom/amazon/kindle/cms/ICMSEventDAO;->updateEvents(Ljava/util/Collection;Z)V

    goto :goto_5

    :cond_c
    move-object/from16 v2, p4

    .line 520
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    move-object v1, v13

    const/4 v10, 0x1

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v2, p4

    :goto_6
    move-object v1, v13

    const/4 v10, 0x1

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v2, p4

    move-object v1, v13

    goto :goto_8

    :cond_d
    move-object/from16 v2, p4

    :try_start_5
    const-string v0, "ContentManagementSystem"

    const-string v3, "Throwing Communication exception because update failed as we don\'t have a non-null cmsServer"

    .line 529
    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V

    .line 533
    :goto_7
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_0

    .line 552
    :try_start_6
    invoke-interface {v1}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_6
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "ContentManagementSystem"

    const-string v3, "Error occured while trying to close an update with CMS. Giving up after one attempt."

    .line 554
    invoke-static {v0, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object/from16 v2, p4

    .line 533
    :goto_8
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw v0
    :try_end_8
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catch_1
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v2, v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v2, p4

    .line 535
    :goto_9
    :try_start_9
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/CommunicationException;->getCode()Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    move-result-object v3

    .line 536
    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v3, v4, :cond_10

    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v3, v4, :cond_e

    goto :goto_a

    .line 542
    :cond_e
    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v3, v4, :cond_f

    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v3, v4, :cond_11

    :cond_f
    const-string v3, "ContentManagementSystem"

    const-string v4, "Something other than connection error occured with CMS. We are exiting without retry. Bug it if you see this."

    .line 544
    invoke-static {v3, v4, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 539
    :cond_10
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :cond_11
    :goto_b
    if-eqz v1, :cond_0

    .line 552
    :try_start_a
    invoke-interface {v1}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_a
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :goto_c
    if-eqz v1, :cond_12

    :try_start_b
    invoke-interface {v1}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_b
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v1, v0

    const-string v0, "ContentManagementSystem"

    const-string v3, "Error occured while trying to close an update with CMS. Giving up after one attempt."

    .line 554
    invoke-static {v0, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    :cond_12
    :goto_d
    throw v2

    :cond_13
    return-void
.end method

.method public addOrUpdateMultipleItems(Ljava/util/Collection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;Z)V"
        }
    .end annotation

    .line 905
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkAddOrUpdateCallable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/util/Collection;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->submitTask(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method public addStoreRedirectVerbsToCms()V
    .locals 2

    .line 222
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ContentManagementSystem"

    const-string v1, "Attempted to add store redirect verbs to CMS without a CMS server"

    .line 223
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$2;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 260
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method bulkAddOrUpdate(Ljava/util/Collection;ZLjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;Z",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;)V"
        }
    .end annotation

    .line 934
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v0

    .line 935
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->bulkAddOrUpdate(Ljava/util/Collection;ZLjava/util/Collection;Z)V

    return-void
.end method

.method bulkAddOrUpdate(Ljava/util/Collection;ZLjava/util/Collection;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;Z",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_e

    const/4 v1, 0x0

    .line 943
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    .line 944
    :try_start_1
    sget-object v3, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/cms/api/CMSServer;

    if-eqz v3, :cond_8

    .line 946
    sget-object v4, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/cms/api/CMSServer;->beginBulkUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object v1

    .line 947
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 948
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin CMS Bulk update. Item count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 950
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/amazon/kindle/content/ContentMetadata;

    .line 951
    invoke-virtual {v6}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    .line 953
    instance-of v5, v4, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    if-eqz v5, :cond_3

    .line 954
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aborting add or update for itemID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in bulk update since this is a silent update"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 959
    :cond_3
    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v9

    .line 960
    iget-object v5, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->downloadingItemsTracker:Ljava/util/Map;

    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getCoverImageService()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v5

    .line 962
    new-instance v7, Lcom/amazon/kindle/cms/api/Thumbnail;

    sget-object v8, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 963
    invoke-interface {v5, v6, v8}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 964
    invoke-interface {v5, v6, v10}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v10

    .line 965
    invoke-interface {v5, v6}, Lcom/amazon/kindle/cover/ICoverImageService;->getExploreCoverLocation(Lcom/amazon/kindle/model/content/IListableBook;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v10, v5}, Lcom/amazon/kindle/cms/api/Thumbnail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object v5, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->context:Landroid/content/Context;

    invoke-static {v6, v7, v5}, Lcom/amazon/kindle/cms/CMSUtils;->getCMSItemFromMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cms/api/Thumbnail;Landroid/content/Context;)Lcom/amazon/kindle/cms/api/Item;

    move-result-object v5

    .line 968
    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v5, :cond_4

    .line 970
    invoke-interface {v1, v5}, Lcom/amazon/kindle/cms/api/Update;->updateItem(Lcom/amazon/kindle/cms/api/Item;)V

    if-eqz p2, :cond_2

    .line 972
    invoke-virtual {v6}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/cms/CMSUtils;->getCMSUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move v10, p4

    .line 976
    invoke-direct/range {v5 .. v10}, Lcom/amazon/kindle/cms/ContentManagementSystem;->addItemToCarouselAndFlagForMLT(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_4
    const-string v4, "ContentManagementSystem"

    .line 979
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping a particular item\'s bulk add or update because CMSItem returned is null/not a known kind: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 986
    :cond_5
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished CMS Bulk update. Item count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 991
    :cond_6
    :try_start_2
    iget-boolean v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->isFtueInProgress:Z

    if-nez v0, :cond_7

    if-eqz p3, :cond_7

    .line 992
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object v0

    invoke-interface {v0, p3, v2}, Lcom/amazon/kindle/cms/ICMSEventDAO;->updateEvents(Ljava/util/Collection;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x1

    goto :goto_3

    .line 1000
    :cond_8
    :try_start_3
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V

    .line 1002
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 1021
    :try_start_4
    invoke-interface {v1}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_4
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ContentManagementSystem"

    const-string v3, "Error occured while trying to close an update with CMS. Giving up after one attempt."

    .line 1023
    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    .line 1002
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception v2

    .line 1004
    :try_start_7
    invoke-virtual {v2}, Lcom/amazon/kindle/cms/api/CommunicationException;->getCode()Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    move-result-object v3

    .line 1005
    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v3, v4, :cond_b

    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v3, v4, :cond_9

    goto :goto_4

    .line 1011
    :cond_9
    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v3, v4, :cond_a

    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v3, v4, :cond_c

    :cond_a
    const-string v3, "ContentManagementSystem"

    const-string v4, "Something other than connection error occured with CMS. We are exiting without retry. Bug it if you see this."

    .line 1013
    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1008
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_c
    :goto_5
    if-eqz v1, :cond_0

    .line 1021
    :try_start_8
    invoke-interface {v1}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_8
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :goto_6
    if-eqz v1, :cond_d

    :try_start_9
    invoke-interface {v1}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_9
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_7

    :catch_2
    move-exception p2

    const-string p3, "ContentManagementSystem"

    const-string p4, "Error occured while trying to close an update with CMS. Giving up after one attempt."

    .line 1023
    invoke-static {p3, p4, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1029
    :cond_d
    :goto_7
    throw p1

    :cond_e
    return-void
.end method

.method bulkRemove(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    const/4 v2, 0x0

    .line 1103
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    .line 1104
    :try_start_1
    sget-object v4, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/cms/api/CMSServer;

    if-eqz v4, :cond_5

    .line 1106
    sget-object v5, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/amazon/kindle/cms/api/CMSServer;->beginBulkUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object v2

    .line 1107
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1108
    iget-object v7, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->downloadingItemsTracker:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    invoke-static {p1}, Lcom/amazon/kindle/cms/CMSUtils;->getCMSUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1110
    invoke-static {v6}, Lcom/amazon/kindle/cms/CMSUtils;->getBookIdFromString(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1111
    invoke-interface {v8}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_2

    .line 1115
    :cond_1
    invoke-interface {v8}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v8

    invoke-static {v8}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v8

    .line 1117
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "ContentManagementSystem"

    .line 1122
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from cms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_2
    invoke-interface {v2, v7, v8, v6}, Lcom/amazon/kindle/cms/api/Update;->deleteItem(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1126
    invoke-interface {v4, v7, v8, v6, v0}, Lcom/amazon/kindle/cms/api/CMSServer;->removeFromCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    :goto_2
    const-string v7, "ContentManagementSystem"

    .line 1112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Book ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  or type is null. We are continuing to remove the items skipping the null Book ID or type. Bug it if you see this."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1129
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object v1

    invoke-interface {v1, p3, v3}, Lcom/amazon/kindle/cms/ICMSEventDAO;->updateEvents(Ljava/util/Collection;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v3, v1

    const/4 v1, 0x1

    goto :goto_4

    .line 1136
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V

    .line 1138
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 1157
    :try_start_4
    invoke-interface {v2}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_4
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ContentManagementSystem"

    const-string v4, "Error occured while trying to close an update with CMS. Giving up after one attempt."

    .line 1159
    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    .line 1138
    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception v3

    .line 1140
    :try_start_7
    invoke-virtual {v3}, Lcom/amazon/kindle/cms/api/CommunicationException;->getCode()Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    move-result-object v4

    .line 1141
    sget-object v5, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v4, v5, :cond_8

    sget-object v5, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v4, v5, :cond_6

    goto :goto_5

    .line 1147
    :cond_6
    sget-object v5, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v4, v5, :cond_7

    sget-object v5, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v4, v5, :cond_9

    :cond_7
    const-string v4, "ContentManagementSystem"

    const-string v5, "Something other than connection error occured with CMS. We are exiting without retry. Bug it if you see this."

    .line 1149
    invoke-static {v4, v5, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1144
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_9
    :goto_6
    if-eqz v2, :cond_0

    .line 1157
    :try_start_8
    invoke-interface {v2}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_8
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :goto_7
    if-eqz v2, :cond_a

    :try_start_9
    invoke-interface {v2}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_9
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_8

    :catch_2
    move-exception p2

    const-string p3, "ContentManagementSystem"

    const-string v0, "Error occured while trying to close an update with CMS. Giving up after one attempt."

    .line 1159
    invoke-static {p3, v0, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1165
    :cond_a
    :goto_8
    throw p1

    :cond_b
    return-void
.end method

.method cmsSync(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 749
    monitor-enter p0

    .line 750
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 752
    sget-object p1, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/cms/api/CMSServer;

    sget-object v0, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/cms/api/CMSServer;->beginSync(Landroid/net/Uri;)V

    goto :goto_0

    .line 754
    :cond_0
    sget-object p1, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/cms/api/CMSServer;

    sget-object v0, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/cms/api/CMSServer;->endSync(Landroid/net/Uri;)V

    const-string p1, "ContentManagementSystem"

    const-string v0, "Flushing of db to cms finished"

    .line 755
    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V

    .line 760
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method connect()V
    .locals 2

    .line 402
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsApi:Lcom/amazon/kindle/cms/api/CMSApi;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->connectionCallback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/api/CMSApi;->connect(Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;)V
    :try_end_0
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0xa

    .line 406
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->connectAfterDelay(J)V

    :cond_0
    :goto_0
    return-void
.end method

.method connectAfterDelay(J)V
    .locals 4

    .line 380
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$5;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$5;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 391
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 393
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->eventDAO:Lcom/amazon/kindle/cms/ICMSEventDAO;

    if-nez v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->eventDAOLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->eventDAO:Lcom/amazon/kindle/cms/ICMSEventDAO;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/amazon/kindle/cms/CMSEventDB;

    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amazon/kindle/cms/CMSEventDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->eventDAO:Lcom/amazon/kindle/cms/ICMSEventDAO;

    .line 155
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public handleCoverUpdateEvent(Lcom/amazon/kindle/cover/CoverChangeEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 289
    invoke-virtual {p1}, Lcom/amazon/kindle/cover/CoverChangeEvent;->getCover()Lcom/amazon/kindle/cover/ICover;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/cover/ICover;->getBookid()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {p1}, Lcom/amazon/kindle/cover/CoverChangeEvent;->isPathUpdated()Z

    move-result p1

    const-string v1, "ContentManagementSystem"

    if-eqz p1, :cond_1

    .line 291
    iget-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 292
    invoke-interface {p1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Cover update event recieved. Adding to CMS"

    .line 295
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;ZZ)V

    goto :goto_0

    .line 298
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemMetadata is null for bookId "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Cover update event received. Notifying CMS"

    .line 301
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->notifyCoverUpdate(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleLocaleChangedEvent(Lcom/amazon/kindle/event/LocaleChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locale has been updated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", triggering update of CMS items to re-translate"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1466
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->insertReaderLibraryActionItems()V

    return-void
.end method

.method public handleProgressUpdate(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 308
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->updateDownloadProgress(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public handleSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 269
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem$11;->$SwitchMap$com$amazon$kindle$webservices$SyncMetadataParseEvent$Type:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->onPartialFTUEMetadataParseEnd()V

    goto :goto_0

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->onFTUEMetadataParseEnd()V

    goto :goto_0

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->onFTUEMetadataParseStart()V

    :goto_0
    return-void
.end method

.method insertReaderLibraryActionItems()V
    .locals 2

    .line 1404
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$8;

    const-string v1, "insertReaderLibraryActionItems"

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/cms/ContentManagementSystem$8;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->run()V

    return-void
.end method

.method notifyCoverChange(Ljava/lang/String;)V
    .locals 5

    .line 1304
    invoke-static {p1}, Lcom/amazon/kindle/cms/CMSUtils;->getBookIdFromString(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1305
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 1309
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_7

    .line 1314
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    :try_start_1
    sget-object v2, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1316
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying cover update for item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1319
    :cond_2
    sget-object v2, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/cms/api/CMSServer;

    invoke-interface {v2, v0, p1}, Lcom/amazon/kindle/cms/api/CMSServer;->notifyThumbnailChange(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_1

    .line 1327
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V

    .line 1329
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    .line 1331
    invoke-virtual {v2}, Lcom/amazon/kindle/cms/api/CommunicationException;->getCode()Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    move-result-object v3

    .line 1332
    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v3, v4, :cond_6

    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v3, v4, :cond_4

    goto :goto_2

    .line 1338
    :cond_4
    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v3, v4, :cond_1

    :cond_5
    const-string v3, "ContentManagementSystem"

    const-string v4, "Something other than connection error occured with CMS. We are exiting without retry. Bug it if you see this."

    .line 1340
    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    :goto_2
    const-string v2, "ContentManagementSystem"

    const-string v3, "Connection failed the first time with connection error. Triggering Retry"

    .line 1334
    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V

    goto :goto_0

    :cond_7
    return-void

    .line 1306
    :cond_8
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Book ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or type is null. We are exiting without retry. Bug it if you see this."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentManagementSystem"

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyCoverUpdate(Ljava/lang/String;)V
    .locals 1

    .line 1284
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$CoverUpdateCallable;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/cms/ContentManagementSystem$CoverUpdateCallable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->submitTask(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method public readDbAndFlushToCms()V
    .locals 4

    .line 768
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    .line 771
    new-instance v0, Lcom/amazon/kindle/cms/CMSEvent;

    sget-object v1, Lcom/amazon/kindle/cms/CMSEvent$Action;->SYNC:Lcom/amazon/kindle/cms/CMSEvent$Action;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/amazon/kindle/cms/CMSEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/CMSEvent$Action;Z)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 772
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/cms/ICMSEventDAO;->addEvents(Ljava/util/Collection;)V

    .line 774
    new-instance v1, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;

    const/4 v2, 0x1

    const-string v3, "Read DB And Flush To CMS"

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;Ljava/util/Collection;Z)V

    invoke-direct {p0, v1, v2}, Lcom/amazon/kindle/cms/ContentManagementSystem;->submitTask(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method public removeItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 566
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveCallable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->submitTask(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method removeItemFromCMS(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;)V"
        }
    .end annotation

    .line 590
    invoke-static {p2}, Lcom/amazon/kindle/cms/CMSUtils;->getBookIdFromString(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 591
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 595
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-nez v2, :cond_9

    const/4 v3, 0x0

    .line 600
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x1

    .line 601
    :try_start_1
    sget-object v5, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/cms/api/CMSServer;

    if-eqz v5, :cond_2

    .line 603
    iget-object v6, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->downloadingItemsTracker:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-static {p1}, Lcom/amazon/kindle/cms/CMSUtils;->getCMSUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 606
    sget-object v7, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    invoke-interface {v5, v7}, Lcom/amazon/kindle/cms/api/CMSServer;->beginUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object v3

    .line 607
    invoke-interface {v3, v6, v0, p2}, Lcom/amazon/kindle/cms/api/Update;->deleteItem(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 608
    invoke-interface {v5, v6, v0, p2, v1}, Lcom/amazon/kindle/cms/api/CMSServer;->removeFromCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :try_start_2
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object v2

    invoke-interface {v2, p3, v4}, Lcom/amazon/kindle/cms/ICMSEventDAO;->updateEvents(Ljava/util/Collection;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x1

    goto :goto_1

    .line 617
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V

    .line 619
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    .line 640
    :try_start_4
    invoke-interface {v3}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_4
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "ContentManagementSystem"

    const-string v5, "Error occured while trying to close an update with CMS. Giving up after one attempt."

    .line 642
    invoke-static {v4, v5, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v8, v4

    move v4, v2

    move-object v2, v8

    .line 619
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_1
    move-exception v2

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_7

    :catch_2
    move-exception v4

    move-object v8, v4

    move v4, v2

    move-object v2, v8

    .line 621
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Lcom/amazon/kindle/cms/api/CommunicationException;->getCode()Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    move-result-object v5

    .line 625
    sget-object v6, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v5, v6, :cond_3

    goto :goto_4

    .line 630
    :cond_3
    sget-object v6, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v5, v6, :cond_6

    :cond_4
    const-string v5, "ContentManagementSystem"

    const-string v6, "Something other than connection error occured with CMS. We are exiting without retry. Bug it if you see this."

    .line 632
    invoke-static {v5, v6, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 627
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 640
    :try_start_8
    invoke-interface {v3}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_8
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception v2

    const-string v3, "ContentManagementSystem"

    const-string v5, "Error occured while trying to close an update with CMS. Giving up after one attempt."

    .line 642
    invoke-static {v3, v5, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    move v2, v4

    goto :goto_0

    :goto_7
    if-eqz v3, :cond_8

    .line 640
    :try_start_9
    invoke-interface {v3}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_9
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception p2

    const-string p3, "ContentManagementSystem"

    const-string v0, "Error occured while trying to close an update with CMS. Giving up after one attempt."

    .line 642
    invoke-static {p3, v0, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 648
    :cond_8
    :goto_8
    throw p1

    :cond_9
    return-void

    .line 592
    :cond_a
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Book ID: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " or type is null. We are exiting without retry. Bug it if you see this."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContentManagementSystem"

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeItemFromCarousel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1679
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    .line 1680
    new-instance p2, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kindle/cms/ContentManagementSystem$RemoveFromCarouselCallable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Lcom/amazon/kindle/content/ContentMetadata;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->submitTask(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method public removeMultipleItems(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1075
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem$BulkRemoveCallable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;Ljava/util/Collection;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->submitTask(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method translate(Lcom/amazon/kindle/content/ContentMetadata;Z)Lcom/amazon/kindle/cms/CMSEvent;
    .locals 3

    .line 1359
    new-instance v0, Lcom/amazon/kindle/cms/CMSEvent;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/cms/CMSEvent$Action;->UPDATE:Lcom/amazon/kindle/cms/CMSEvent$Action;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/amazon/kindle/cms/CMSEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/CMSEvent$Action;Z)V

    return-object v0
.end method

.method translate(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;"
        }
    .end annotation

    .line 1363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1365
    new-instance v2, Lcom/amazon/kindle/cms/CMSEvent;

    sget-object v3, Lcom/amazon/kindle/cms/CMSEvent$Action;->DELETE:Lcom/amazon/kindle/cms/CMSEvent$Action;

    const/4 v4, 0x0

    invoke-direct {v2, p2, v1, v3, v4}, Lcom/amazon/kindle/cms/CMSEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/CMSEvent$Action;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method translate(Ljava/util/Collection;Z)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;Z)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;"
        }
    .end annotation

    .line 1351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1352
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 1353
    invoke-virtual {p0, v1, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem;->translate(Lcom/amazon/kindle/content/ContentMetadata;Z)Lcom/amazon/kindle/cms/CMSEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method declared-synchronized triggerAndWaitForConnection()V
    .locals 4

    monitor-enter p0

    .line 659
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "ContentManagementSystem"

    const-string v1, "You\'re trying to wait for CMS reconnection on the main thread. This might ANR."

    .line 661
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Possible ANR"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 665
    :cond_0
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 667
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->connectAfterDelay(J)V

    .line 670
    :goto_0
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 672
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ContentManagementSystem"

    const-string v2, "Thread waiting for connection with CMS got interrupted. This may mean some updates won\'t be pushed to CMS."

    .line 674
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 680
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateDownloadProgress(Ljava/lang/String;I)V
    .locals 1

    .line 1171
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem$6;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->submitTask(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method
