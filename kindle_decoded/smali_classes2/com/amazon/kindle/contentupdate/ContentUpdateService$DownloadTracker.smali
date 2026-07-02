.class public Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;
.super Ljava/lang/Object;
.source "ContentUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/ContentUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadTracker"
.end annotation


# instance fields
.field private final bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private result:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

.field private final stateLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 2

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->stateLatch:Ljava/util/concurrent/CountDownLatch;

    .line 770
    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 771
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
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

    .line 797
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 798
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    .line 800
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    goto :goto_0

    .line 805
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    .line 806
    iget-object v3, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 807
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 808
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Ignoring content update for book %s as it doesn\'t match tracked book %s"

    .line 807
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    goto :goto_0

    .line 813
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 814
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 820
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;->mapFromContentState(Lcom/amazon/kindle/model/content/ContentState;)Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 822
    monitor-enter p0

    .line 824
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->stateLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_4

    .line 825
    monitor-exit p0

    goto :goto_2

    .line 827
    :cond_4
    iput-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->result:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    .line 828
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Download status : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->result:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 829
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 830
    iget-object p1, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->stateLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 831
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 832
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 815
    :cond_5
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method waitForCompletion()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;,
            Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 775
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for download completion, bookId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->stateLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 779
    invoke-static {}, Lcom/amazon/kindle/contentupdate/ContentUpdateService;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->result:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "Finished waiting for download completion, bookId: %s, result: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    sget-object v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$1;->$SwitchMap$com$amazon$kindle$contentupdate$ContentUpdateService$DownloadStatus:[I

    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadTracker;->result:Lcom/amazon/kindle/contentupdate/ContentUpdateService$DownloadStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v4, :cond_1

    const-string v2, "Download failed"

    if-eq v0, v1, :cond_0

    .line 791
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;

    sget-object v1, Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;->FAILED_DOWNLOAD_ERROR:Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$NonRetriableFailureException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/contentupdate/ContentUpdateService$Status;)V

    throw v0

    .line 787
    :cond_0
    new-instance v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;

    const-string v1, "UpdateRetryDownloadFailed"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/contentupdate/ContentUpdateService$RetriableFailureException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
