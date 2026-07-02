.class public Lcom/amazon/kindle/krx/sync/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/sync/ISyncManager;


# static fields
.field public static final SYNC_THRESHOLD_IN_SECONDS:J = 0x1eL

.field public static final TODO_SYNC_THRESHOLD_IN_SECONDS:J = 0x5L


# instance fields
.field private final factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private final lastSyncTimeByBookId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastToDoSyncTime:Ljava/lang/Long;

.field private final lazyAndroidSecurity:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyReaderController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private final lazySynchronizationManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final manualSyncListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/sync/IManualSyncListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kindle/content/ILibraryService;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            "Lcom/amazon/kcp/library/ILibraryController;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 76
    iput-object p2, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 77
    iput-object p3, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lastSyncTimeByBookId:Ljava/util/Map;

    .line 79
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->manualSyncListeners:Ljava/util/List;

    .line 81
    iput-object p4, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lazyReaderController:Ldagger/Lazy;

    .line 82
    iput-object p5, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lazyAndroidSecurity:Ldagger/Lazy;

    .line 83
    iput-object p6, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lazySynchronizationManager:Ldagger/Lazy;

    return-void
.end method

.method private proceedWithToDoSync()Z
    .locals 7

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lastToDoSyncTime:Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lastToDoSyncTime:Ljava/lang/Long;

    return v1

    .line 208
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lastToDoSyncTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 210
    iput-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lastToDoSyncTime:Ljava/lang/Long;

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private proceedWithUpdateAndSyncLPR(Ljava/lang/String;)Z
    .locals 7

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lastSyncTimeByBookId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lastSyncTimeByBookId:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lastSyncTimeByBookId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1e

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lastSyncTimeByBookId:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private updateBookMetadataOnBookAccessed(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 4

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookReadingProgress()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookReadingProgress()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    .line 196
    iget-object v1, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getManualSyncListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/sync/IManualSyncListener;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->manualSyncListeners:Ljava/util/List;

    return-object v0
.end method

.method public registerManualSyncListener(Lcom/amazon/kindle/krx/sync/IManualSyncListener;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->manualSyncListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public triggerFalkorATLSync()V
    .locals 1

    .line 155
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorAddToLibraryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFalkorATLSyncManager()Lcom/amazon/kcp/sync/FalkorSyncManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/amazon/kcp/sync/FalkorSyncManager;->sync()V

    :cond_0
    return-void
.end method

.method public triggerToDoSync()V
    .locals 3

    .line 125
    invoke-direct {p0}, Lcom/amazon/kindle/krx/sync/SyncManager;->proceedWithToDoSync()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 130
    iget-object v1, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lazySynchronizationManager:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    return-void
.end method

.method public updateAndSyncLPR(Lcom/amazon/kindle/krx/content/IBook;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-gtz p2, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/sync/SyncManager;->proceedWithUpdateAndSyncLPR(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lazyReaderController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewerGenerator()Lcom/amazon/android/docviewer/KindleDocViewerGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lazyAndroidSecurity:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/system/security/Security;

    invoke-virtual {v1, p1, v2}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->create(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 104
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->updateLastPageRead(I)V

    .line 106
    :cond_3
    invoke-interface {p1, p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setLastPositionRead(I)V

    .line 108
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/sync/SyncManager;->updateBookMetadataOnBookAccessed(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 109
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->persistLastPositionReadToSidecar(I)V

    .line 112
    iget-object p2, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 113
    new-instance p2, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 115
    iget-object p1, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->lazySynchronizationManager:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public updateFalkorLastReadEpisode(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 1

    .line 145
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorLastReadEpisodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/krx/sync/SyncManager;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFalkorLastReadEpisodeSyncManager()Lcom/amazon/kcp/sync/FalkorSyncManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/sync/FalkorSyncManager;->update(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
