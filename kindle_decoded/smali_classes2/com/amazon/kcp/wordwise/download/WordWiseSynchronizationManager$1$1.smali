.class Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;
.super Ljava/lang/Object;
.source "WordWiseSynchronizationManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IKRXResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 6

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    invoke-static {v2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->access$200(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 498
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-static {v2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$000(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sidecar download complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {p2, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 501
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object p2

    iget-object v3, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object v4, v3, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    iget-object v3, v3, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$guid:Ljava/lang/String;

    invoke-virtual {p2, v4, v3}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileWithAsinAndGuid(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object v3, v2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    iget-object v2, v2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$tempName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v2, p2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$400(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :cond_0
    if-eqz v2, :cond_1

    .line 508
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object v3, p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    iget-object v4, p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    iget-object p2, p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$guid:Ljava/lang/String;

    invoke-static {v3, v4, p2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$500(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    .line 512
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object p2, p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->refreshLineSpacingIfPossible()V

    .line 513
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object p2, p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    const/4 v3, 0x0

    invoke-static {p2, v3}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$602(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Ljava/lang/String;)Ljava/lang/String;

    .line 514
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object p2, p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-static {p2, v3}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$702(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    if-eqz v2, :cond_3

    .line 517
    sget-object p2, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->SIDECAR_COMPLETED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->SIDECAR_FAILED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 520
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object v4, v3, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v3

    iget-object v5, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object v5, v5, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$asin:Ljava/lang/String;

    invoke-static {v4, p2, v3, v5}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$800(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Lcom/amazon/kcp/wordwise/download/DownloadStatusType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    .line 523
    new-instance p2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {p2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 524
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "WordWiseSidecarDownloadSuccessRate"

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 526
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "WordWiseSidecarDownloadTime"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SidecarDownload"

    .line 527
    invoke-static {v0, p2, v4}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseEventToPmet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 529
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object p2, p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    if-eqz p2, :cond_5

    if-eqz v2, :cond_4

    .line 531
    sget-object p2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 532
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object v0, v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler;->onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    :cond_5
    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    iget-object v0, v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler;->onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
