.class public Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;
.super Ljava/lang/Object;
.source "AssetGroupProgressTracker.java"

# interfaces
.implements Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private assetStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;",
            ">;"
        }
    .end annotation
.end field

.field private assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation
.end field

.field private bytesDownloaded:J

.field private completedAssets:I

.field private mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private newAsset:Z

.field private progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

.field private progressUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private reportDownloading:Z

.field private totalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->bytesDownloaded:J

    .line 39
    iput-wide v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->totalBytes:J

    .line 42
    sget-object v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->WAITING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    iput-object v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->completedAssets:I

    .line 55
    iput-boolean v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->reportDownloading:Z

    .line 58
    iput-boolean v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->newAsset:Z

    .line 63
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    .line 65
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    .line 66
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assets:Ljava/util/List;

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 72
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/download/AssetPriority;->OPTIONAL:Lcom/amazon/kindle/services/download/AssetPriority;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 74
    iget-wide v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->totalBytes:J

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->totalBytes:J

    .line 76
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total Bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->totalBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private recomputeRequests(Ljava/lang/String;)V
    .locals 13

    .line 298
    iget-object v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 299
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/download/AssetPriority;->OPTIONAL:Lcom/amazon/kindle/services/download/AssetPriority;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 303
    :goto_1
    iget-object v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 304
    iget-object v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;

    .line 305
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v12

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;-><init>(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;ZJJLcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$1;)V

    .line 304
    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 306
    :cond_3
    iget-object v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;

    invoke-static {v2}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->access$100(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;)J

    move-result-wide v2

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 308
    iget-wide v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->totalBytes:J

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v4

    iget-object v6, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    .line 309
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;

    invoke-static {v6}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->access$100(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->totalBytes:J

    .line 310
    iget-object v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->access$102(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;J)J

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public calculateInitialState()V
    .locals 15

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/services/download/IBookAsset;

    const/4 v3, 0x0

    .line 91
    iput-boolean v3, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->newAsset:Z

    .line 93
    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/services/download/AssetPriority;->OPTIONAL:Lcom/amazon/kindle/services/download/AssetPriority;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 98
    :goto_1
    iget-object v3, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In calculateInitialState, adding in the map assetId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    iget-object v3, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v7, v5

    move-object v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;-><init>(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;ZJJLcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$1;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iput-boolean v6, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->newAsset:Z

    .line 108
    :cond_2
    iget-object v3, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->mAssetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAssetState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v3

    .line 110
    sget-object v4, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In calculateInitialState, assetId : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " assetState : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v4, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    if-ne v3, v4, :cond_3

    iget-boolean v4, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->newAsset:Z

    if-eqz v4, :cond_3

    .line 115
    iget v3, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->completedAssets:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->completedAssets:I

    .line 116
    iget-wide v3, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->bytesDownloaded:J

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->bytesDownloaded:J

    .line 117
    sget-object v2, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->DOWNLOADING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    iput-object v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    goto/16 :goto_0

    .line 118
    :cond_3
    sget-object v2, Lcom/amazon/kindle/services/download/AssetState;->DOWNLOADING:Lcom/amazon/kindle/services/download/AssetState;

    if-ne v3, v2, :cond_4

    .line 119
    sget-object v2, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->DOWNLOADING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    iput-object v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    goto/16 :goto_0

    .line 120
    :cond_4
    sget-object v2, Lcom/amazon/kindle/services/download/AssetState;->ERROR:Lcom/amazon/kindle/services/download/AssetState;

    if-ne v3, v2, :cond_0

    .line 121
    sget-object v1, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->ERROR:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    iput-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    .line 126
    :cond_5
    iget v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->completedAssets:I

    iget-object v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 127
    sget-object v1, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->COMPLETE:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    iput-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    .line 130
    :cond_6
    sget-object v1, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In calculateInitialState, final progress state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;

    .line 134
    invoke-interface {v2, p0}, Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;->onStateChanged(Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;)V

    .line 135
    invoke-interface {v2, p0}, Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;->onProgressChanged(Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;)V

    goto :goto_2

    .line 137
    :cond_7
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_3
.end method

.method public deregisterProgressUpdateListener(Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getPercentage()I
    .locals 4

    .line 143
    iget-wide v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->bytesDownloaded:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->totalBytes:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getState()Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    return-object v0
.end method

.method public registerProgressUpdateListener(Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {p1, p0}, Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;->onProgressChanged(Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;)V

    .line 166
    invoke-interface {p1, p0}, Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;->onStateChanged(Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;)V

    :cond_0
    return-void
.end method

.method public reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 6

    .line 179
    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    if-nez p1, :cond_0

    .line 182
    sget-object p1, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "reportProgress: download request is null - bad state"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    if-nez p1, :cond_1

    .line 189
    sget-object p1, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "reportProgress: bookAsset is null - bad state"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;

    if-eqz v1, :cond_2

    .line 203
    invoke-static {v1}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->access$100(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;)J

    move-result-wide v1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 204
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report progress - entry not there in map, assetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->recomputeRequests(Ljava/lang/String;)V

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;

    if-eqz v1, :cond_6

    .line 211
    invoke-static {v1}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->access$200(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 215
    :cond_4
    sget-object v2, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Report progress - Bytes reported by assetId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bytes: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-wide v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->bytesDownloaded:J

    invoke-static {v1}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->access$300(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;)J

    move-result-wide v4

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->bytesDownloaded:J

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report progress - Total bytes downloaded: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->bytesDownloaded:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    invoke-static {v1, p2, p3}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->access$302(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;J)J

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object p1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;

    .line 228
    invoke-interface {p2, p0}, Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;->onProgressChanged(Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;)V

    goto :goto_0

    :cond_5
    return-void

    .line 212
    :cond_6
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 224
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 3

    .line 235
    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    if-nez p1, :cond_0

    .line 238
    sget-object p1, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "reportStatus: download request is null - bad state"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    if-nez p1, :cond_1

    .line 245
    sget-object p1, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "reportProgress: bookAsset is null - bad state"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;

    if-nez v1, :cond_2

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report status - entry not there in map, assetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->recomputeRequests(Ljava/lang/String;)V

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;

    if-eqz v1, :cond_a

    .line 266
    invoke-static {v1}, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;->access$200(Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker$DownloadStatus;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    .line 271
    :cond_3
    sget-object v1, Lcom/amazon/kindle/webservices/RequestStatus;->DOWNLOADING:Lcom/amazon/kindle/webservices/RequestStatus;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_4

    iget-boolean v1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->reportDownloading:Z

    if-nez v1, :cond_4

    .line 272
    sget-object p2, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->DOWNLOADING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    iput-object p2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    .line 273
    iput-boolean v2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->reportDownloading:Z

    goto :goto_0

    .line 274
    :cond_4
    sget-object v1, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    if-ne p2, v1, :cond_5

    .line 275
    iget p2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->completedAssets:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->completedAssets:I

    goto :goto_0

    .line 276
    :cond_5
    sget-object v1, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    if-ne p2, v1, :cond_6

    .line 277
    sget-object p2, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->ERROR:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    iput-object p2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    .line 279
    :cond_6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget p2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->completedAssets:I

    iget-object v0, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->assetStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 282
    sget-object p2, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->COMPLETE:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    iput-object p2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    .line 285
    :cond_7
    sget-object p2, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Report status - assetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "progress status : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    sget-object p2, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->COMPLETE:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    if-eq p1, p2, :cond_8

    iget-boolean p2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->reportDownloading:Z

    if-nez p2, :cond_8

    sget-object p2, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->ERROR:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    if-ne p1, p2, :cond_9

    .line 289
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Report status - inform listeners "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressState:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    iget-object p1, p0, Lcom/amazon/kindle/yj/tracker/AssetGroupProgressTracker;->progressUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;

    .line 291
    invoke-interface {p2, p0}, Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;->onStateChanged(Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;)V

    goto :goto_1

    :cond_9
    return-void

    .line 267
    :cond_a
    :goto_2
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 279
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
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
