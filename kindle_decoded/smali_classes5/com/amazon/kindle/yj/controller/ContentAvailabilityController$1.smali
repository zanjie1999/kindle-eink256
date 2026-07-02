.class Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;
.super Ljava/lang/Object;
.source "ContentAvailabilityController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->init(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

.field final synthetic val$assets:Ljava/util/Collection;

.field final synthetic val$assetsForLpr:Ljava/util/Collection;

.field final synthetic val$downloadService:Lcom/amazon/kindle/services/download/IDownloadService;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;Lcom/amazon/kindle/services/download/IDownloadService;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    iput-object p2, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->val$downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    iput-object p3, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->val$assetsForLpr:Ljava/util/Collection;

    iput-object p4, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->val$assets:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initAssets(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initAssets"

    const/4 v1, 0x1

    .line 162
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 163
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 164
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getState()Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    const-string v4, "Book - "

    if-ne v2, v3, :cond_0

    .line 166
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v3}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$300(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/io/FileSystemHelper;->selectDirectoryPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$400()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attach to KRF, assetId - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v4}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$100(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Priority-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    iget-object v3, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v3}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$600(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v3, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v3}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$500(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kindle/yj/controller/IResourceHost;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lcom/amazon/kindle/yj/controller/IResourceHost;->attachResourceContainer(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    iget-object v3, v2, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->statusTracker:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;

    if-nez v3, :cond_1

    .line 173
    new-instance v3, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;

    invoke-direct {v3, v2}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;-><init>(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)V

    iput-object v3, v2, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->statusTracker:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;

    .line 175
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$400()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added status tracker for, assetId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v3}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$100(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    iget-object v2, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->val$downloadService:Lcom/amazon/kindle/services/download/IDownloadService;

    iget-object v3, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v3}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$100(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    iget-object v4, v4, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->statusTracker:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;

    invoke-interface {v2, v3, v1, v4}, Lcom/amazon/kindle/services/download/IDownloadService;->registerDownloadTracker(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 179
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->val$assetsForLpr:Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->initAssets(Ljava/util/Collection;)V

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->val$assets:Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$1;->initAssets(Ljava/util/Collection;)V

    const/4 v0, 0x0

    return-object v0
.end method
