.class public Lcom/amazon/kindle/scan/ScanLocalContentUtils;
.super Ljava/lang/Object;
.source "ScanLocalContentUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final fullScanRedriveHelper:Lcom/amazon/kindle/scan/FullScanRedriveHelper;

.field private hasScheduledSync:Z

.field private final isFileSystemScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastScanPersistenceScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastScanned$delegate:Lkotlin/Lazy;

.field private lastScannedFile:Ljava/io/File;

.field public localContentChangedCallback:Lcom/amazon/kindle/scan/LocalContentChangedCallback;

.field private final localContentPathWithoutSubDir:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final localContentPathsWithSubDir:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/FileObserver;",
            ">;"
        }
    .end annotation
.end field

.field private scanCompleted:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/scan/FullScanRedriveHelper;)V
    .locals 1

    const-string v0, "fullScanRedriveHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->fullScanRedriveHelper:Lcom/amazon/kindle/scan/FullScanRedriveHelper;

    .line 54
    const-class p1, Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-static {p1}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->TAG:Ljava/lang/String;

    .line 56
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentPathsWithSubDir:Ljava/util/HashSet;

    .line 57
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentPathWithoutSubDir:Ljava/util/HashSet;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->observerMap:Ljava/util/HashMap;

    .line 60
    new-instance p1, Lcom/amazon/kindle/scan/ScanLocalContentUtils$lastScanned$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils$lastScanned$2;-><init>(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->lastScanned$delegate:Lkotlin/Lazy;

    .line 61
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->lastScanPersistenceScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->isFileSystemScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getLastScanPersistenceScheduled$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->lastScanPersistenceScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getLastScannedFile$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Ljava/io/File;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->lastScannedFile:Ljava/io/File;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "lastScannedFile"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getScanCompleted$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scanCompleted:Z

    return p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setScanCompleted$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scanCompleted:Z

    return-void
.end method

.method public static synthetic addLocalContentPaths$default(Lcom/amazon/kindle/scan/ScanLocalContentUtils;Landroid/content/Context;Lcom/amazon/kindle/io/IPathDescriptor;ILjava/lang/Object;)V
    .locals 1

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    const-string v0, "Utils.getFactory()"

    if-eqz p4, :cond_0

    .line 130
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p4, "Utils.getFactory().context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p2

    const-string p3, "Utils.getFactory().fileSystem"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object p2

    const-string p3, "Utils.getFactory().fileSystem.pathDescriptor"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->addLocalContentPaths(Landroid/content/Context;Lcom/amazon/kindle/io/IPathDescriptor;)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addLocalContentPaths"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final isSDPresent()Z
    .locals 2

    .line 462
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isScanNeeded(Ljava/lang/String;)Z
    .locals 9

    .line 363
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 365
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getLastScanned()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    iget-object v1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error parsing last scanned time string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    return v2

    .line 380
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " scanning not needed: last_modified="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", last_scanned="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 388
    :cond_2
    invoke-static {v0}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->shouldHandleUnmount(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 391
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scheduleFileSystemScan()Z

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private final declared-synchronized stopMonitoringDirectory(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 174
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/FileObserver;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x1

    .line 179
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitoring stopped for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final addLocalContentPath(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 78
    iget-object p2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentPathsWithSubDir:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentPathWithoutSubDir:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Add local content path "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->startMonitoringDirectory(Ljava/lang/String;)Z

    return-void
.end method

.method public final addLocalContentPaths()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, v1, v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->addLocalContentPaths$default(Lcom/amazon/kindle/scan/ScanLocalContentUtils;Landroid/content/Context;Lcom/amazon/kindle/io/IPathDescriptor;ILjava/lang/Object;)V

    return-void
.end method

.method public final addLocalContentPaths(Landroid/content/Context;Lcom/amazon/kindle/io/IPathDescriptor;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v1}, Lkotlin/text/StringsKt;->getCASE_INSENSITIVE_ORDER(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 132
    invoke-interface {p2}, Lcom/amazon/kindle/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object p2

    const-string v1, "pathDescriptor.applicationPaths"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 133
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isSideloadPermissionChangesEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 134
    invoke-static {}, Lcom/amazon/kindle/content/SideloadedContentUtilsManager;->getInstance()Lcom/amazon/kindle/content/SideloadedContentUtils;

    move-result-object p2

    .line 135
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/content/SideloadedContentUtils;->getSideloadedDirectories(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 136
    invoke-virtual {p2, p1, p0, v1}, Lcom/amazon/kindle/content/SideloadedContentUtils;->addSideloadedPaths(Landroid/content/Context;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Ljava/util/Set;)V

    .line 137
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to local content paths"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "path"

    .line 141
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->addLocalContentPath(Ljava/lang/String;Z)V

    .line 146
    invoke-virtual {p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getLastScanned()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getLastScanned()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 151
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->writeLastScanned(IZ)V

    return-void
.end method

.method public final getFoldersToScan(Z)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 319
    iget-object v1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentPathsWithSubDir:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 320
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 322
    invoke-static {v3, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->listAllSubFolders(Ljava/io/File;Ljava/util/List;)V

    .line 323
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez p1, :cond_2

    const-string v4, "folder"

    .line 324
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->isScanNeeded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentPathWithoutSubDir:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez p1, :cond_5

    const-string v3, "path"

    .line 331
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->isScanNeeded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 332
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getLastScanned()Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 341
    check-cast v1, Ljava/lang/String;

    .line 342
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to list of folders to scan because it doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    invoke-static {v2}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->shouldHandleUnmount(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 346
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 348
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scheduleFileSystemScan()Z

    goto :goto_2

    .line 341
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-object v0
.end method

.method public final getFullScanRedriveHelper()Lcom/amazon/kindle/scan/FullScanRedriveHelper;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->fullScanRedriveHelper:Lcom/amazon/kindle/scan/FullScanRedriveHelper;

    return-object v0
.end method

.method public final getLastScanned()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->lastScanned$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method public final getLocalContentChangedCallback()Lcom/amazon/kindle/scan/LocalContentChangedCallback;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentChangedCallback:Lcom/amazon/kindle/scan/LocalContentChangedCallback;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "localContentChangedCallback"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final loadDataFromLastScannedFile(Ljava/util/Properties;)Z
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const-string v0, "lastScanned"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v3, "Utils.getFactory()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    const-string v3, "Utils.getFactory().fileSystem"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v2

    const-string v3, "Utils.getFactory().fileSystem.pathDescriptor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".last_scanned"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->lastScannedFile:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "lastScannedFile"

    if-eqz v0, :cond_3

    .line 248
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->lastScannedFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    throw v2

    .line 251
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->lastScannedFile:Ljava/io/File;

    if-eqz v4, :cond_2

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    throw v2

    :catch_0
    move-exception p1

    goto :goto_2

    .line 248
    :cond_3
    :try_start_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    throw v2

    .line 257
    :catch_1
    :try_start_3
    iget-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->lastScannedFile:Ljava/io/File;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid FileContent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    throw v2

    .line 260
    :catch_2
    iget-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->TAG:Ljava/lang/String;

    const-string v0, "Error reading lastScannedFile"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    .line 253
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->TAG:Ljava/lang/String;

    const-string v2, "failed to load last scanned file"

    invoke-static {v0, v2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final loadLastScanned()Ljava/util/Properties;
    .locals 3

    .line 236
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 237
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->loadDataFromLastScannedFile(Ljava/util/Properties;)Z

    .line 238
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last scanned time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final removeLocalContentPath(Ljava/lang/String;)V
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentPathsWithSubDir:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentPathWithoutSubDir:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed local content path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->stopMonitoringDirectory(Ljava/lang/String;)Z

    return-void
.end method

.method public final declared-synchronized resetLastScannedForPath(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getLastScanned()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->writeLastScanned(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final scanForLocalContent(Z)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->fullScanRedriveHelper:Lcom/amazon/kindle/scan/FullScanRedriveHelper;

    invoke-interface {v0}, Lcom/amazon/kindle/scan/FullScanRedriveHelper;->isFullScanRequired()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 198
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->fullScanRedriveHelper:Lcom/amazon/kindle/scan/FullScanRedriveHelper;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/scan/FullScanRedriveHelper;->setFullScanRunning(Z)V

    .line 203
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/scan/ScanLocalContentUtils$scanForLocalContent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils$scanForLocalContent$1;-><init>(Lcom/amazon/kindle/scan/ScanLocalContentUtils;Z)V

    const/16 p1, 0x2710

    int-to-long v2, p1

    .line 209
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 203
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final scanForLocalContentImpl(Z)V
    .locals 11

    .line 399
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->isFileSystemScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 401
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    .line 407
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentChangedCallback:Lcom/amazon/kindle/scan/LocalContentChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string v4, "localContentChangedCallback"

    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Lcom/amazon/kindle/scan/LocalContentChangedCallback;->deleteLocalFiles()V

    .line 408
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    .line 413
    invoke-direct {p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->isSDPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getFoldersToScan(Z)Ljava/util/Collection;

    move-result-object p1

    .line 416
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 418
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, -0x1

    .line 420
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 421
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 424
    :cond_0
    iget-object v6, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentChangedCallback:Lcom/amazon/kindle/scan/LocalContentChangedCallback;

    if-eqz v6, :cond_2

    invoke-interface {v6, v5}, Lcom/amazon/kindle/scan/LocalContentChangedCallback;->onLocalPathChanged(Ljava/lang/String;)V

    const/4 v6, -0x1

    int-to-long v9, v6

    cmp-long v6, v7, v9

    if-nez v6, :cond_1

    .line 432
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing last accessed time property for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " since it does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    invoke-virtual {p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getLastScanned()Ljava/util/Properties;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v5

    const-string v6, "LibraryContentService"

    const-string v7, "BookPathUnmounted"

    invoke-virtual {v5, v6, v7}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating last accessed time for "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    invoke-virtual {p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getLastScanned()Ljava/util/Properties;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 424
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 446
    :cond_3
    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 447
    invoke-virtual {p0, v2, v1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->writeLastScanned(IZ)V

    .line 450
    :cond_4
    iput-boolean v1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scanCompleted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    :cond_5
    iget-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->isFileSystemScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 407
    :cond_6
    :try_start_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catchall_0
    move-exception p1

    .line 453
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->isFileSystemScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1

    :cond_7
    :goto_1
    return-void
.end method

.method public final declared-synchronized scheduleFileSystemScan()Z
    .locals 5

    monitor-enter p0

    .line 220
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->hasScheduledSync:Z

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/scan/ScanLocalContentUtils$scheduleFileSystemScan$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils$scheduleFileSystemScan$1;-><init>(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)V

    const/16 v2, 0x7530

    int-to-long v2, v2

    .line 223
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 221
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->hasScheduledSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 229
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setLocalContentChangedCallback(Lcom/amazon/kindle/scan/LocalContentChangedCallback;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->localContentChangedCallback:Lcom/amazon/kindle/scan/LocalContentChangedCallback;

    return-void
.end method

.method public final declared-synchronized startMonitoringDirectory(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 98
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    .line 99
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FileObserver;

    goto :goto_2

    .line 107
    :cond_2
    new-instance v2, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;-><init>(Lcom/amazon/kindle/scan/ScanLocalContentUtils;Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->observerMap:Ljava/util/HashMap;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v2, :cond_3

    .line 112
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 114
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitoring started for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    monitor-exit p0

    throw p1

    :cond_3
    const/4 v0, 0x0

    .line 120
    :cond_4
    :goto_4
    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized writeLastScanned(IZ)V
    .locals 3

    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->lastScanPersistenceScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 276
    monitor-exit p0

    return-void

    .line 278
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->lastScanPersistenceScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    new-instance v0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$writeLastScanned$lastScannedPersistence$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils$writeLastScanned$lastScannedPersistence$1;-><init>(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)V

    if-eqz p2, :cond_1

    .line 294
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    const-string p2, "ThreadPoolManager.getIns\u2026Long(), TimeUnit.SECONDS)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
