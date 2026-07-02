.class final Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;
.super Ljava/lang/Object;
.source "ContentUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/ContentUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NonSilentUpdateJob"
.end annotation


# instance fields
.field private final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field final synthetic this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

.field private final updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/contentupdate/db/UpdateItem;)V
    .locals 1

    .line 441
    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    new-instance p1, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$TODO;

    const-string v0, "NonSilentContentUpdate"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$TODO;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    .line 442
    iput-object p2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "Unexpected error"

    const-string v3, " update(s) from the content update database"

    const-string v4, "Deleted "

    .line 447
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v0}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getTodoItem()Lcom/amazon/kindle/krx/messaging/ITodoItem;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$000(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    .line 449
    iget-object v6, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v6}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 450
    iget-object v7, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v7}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v6, v9}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v7

    .line 451
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempting non-silent update, todoItem: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v8, "forced"

    const/4 v10, 0x0

    .line 455
    invoke-static {v0, v8, v10}, Lcom/amazon/kindle/todo/TodoItemUtils;->getBoolean(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 456
    iget-object v8, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v8}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2800(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/amazon/kindle/cover/ICoverImageService;->deleteBookCovers(Ljava/lang/String;)V

    .line 457
    iget-object v8, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v8}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2900(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/amazon/kcp/cover/ICoverCacheManager;->clearCache(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_0
    :try_start_1
    iget-object v8, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    const-class v10, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadOption;

    invoke-static {v10}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v10

    iget-object v11, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-static {v8, v0, v5, v10, v11}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$1000(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Set;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    :try_end_1
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :try_start_2
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Update succeeded"

    invoke-static {v0, v8}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    .line 469
    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$300(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v6, v9}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v12

    .line 470
    iget-object v10, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->SUCCESS:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    .line 471
    invoke-virtual {v0}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getRequestId()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v0}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getStartTime()J

    move-result-wide v15

    move-object v11, v7

    .line 470
    invoke-static/range {v10 .. v16}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    move-result-object v0

    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->deleteUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)I

    move-result v0

    .line 485
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 464
    :try_start_3
    new-instance v5, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    const-string v6, "Download failed"

    sget-object v8, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_DOWNLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    invoke-direct {v5, v6, v0, v8}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw v5
    :try_end_3
    .catch Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 482
    :try_start_4
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v0}, Lcom/amazon/kindle/log/Log;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 484
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    move-result-object v0

    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->deleteUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)I

    move-result v0

    .line 485
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v0

    .line 479
    :try_start_5
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v0}, Lcom/amazon/kindle/log/Log;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :catch_2
    move-exception v0

    .line 473
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update failed, status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    iget-boolean v2, v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;->isResponseEnabled:Z

    if-eqz v2, :cond_1

    .line 475
    iget-object v10, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;->status:Ljava/lang/String;

    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    .line 476
    invoke-virtual {v0}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getRequestId()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v0}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getStartTime()J

    move-result-wide v15

    move-object v11, v7

    .line 475
    invoke-static/range {v10 .. v16}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2100(Lcom/amazon/kindle/contentupdate/ContentUpdateService;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 484
    :cond_1
    iget-object v0, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    move-result-object v0

    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->deleteUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)I

    move-result v0

    .line 485
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 484
    iget-object v2, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->this$0:Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v2}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$2700(Lcom/amazon/kindle/contentupdate/ContentUpdateService;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    move-result-object v2

    iget-object v5, v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonSilentUpdateJob;->updateItem:Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v2, v5}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->deleteUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)I

    move-result v2

    .line 485
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    throw v0
.end method
