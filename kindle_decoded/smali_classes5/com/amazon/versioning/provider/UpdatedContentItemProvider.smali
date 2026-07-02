.class public Lcom/amazon/versioning/provider/UpdatedContentItemProvider;
.super Ljava/lang/Object;
.source "UpdatedContentItemProvider.java"

# interfaces
.implements Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener<",
        "Lcom/amazon/versioning/data/UpdatedContentItemLibrary;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final MAX_FETCH_ATTEMPTS:I = 0x3

.field private static final MIN_BATCH_SIZE:I = 0xf


# instance fields
.field private batchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private counterForFetchAttempts:I

.field private elapsedTimeOfRestCall:J

.field private isLastPageFetched:Z

.field private lastEvaluatedKey:Ljava/lang/String;

.field private onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;

.field private restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

.field private startTimeOfRestCall:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 48
    invoke-virtual {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->initializeValues()V

    return-void
.end method

.method private declared-synchronized clearListenerAndValuesOnFailure()V
    .locals 2

    monitor-enter p0

    .line 304
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clearListenerAndValuesOnFailure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    .line 305
    iput v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->counterForFetchAttempts:I

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized clearListenerAndValuesOnSuccess()V
    .locals 2

    monitor-enter p0

    .line 297
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clearListenerAndValuesOnSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->batchList:Ljava/util/List;

    const/4 v0, 0x0

    .line 299
    iput v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->counterForFetchAttempts:I

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private combineIntoOneObject(Lcom/amazon/versioning/data/UpdatedContentItem;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;
    .locals 8

    .line 168
    new-instance v7, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;

    invoke-virtual {p1}, Lcom/amazon/versioning/data/UpdatedContentItem;->getAsin()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p1}, Lcom/amazon/versioning/data/UpdatedContentItem;->getRevisionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/versioning/data/UpdatedContentItem;->getEmbeddedIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {p1}, Lcom/amazon/versioning/data/UpdatedContentItem;->getUpdateTime()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v7
.end method

.method private declared-synchronized fetchNextPage()V
    .locals 2

    monitor-enter p0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isProviderBusy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isLastPageFetched()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    sget-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->OUTGOING_REQUEST:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fetchNextPage: getting next page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->startTimeOfRestCall:J

    .line 155
    new-instance v0, Lcom/amazon/versioning/service/KCUPSHandler;

    invoke-direct {v0}, Lcom/amazon/versioning/service/KCUPSHandler;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->lastEvaluatedKey:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/amazon/versioning/service/KCUPSHandler;->placeGetUpdateStatusCallWithListener(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 150
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/versioning/data/UpdatedContentItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 232
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filterResponseList, list size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/versioning/data/UpdatedContentItem;

    .line 239
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/versioning/data/UpdatedContentItem;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 240
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/versioning/data/UpdatedContentItem;->getEmbeddedIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    invoke-direct {p0, v1, v2}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->combineIntoOneObject(Lcom/amazon/versioning/data/UpdatedContentItem;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "combinedList size "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0

    .line 233
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "filterResponseList, list empty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private recordMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 330
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 331
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->recordReadingStreamsMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMET(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 325
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 326
    invoke-virtual {v0, p1, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMET(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 320
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->reportPMET(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Status"

    .line 316
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->recordMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->reportPMET(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->recordMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized shouldReturnBatchListOnResponse()Z
    .locals 3

    monitor-enter p0

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isLastPageFetched:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->counterForFetchAttempts:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->batchList:Ljava/util/List;

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 215
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldReturnBatchListOnResponse result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldReturnBatchListOnResponse listSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->batchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldReturnBatchListOnResponse lastPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isLastPageFetched:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldReturnBatchListOnResponse attemptCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->counterForFetchAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearListenerAndValues()V
    .locals 2

    monitor-enter p0

    .line 70
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clearValues"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->batchList:Ljava/util/List;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->lastEvaluatedKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->counterForFetchAttempts:I

    .line 78
    iput-boolean v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isLastPageFetched:Z

    .line 80
    invoke-virtual {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->removeOnCompleteListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchNextThreshold(Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;)V
    .locals 2

    monitor-enter p0

    .line 115
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fetchNextThreshold: assigning new listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fetchNextThreshold: current status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;

    .line 119
    sget-object p1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider$1;->$SwitchMap$com$amazon$versioning$data$enums$RestRequestState:[I

    iget-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const-string p1, "KCUPA"

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fetchNextThreshold: cannot be handled, unknown restRequestState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->fetchNextPage()V

    goto :goto_0

    .line 126
    :cond_1
    sget-object p1, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 127
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;

    invoke-interface {p1}, Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;->onNextBatchFailed()V

    .line 128
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->clearListenerAndValuesOnFailure()V

    goto :goto_0

    .line 121
    :cond_2
    sget-object p1, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 122
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;

    iget-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->batchList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;->onNextBatchFetched(Ljava/util/List;)V

    .line 123
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->clearListenerAndValuesOnSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initializeValues()V
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "initializeValues"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->batchList:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->lastEvaluatedKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->counterForFetchAttempts:I

    .line 61
    iput-boolean v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isLastPageFetched:Z

    .line 63
    sget-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLastPageFetched()Z
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isLastPageFetched "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isLastPageFetched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    iget-boolean v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isLastPageFetched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isProviderBusy()Z
    .locals 3

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    sget-object v1, Lcom/amazon/versioning/data/enums/RestRequestState;->OUTGOING_REQUEST:Lcom/amazon/versioning/data/enums/RestRequestState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isProviderBusy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onErrorCode(Lcom/amazon/versioning/data/enums/KCUPSResponseCode;)V
    .locals 4

    monitor-enter p0

    .line 279
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->startTimeOfRestCall:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->elapsedTimeOfRestCall:J

    const-string p1, "KCUPA_UPDATE_PANEL"

    const-string v0, "UPDATE_PANEL.BATCH_ERROR"

    .line 280
    invoke-direct {p0, p1, v0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KCUPA_SETTINGS"

    const-string v0, "UPDATE_PANEL.ON_ERROR_TIME_ELAPSED"

    .line 281
    iget-wide v1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->elapsedTimeOfRestCall:J

    .line 282
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onErrorCode: rest call completion took "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->elapsedTimeOfRestCall:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    sget-object p1, Lcom/amazon/versioning/data/enums/RestRequestState;->CACHED_ERROR:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 286
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;

    if-eqz p1, :cond_0

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onErrorCode: listener firing failure event"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    sget-object p1, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 289
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;

    invoke-interface {p1}, Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;->onNextBatchFailed()V

    .line 290
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->clearListenerAndValuesOnFailure()V

    goto :goto_0

    .line 292
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onErrorCode: listener null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onException(Ljava/lang/Exception;)V
    .locals 4

    monitor-enter p0

    .line 257
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->startTimeOfRestCall:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->elapsedTimeOfRestCall:J

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onException: rest call completion took "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->elapsedTimeOfRestCall:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p1, "KCUPA_UPDATE_PANEL"

    const-string v0, "UPDATE_PANEL.BATCH_EXCEPTION"

    .line 260
    invoke-direct {p0, p1, v0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KCUPA_SETTINGS"

    const-string v0, "UPDATE_PANEL.ON_EXCEPTION_TIME_ELAPSED"

    .line 261
    iget-wide v1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->elapsedTimeOfRestCall:J

    .line 262
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object p1, Lcom/amazon/versioning/data/enums/RestRequestState;->CACHED_ERROR:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 264
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;

    if-eqz p1, :cond_0

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onException: listener firing failure event"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    sget-object p1, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 267
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;

    invoke-interface {p1}, Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;->onNextBatchFailed()V

    .line 268
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->clearListenerAndValuesOnFailure()V

    goto :goto_0

    .line 270
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onException: listener null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onResponse(Lcom/amazon/versioning/data/UpdatedContentItemLibrary;)V
    .locals 4

    monitor-enter p0

    .line 179
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->startTimeOfRestCall:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->elapsedTimeOfRestCall:J

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onResponse: rest call completion took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->elapsedTimeOfRestCall:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->CACHED_SUCCESS:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 184
    invoke-virtual {p1}, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;->getUpdatedContentItems()Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;->getLastEvaluatedKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;->getLastEvaluatedKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->lastEvaluatedKey:Ljava/lang/String;

    .line 188
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->batchList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    iput-boolean v1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isLastPageFetched:Z

    .line 190
    iget p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->counterForFetchAttempts:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->counterForFetchAttempts:I

    .line 193
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->shouldReturnBatchListOnResponse()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onResponse: batch condition met"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;

    if-eqz p1, :cond_1

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onResponse: listener found, returning result"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    sget-object p1, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 198
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;

    iget-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->batchList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;->onNextBatchFetched(Ljava/util/List;)V

    const-string p1, "KCUPA_UPDATE_PANEL"

    const-string v0, "UPDATE_PANEL.SUCCESSFULLY_LOADED"

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KCUPA_UPDATE_PANEL"

    const-string v0, "UPDATE_PANEL.BATCH_SIZE"

    .line 200
    iget-object v1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->batchList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KCUPA_UPDATE_PANEL"

    const-string v0, "UPDATE_PANEL.ON_SUCCESS_TIME_ELAPSED"

    .line 201
    iget-wide v1, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->elapsedTimeOfRestCall:J

    .line 202
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->clearListenerAndValuesOnSuccess()V

    goto :goto_1

    .line 205
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onResponse: listener null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->fetchNextPage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;

    invoke-virtual {p0, p1}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onResponse(Lcom/amazon/versioning/data/UpdatedContentItemLibrary;)V

    return-void
.end method

.method public declared-synchronized removeOnCompleteListener()V
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeOnCompleteListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
