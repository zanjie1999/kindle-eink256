.class Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;
.super Ljava/lang/Object;
.source "ContentUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/ContentUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentUpdateJob"
.end annotation


# instance fields
.field private final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private final lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

.field final synthetic this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

.field private final todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

.field private final updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/contentupdate/db/UpdateItem;)V
    .locals 1

    .line 272
    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance p1, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$TODO;

    const-string v0, "SilentContentUpdate"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$TODO;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    .line 273
    iput-object p2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    .line 274
    invoke-virtual {p2}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getTodoItem()Lcom/amazon/kindle/krx/messaging/ITodoItem;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    .line 275
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookLockManager()Lcom/amazon/kcp/reader/IBookLockManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    return-void
.end method

.method private tryWriteLock(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/IBookLockManager;->getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock()Z

    move-result p1

    .line 428
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try write lock returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    .line 430
    :cond_0
    new-instance p1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;

    const-string v0, "Update cannot proceed because the book is locked from writing"

    const-string v1, "UpdateRetryBookLocked"

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v1, p0

    .line 280
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$000(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    .line 281
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$ScheduledUpdate;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v3, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 286
    :cond_0
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$200(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    .line 287
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v0}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v0, v6}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    .line 290
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    aput-object v2, v8, v6

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const-string v11, "Attempting silent update, todoItem: %s, targetItemBookId: %s, updateItemBookId: %s"

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v12

    .line 294
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v13

    .line 301
    iget-object v5, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v5}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 302
    :try_start_0
    iget-object v8, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v8, v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$602(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    .line 303
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    .line 306
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v5

    .line 309
    :try_start_1
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;
    :try_end_1
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1a
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    :try_start_2
    iget-object v14, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v14}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getUserId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14, v2, v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 310
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v11, v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$800(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/content/ContentMetadata;)J

    move-result-wide v14

    .line 311
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v11}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$900(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)V

    .line 312
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    iget-object v7, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v7}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7, v2, v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 313
    iget-object v7, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v7}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v7
    :try_end_2
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1a
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    if-eqz v7, :cond_2

    .line 315
    :try_start_3
    invoke-virtual {v7}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v7

    sget-object v11, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;
    :try_end_3
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    if-ne v7, v11, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_16

    :catch_1
    move-exception v0

    move-object/from16 v20, v4

    goto/16 :goto_18

    :cond_2
    :goto_0
    const/4 v7, 0x1

    .line 316
    :goto_1
    :try_start_4
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    iget-object v9, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    sget-object v10, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;->SKIP_IF_LOCAL:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    sget-object v8, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;->FAIL_IF_ALREADY_ON_DEVICE:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    .line 317
    invoke-static {v10, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    iget-object v10, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    .line 316
    invoke-static {v11, v9, v3, v8, v10}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1000(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Set;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 318
    iget-object v8, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v8}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v0, v6}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v8
    :try_end_4
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1a
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    if-eqz v5, :cond_3

    .line 321
    :try_start_5
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v9
    :try_end_5
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1a
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 322
    :try_start_6
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v10
    :try_end_6
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 323
    :try_start_7
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v11, v12, v13, v9, v10}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 324
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v11, v12, v13, v9, v10}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1200(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_7
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v14, v9

    move-object v15, v10

    goto/16 :goto_14

    :catch_2
    move-exception v0

    move-object/from16 v27, v9

    move-object/from16 v26, v10

    goto/16 :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v20, v4

    move-object v14, v9

    move-object v15, v10

    goto/16 :goto_1a

    :catch_4
    move-exception v0

    move-object v14, v9

    move-object v15, v10

    goto/16 :goto_1e

    :catchall_1
    move-exception v0

    move-object v14, v9

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-object/from16 v27, v9

    const/4 v10, 0x0

    const/16 v26, 0x0

    goto/16 :goto_17

    :catch_6
    move-exception v0

    move-object/from16 v20, v4

    move-object v14, v9

    goto/16 :goto_19

    :catch_7
    move-exception v0

    move-object v14, v9

    goto/16 :goto_1d

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-nez v7, :cond_4

    .line 327
    :try_start_8
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 328
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v7

    const-string v11, "Downloading annotation sidecar"

    invoke-static {v7, v11}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v7, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v7}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v7

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v11

    invoke-interface {v7, v11}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->downloadAnnotations(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v7

    .line 330
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    const-string v6, "Annotation sidecar download"

    invoke-interface {v7}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v7
    :try_end_8
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v19, v4

    :try_start_9
    sget-object v4, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_DOWNLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;
    :try_end_9
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v26, v10

    const/4 v10, 0x0

    :try_start_a
    invoke-static {v11, v6, v7, v10, v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1400(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    .line 332
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Pending annotation sidecars are loaded"

    invoke-static {v4, v6}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_a .. :try_end_a} :catch_e
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_16
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v26, v10

    :goto_3
    move-object v14, v9

    move-object/from16 v15, v26

    goto/16 :goto_14

    :catch_a
    move-exception v0

    move-object/from16 v26, v10

    goto/16 :goto_f

    :catch_b
    move-exception v0

    move-object/from16 v19, v4

    :goto_4
    move-object/from16 v26, v10

    :goto_5
    move-object v14, v9

    move-object/from16 v20, v19

    :goto_6
    move-object/from16 v15, v26

    goto/16 :goto_1a

    :catch_c
    move-exception v0

    move-object/from16 v26, v10

    :goto_7
    move-object v14, v9

    move-object/from16 v15, v26

    goto/16 :goto_1e

    :cond_4
    move-object/from16 v19, v4

    move-object/from16 v26, v10

    .line 335
    :goto_8
    :try_start_b
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v4, v6, v0, v7}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4
    :try_end_b
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_b .. :try_end_b} :catch_18
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_16
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 336
    :try_start_c
    iget-object v6, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v6, v4, v8, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_c .. :try_end_c} :catch_18
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_16
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    if-eqz v0, :cond_5

    .line 341
    :try_start_d
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0, v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1600(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)V
    :try_end_d
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_d .. :try_end_d} :catch_e
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_16
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_d
    move-exception v0

    move-object/from16 v20, v4

    move-object v14, v9

    goto :goto_6

    :catch_e
    move-exception v0

    goto :goto_7

    .line 344
    :cond_5
    :goto_9
    :try_start_e
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6
    :try_end_e
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_e .. :try_end_e} :catch_18
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_e .. :try_end_e} :catch_15
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_16
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 347
    :goto_a
    :try_start_f
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 348
    iget-object v7, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v7}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 349
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Sidecar download counts, %s: %s, %s: %s"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-object/from16 v27, v9

    const/4 v9, 0x4

    :try_start_10
    new-array v9, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v2, v9, v18

    const/16 v19, 0x1

    aput-object v0, v9, v19

    const/16 v17, 0x2

    aput-object v3, v9, v17

    const/16 v16, 0x3

    aput-object v7, v9, v16

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_9

    if-nez v7, :cond_9

    .line 361
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v7, "UpdateSwapTimer"

    invoke-virtual {v0, v7}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 363
    :try_start_11
    invoke-direct {v1, v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->tryWriteLock(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 364
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    iget-object v7, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v7}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v2, v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 365
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0, v4, v14, v15}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1800(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/content/ContentMetadata;J)V

    .line 369
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0, v3, v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1900(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 371
    :try_start_12
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/reader/IBookLockManager;->getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 372
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/reader/IBookLockManager;->getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 375
    :cond_6
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2000()Ljava/lang/String;

    move-result-object v7

    const-string v9, "UpdateSwapTimer"

    const-string v10, "UpdateSwapTimer"

    invoke-virtual {v0, v7, v9, v10}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    const/16 v16, 0x1

    .line 380
    :try_start_13
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update succeeded, todoItem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    sget-object v6, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->SUCCESS:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v22

    iget-object v6, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    .line 382
    invoke-virtual {v6}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getRequestId()Ljava/lang/String;

    move-result-object v23

    iget-object v6, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v6}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getStartTime()J

    move-result-wide v24

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v8

    .line 381
    invoke-static/range {v19 .. v25}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_13
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_f
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v5, :cond_7

    .line 400
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    move-object/from16 v14, v27

    move-object/from16 v15, v26

    invoke-static/range {v11 .. v16}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2200(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Z)V

    .line 403
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 405
    :try_start_14
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$602(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    .line 406
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 408
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 409
    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v2, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/util/List;)V

    .line 419
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0, v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2600(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 420
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    move-result-object v0

    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->deleteUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)I

    move-result v0

    .line 421
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b
    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " update(s) from the content update database"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_20

    :catchall_4
    move-exception v0

    .line 408
    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    move-object/from16 v15, v26

    move-object/from16 v14, v27

    goto/16 :goto_15

    :catch_f
    move-exception v0

    const/4 v10, 0x1

    goto/16 :goto_17

    :catch_10
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v15, v26

    move-object/from16 v14, v27

    goto/16 :goto_1b

    :catch_11
    move-exception v0

    move-object/from16 v15, v26

    move-object/from16 v14, v27

    goto/16 :goto_1f

    :catchall_6
    move-exception v0

    .line 371
    :try_start_16
    iget-object v7, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    invoke-interface {v7, v2}, Lcom/amazon/kcp/reader/IBookLockManager;->getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 372
    iget-object v7, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    invoke-interface {v7, v2}, Lcom/amazon/kcp/reader/IBookLockManager;->getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 374
    :cond_8
    throw v0

    .line 355
    :cond_9
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    move-object/from16 v9, v27

    goto/16 :goto_a

    :catchall_7
    move-exception v0

    move-object/from16 v27, v9

    .line 377
    :goto_c
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    :try_start_17
    throw v0
    :try_end_17
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_17 .. :try_end_17} :catch_14
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_17 .. :try_end_17} :catch_13
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_12
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_e

    :catch_12
    move-exception v0

    goto :goto_10

    :catch_13
    move-exception v0

    goto :goto_d

    :catch_14
    move-exception v0

    goto :goto_12

    :catchall_9
    move-exception v0

    goto :goto_c

    :catch_15
    move-exception v0

    move-object/from16 v27, v9

    :goto_d
    move-object/from16 v20, v4

    goto :goto_11

    :catchall_a
    move-exception v0

    move-object/from16 v27, v9

    :goto_e
    move-object/from16 v15, v26

    move-object/from16 v14, v27

    goto :goto_14

    :catch_16
    move-exception v0

    :goto_f
    move-object/from16 v27, v9

    :goto_10
    const/4 v10, 0x0

    goto/16 :goto_17

    :catch_17
    move-exception v0

    move-object/from16 v27, v9

    move-object/from16 v20, v19

    :goto_11
    move-object/from16 v15, v26

    move-object/from16 v14, v27

    goto/16 :goto_1a

    :catch_18
    move-exception v0

    move-object/from16 v27, v9

    :goto_12
    move-object/from16 v15, v26

    move-object/from16 v14, v27

    goto/16 :goto_1e

    :catch_19
    move-exception v0

    goto/16 :goto_1c

    :catchall_b
    move-exception v0

    const/4 v14, 0x0

    :goto_13
    const/4 v15, 0x0

    :goto_14
    const/16 v16, 0x0

    .line 397
    :goto_15
    :try_start_18
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unexpected error"

    invoke-static {v2, v4, v0}, Lcom/amazon/kindle/log/Log;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    if-eqz v5, :cond_a

    .line 400
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static/range {v11 .. v16}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2200(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Z)V

    .line 403
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 405
    :try_start_19
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$602(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    .line 406
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 408
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 409
    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v2, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/util/List;)V

    .line 419
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0, v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2600(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 420
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    move-result-object v0

    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->deleteUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)I

    move-result v0

    .line 421
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_b

    :catchall_c
    move-exception v0

    .line 408
    :try_start_1a
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    throw v0

    :catch_1a
    move-exception v0

    const/4 v10, 0x0

    :goto_16
    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 394
    :goto_17
    :try_start_1b
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unexpected error"

    invoke-static {v2, v4, v0}, Lcom/amazon/kindle/log/Log;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    :catchall_d
    move-exception v0

    move/from16 v16, v10

    move-object/from16 v15, v26

    move-object/from16 v14, v27

    goto/16 :goto_21

    :catch_1b
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v19

    :goto_18
    const/4 v14, 0x0

    :goto_19
    const/4 v15, 0x0

    :goto_1a
    const/16 v16, 0x0

    .line 387
    :goto_1b
    :try_start_1c
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Update failed and will not be retried, todoItem: %s, status: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;->status:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    iget-boolean v2, v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;->isResponseEnabled:Z

    if-eqz v2, :cond_b

    .line 390
    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    const/16 v21, 0x0

    iget-object v0, v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;->status:Ljava/lang/String;

    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    .line 391
    invoke-virtual {v4}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getRequestId()Ljava/lang/String;

    move-result-object v23

    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v4}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getStartTime()J

    move-result-wide v24

    move-object/from16 v19, v2

    move-object/from16 v22, v0

    .line 390
    invoke-static/range {v19 .. v25}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    :cond_b
    if-eqz v5, :cond_c

    .line 400
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static/range {v11 .. v16}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2200(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Z)V

    .line 403
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 405
    :try_start_1d
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$602(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    .line 406
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 408
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    .line 409
    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v2, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/util/List;)V

    .line 419
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0, v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2600(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 420
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    move-result-object v0

    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->deleteUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)I

    move-result v0

    .line 421
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_b

    :catchall_e
    move-exception v0

    .line 408
    :try_start_1e
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    throw v0

    :catch_1c
    move-exception v0

    const/4 v8, 0x0

    :goto_1c
    const/4 v14, 0x0

    :goto_1d
    const/4 v15, 0x0

    :goto_1e
    const/16 v16, 0x0

    .line 384
    :goto_1f
    :try_start_1f
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update failed and will be retried, todoItem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    if-eqz v5, :cond_d

    .line 400
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static/range {v11 .. v16}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2200(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Z)V

    .line 403
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    iget-object v3, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 405
    :try_start_20
    iget-object v3, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$602(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    .line 406
    iget-object v3, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    iget-object v3, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 408
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    .line 409
    iget-object v3, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v3, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/util/List;)V

    .line 412
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrying update, updateItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2400()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 414
    iget-object v3, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 415
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v3

    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 417
    :cond_e
    iget-object v3, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/amazon/kindle/contentupdate/ContentUpdateService$ScheduledUpdate;

    iget-object v5, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    iget-object v6, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-direct {v4, v5, v6, v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$ScheduledUpdate;-><init>(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/contentupdate/db/UpdateItem;Ljava/util/concurrent/ScheduledFuture;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    return-void

    :catchall_f
    move-exception v0

    .line 408
    :try_start_21
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    throw v0

    :catchall_10
    move-exception v0

    :goto_21
    if-eqz v5, :cond_f

    .line 400
    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static/range {v11 .. v16}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2200(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Z)V

    .line 403
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 404
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v4}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 405
    :try_start_22
    iget-object v5, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$602(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    .line 406
    iget-object v5, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v5}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    iget-object v5, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v5}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$500(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 408
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    .line 409
    iget-object v4, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v4, v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Ljava/util/List;)V

    .line 419
    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v2, v3}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2600(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 420
    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    move-result-object v2

    iget-object v3, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$SilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->deleteUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)I

    move-result v2

    .line 421
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " update(s) from the content update database"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    throw v0

    :catchall_11
    move-exception v0

    .line 408
    :try_start_23
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    throw v0

    :catchall_12
    move-exception v0

    .line 303
    :try_start_24
    monitor-exit v5
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    throw v0
.end method
