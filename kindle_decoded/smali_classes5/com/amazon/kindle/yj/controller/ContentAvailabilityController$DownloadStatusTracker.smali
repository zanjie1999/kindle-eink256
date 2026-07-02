.class Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;
.super Ljava/lang/Object;
.source "ContentAvailabilityController.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadStatusTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$000(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 80
    instance-of v0, p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 82
    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->notifyDownloadProgress(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequest;J)V

    :cond_1
    return-void
.end method

.method public reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$000(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 93
    instance-of v0, p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    if-eqz v0, :cond_2

    .line 94
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 95
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v1}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$200(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v2}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$100(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAsset(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    .line 97
    sget-object v2, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    if-ne p2, v2, :cond_1

    .line 98
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    .line 99
    invoke-static {v3}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$300(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v2, v3}, Lcom/amazon/kindle/io/FileSystemHelper;->selectDirectoryPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v2

    new-instance v3, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;-><init>(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-virtual {v1, v0, p1, p2}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->notifyDownloadState(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    :cond_2
    return-void
.end method

.method public setMaxProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method
