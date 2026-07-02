.class final Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;
.super Ljava/lang/Object;
.source "DownloadContentService.kt"

# interfaces
.implements Lcom/amazon/kindle/services/download/IDownloadTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/download/DownloadContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DownloadContentStatusTracker"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadContentService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadContentService.kt\ncom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,754:1\n1#2:755\n*E\n"
.end annotation


# instance fields
.field private final bookId:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/services/download/DownloadContentService;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/download/DownloadContentService;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "bookId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    iput-object p1, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->this$0:Lcom/amazon/kindle/services/download/DownloadContentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->bookId:Ljava/lang/String;

    return-void
.end method

.method private final getDownload()Lcom/amazon/kindle/services/download/ContentDownload;
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->this$0:Lcom/amazon/kindle/services/download/DownloadContentService;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadContentService;->access$getDownloadLock$p(Lcom/amazon/kindle/services/download/DownloadContentService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->this$0:Lcom/amazon/kindle/services/download/DownloadContentService;

    invoke-static {v1}, Lcom/amazon/kindle/services/download/DownloadContentService;->access$getDownloadsInProgress$p(Lcom/amazon/kindle/services/download/DownloadContentService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->bookId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/ContentDownload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_4

    .line 636
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->bookId:Ljava/lang/String;

    instance-of v1, p1, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object p1, v2

    :cond_2
    check-cast p1, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;

    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->bookId:Ljava/lang/String;

    :cond_3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->bookId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public reportCurrentProgress(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 592
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->reportCurrentProgress(JJ)V

    return-void
.end method

.method public reportCurrentProgress(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 597
    invoke-direct {p0}, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->getDownload()Lcom/amazon/kindle/services/download/ContentDownload;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 598
    invoke-virtual {v1}, Lcom/amazon/kindle/services/download/ContentDownload;->getMaxProgress()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->this$0:Lcom/amazon/kindle/services/download/DownloadContentService;

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/services/download/DownloadContentService;->access$updateDownloadProgress(Lcom/amazon/kindle/services/download/DownloadContentService;Lcom/amazon/kindle/services/download/ContentDownload;JJ)V

    return-void

    .line 599
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Trying to update progress without setting max"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public reportState(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/String;)V
    .locals 5

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    invoke-direct {p0}, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->getDownload()Lcom/amazon/kindle/services/download/ContentDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/services/download/ContentDownload;

    iget-object v1, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->bookId:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/services/download/DownloadContentService;->Companion:Lcom/amazon/kindle/services/download/DownloadContentService$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/services/download/DownloadContentService$Companion;->getUNTRACKED_DOWNLOAD_TRIGGER()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/services/download/ContentDownload;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 622
    iget-object v1, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->this$0:Lcom/amazon/kindle/services/download/DownloadContentService;

    invoke-static {v1}, Lcom/amazon/kindle/services/download/DownloadContentService;->access$getDownloadLock$p(Lcom/amazon/kindle/services/download/DownloadContentService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->this$0:Lcom/amazon/kindle/services/download/DownloadContentService;

    invoke-static {v2}, Lcom/amazon/kindle/services/download/DownloadContentService;->access$getDownloadsInProgress$p(Lcom/amazon/kindle/services/download/DownloadContentService;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/services/download/ContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bookId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    if-eqz p2, :cond_1

    .line 626
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/services/download/ContentDownload;->setErrorDescriber(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    .line 628
    :cond_1
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/services/download/ContentDownload;->setMainContentFile(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    iget-object p2, p0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->this$0:Lcom/amazon/kindle/services/download/DownloadContentService;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/download/ContentDownload;->clone()Lcom/amazon/kindle/services/download/ContentDownload;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/amazon/kindle/services/download/DownloadContentService;->access$sendDownloadStateUpdateEvent(Lcom/amazon/kindle/services/download/DownloadContentService;Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/services/download/IContentDownload;)V

    return-void

    :catchall_0
    move-exception p1

    .line 622
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setMaxProgress(J)V
    .locals 0

    .line 605
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->setMaxProgress(JJ)V

    return-void
.end method

.method public setMaxProgress(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 610
    invoke-direct {p0}, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;->getDownload()Lcom/amazon/kindle/services/download/ContentDownload;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/services/download/ContentDownload;->setMaxOpenableProgress(J)V

    .line 612
    invoke-virtual {v0, p3, p4}, Lcom/amazon/kindle/services/download/ContentDownload;->setMaxProgress(J)V

    :cond_1
    return-void

    .line 609
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ContentDownload: Attempting to set a negative max progress!"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
