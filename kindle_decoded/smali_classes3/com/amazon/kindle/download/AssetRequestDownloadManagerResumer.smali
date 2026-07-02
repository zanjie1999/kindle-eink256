.class public final Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;
.super Ljava/lang/Object;
.source "AssetRequestDownloadManagerResumer.kt"

# interfaces
.implements Lcom/amazon/kindle/download/IDownloadResumptionTracker;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetRequestDownloadManagerResumer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetRequestDownloadManagerResumer.kt\ncom/amazon/kindle/download/AssetRequestDownloadManagerResumer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,219:1\n1819#2,2:220\n13506#3,2:222\n*E\n*S KotlinDebug\n*F\n+ 1 AssetRequestDownloadManagerResumer.kt\ncom/amazon/kindle/download/AssetRequestDownloadManagerResumer\n*L\n104#1,2:220\n179#1,2:222\n*E\n"
.end annotation


# instance fields
.field private final bookIdsInProgress$delegate:Lkotlin/Lazy;

.field private final downloadDiscoveryEntryPoints:Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

.field private final downloadService$delegate:Lkotlin/Lazy;

.field private final serializationHandler:Lcom/amazon/kindle/download/IDownloadSerializationHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;)V
    .locals 1

    const-string v0, "ddep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler;-><init>(Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;)V

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;-><init>(Lcom/amazon/kindle/download/IDownloadSerializationHandler;Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/download/IDownloadSerializationHandler;Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;)V
    .locals 1

    const-string v0, "serializationHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadDiscoveryEntryPoints"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->serializationHandler:Lcom/amazon/kindle/download/IDownloadSerializationHandler;

    iput-object p2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->downloadDiscoveryEntryPoints:Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    .line 84
    new-instance p1, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$downloadService$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$downloadService$2;-><init>(Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->downloadService$delegate:Lkotlin/Lazy;

    .line 87
    new-instance p1, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$bookIdsInProgress$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$bookIdsInProgress$2;-><init>(Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->bookIdsInProgress$delegate:Lkotlin/Lazy;

    .line 96
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getDownloadDiscoveryEntryPoints$p(Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;)Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->downloadDiscoveryEntryPoints:Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    return-object p0
.end method

.method public static final synthetic access$getSerializationHandler$p(Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;)Lcom/amazon/kindle/download/IDownloadSerializationHandler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->serializationHandler:Lcom/amazon/kindle/download/IDownloadSerializationHandler;

    return-object p0
.end method

.method private final deleteTempFiles(Ljava/lang/String;)V
    .locals 6

    .line 171
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 172
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    sget-object v3, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$deleteTempFiles$oldTempFiles$1;->INSTANCE:Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer$deleteTempFiles$oldTempFiles$1;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 178
    array-length v3, v2

    if-lez v3, :cond_0

    .line 222
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 180
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 184
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete temp files took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 186
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete temp files under "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final getBookIdsInProgress()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->bookIdsInProgress$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private final getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->downloadService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadService;

    return-object v0
.end method

.method private final getSharedDownloadPath(Lcom/amazon/kindle/content/ContentMetadata;)Ljava/lang/String;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->downloadDiscoveryEntryPoints:Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    const-string v1, "downloadDiscoveryEntryPoints.krlForDownloadFacade"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    .line 164
    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final serializeBookIds()V
    .locals 4

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 151
    iget-object v2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->serializationHandler:Lcom/amazon/kindle/download/IDownloadSerializationHandler;

    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->getBookIdsInProgress()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/download/IDownloadSerializationHandler;->serialize(Ljava/util/Set;)V

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 153
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookID set serialization took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private final shouldRemoveBook(Lcom/amazon/kindle/model/content/ContentState;)Z
    .locals 0

    .line 157
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/ContentState;->isTerminal()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addNewDownload(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)V
    .locals 2

    const-string v0, "downloadGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    const-string v0, "downloadGroup.bookID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    const-string v0, "downloadGroup.bookID.serializedForm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->getBookIdsInProgress()Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->getBookIdsInProgress()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->getBookIdsInProgress()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->serializeBookIds()V

    .line 128
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onDownloadStateChanged(Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownloadState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    const-string v1, "event.downloadState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->shouldRemoveBook(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    const-string v0, "event.download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "event.download.bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->removeDownload(Ljava/lang/String;)V

    return-void
.end method

.method public removeDownload(Ljava/lang/String;)V
    .locals 2

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->getBookIdsInProgress()Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->getBookIdsInProgress()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->getBookIdsInProgress()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 135
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->serializeBookIds()V

    .line 137
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public resumeDownloads()V
    .locals 7

    .line 100
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->getBookIdsInProgress()Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->getBookIdsInProgress()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v0

    .line 103
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$APP_STARTUP;

    const-string v2, "ARDM"

    invoke-direct {v0, v2}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$APP_STARTUP;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    iget-object v3, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->downloadDiscoveryEntryPoints:Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    invoke-interface {v3}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    .line 108
    invoke-direct {p0, v3}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->getSharedDownloadPath(Lcom/amazon/kindle/content/ContentMetadata;)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SharedStorage of BookID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 110
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 111
    invoke-direct {p0, v4}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->deleteTempFiles(Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 115
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v4

    const-string v5, "metadata.state"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->shouldRemoveBook(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    :cond_3
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumer;->removeDownload(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 100
    monitor-exit v0

    throw v1
.end method
