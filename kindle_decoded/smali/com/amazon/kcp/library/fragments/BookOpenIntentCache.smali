.class public Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;
.super Ljava/lang/Object;
.source "BookOpenIntentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;,
        Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;
    }
.end annotation


# static fields
.field private static final KEY_FONT_FACE:Ljava/lang/String; = "FONT_FACE"

.field private static final KEY_FONT_FACE_CN:Ljava/lang/String; = "FONT_FACE_CN"

.field private static final KEY_FONT_FACE_LATIN:Ljava/lang/String; = "FONT_FACE_LATIN"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "FONT_SIZE"

.field private static final KEY_LINE_LENGTH:Ljava/lang/String; = "LINE_LENGTH"

.field private static final KEY_LINE_SPACING:Ljava/lang/String; = "LINE_SPACING"

.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_TIME_OUT:J = 0x1388L

.field private static final instance:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;


# instance fields
.field private final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private lock:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

.field private openingItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field private refreshThread:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;

.field private threadLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    invoke-direct {v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->instance:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->threadLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$1;-><init>(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;I)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->cache:Landroid/util/LruCache;

    .line 121
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->evictDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->initDocView(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;)Landroid/util/LruCache;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->cache:Landroid/util/LruCache;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->cacheable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->doRefresh(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;)Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->lock:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

    return-object p0
.end method

.method private cacheable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->openingItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private declared-synchronized cancelOngoingTask()V
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->refreshThread:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->refreshThread:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createDocViewer(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 2

    .line 259
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewerGenerator()Lcom/amazon/android/docviewer/KindleDocViewerGenerator;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecurity()Lcom/mobipocket/android/library/reader/AndroidSecurity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->create(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    return-object p1
.end method

.method private doRefresh(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 9

    const/4 v0, 0x0

    .line 172
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 173
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    instance-of v2, v2, Lcom/amazon/kcp/reader/ReaderController;

    if-eqz v2, :cond_3

    .line 174
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->genId(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->closeDocument()V

    .line 181
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    .line 182
    invoke-direct {p0, v4}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->cacheable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->lock:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 200
    monitor-enter p0

    .line 201
    :try_start_1
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->refreshThread:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;

    .line 202
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->lock:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;->unlock()V

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 187
    :cond_1
    :try_start_2
    invoke-direct {p0, v4}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->getDocViewer(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 189
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/amazon/kcp/reader/ReaderController;

    .line 190
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookItem;->isBookRead()Z

    move-result v7

    move-object v8, v2

    .line 189
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kcp/reader/ReaderController;->createReaderIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Ljava/lang/String;ZLcom/amazon/android/docviewer/KindleDocViewer;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 192
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->cache:Landroid/util/LruCache;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookPreloader()Lcom/amazon/kcp/application/IBookPreloader;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kcp/application/IBookPreloader;->saveLastReadBook(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 200
    :cond_3
    monitor-enter p0

    .line 201
    :try_start_3
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->refreshThread:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;

    .line 202
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->lock:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;->unlock()V

    .line 203
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 200
    monitor-enter p0

    .line 201
    :try_start_4
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->refreshThread:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->lock:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;->unlock()V

    .line 203
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 204
    throw p1

    :catchall_3
    move-exception p1

    .line 203
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method private evictDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 405
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->closeDocView()V

    .line 407
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->closeDocument()V

    :cond_0
    return-void
.end method

.method private genId(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 0

    .line 436
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDocViewer(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 3

    .line 218
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->createDocViewer(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 224
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->initTicrEventHandler(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->restoreDocViewerSettings(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 226
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->calculateIsOpeningToSrl()Z

    .line 227
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 228
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->initDocView(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    goto :goto_0

    .line 237
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 238
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$2;-><init>(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    .line 248
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    sget-object v0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->TAG:Ljava/lang/String;

    const-string v1, "The job of the initDocView is interrupted"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private initDocView(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 263
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->createDocView(Landroid/content/Context;)V

    .line 264
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->preRender()V

    :cond_0
    return-void
.end method

.method private initTicrEventHandler(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 271
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->initialize(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_0
    return-void
.end method

.method private needsRefresh(Lcom/amazon/kindle/content/ContentUpdate;)Z
    .locals 3

    .line 361
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 372
    :cond_1
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 377
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    return v2

    .line 386
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private refreshIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    monitor-exit v0

    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->cancelOngoingTask()V

    .line 154
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->lock:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->lock:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;->await()V

    .line 157
    :cond_1
    new-instance v1, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;-><init>(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->lock:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

    .line 159
    new-instance v1, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;-><init>(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->refreshThread:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;

    .line 160
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->refreshThread:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 161
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private restoreDocViewerSettings(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 5

    .line 281
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 282
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 284
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isFontSizeChangeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v2

    aget v1, v1, v2

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setFontSize(I)V

    .line 289
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v1

    .line 290
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getLineSpacingIndex()I

    move-result v2

    .line 291
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    invoke-static {v2}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 295
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isJpVertContent()Z

    move-result v3

    .line 296
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLineSpacing(IIZ)I

    move-result v1

    .line 297
    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setLineSpacing(I)V

    .line 301
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getTextAlignment()Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setTextAlignment(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V

    .line 305
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 306
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColumnCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->setColumnCount(IZ)V

    .line 309
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    .line 311
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->hasPublisherFonts()Z

    move-result v0

    if-nez v0, :cond_4

    .line 312
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->setFontFace(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    goto :goto_1

    .line 314
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FONT_FACE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDefaultFontFace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",FONT_SIZE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFontSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",LINE_SPACING="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSpacing()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private setFontFace(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 2

    .line 321
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 322
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 324
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isFontTypeChangeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setDefaultFontFace(Ljava/lang/String;)Z

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FONT_FACE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDefaultFontFace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",FONT_SIZE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFontSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",LINE_SPACING="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSpacing()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    .line 396
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 397
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->evictDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 4
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

    .line 335
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 336
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    .line 337
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v3

    if-nez v3, :cond_3

    .line 344
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->genId(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_2

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onContentUpdate: Pair is null with bookId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->evictDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    goto :goto_0

    .line 352
    :cond_3
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->needsRefresh(Lcom/amazon/kindle/content/ContentUpdate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    .line 354
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 355
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->refreshIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onSettingsChangeEvent(Lcom/amazon/kindle/persistence/SettingsChangedEvent;)V
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 414
    invoke-virtual {p1}, Lcom/amazon/kindle/persistence/SettingsChangedEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LINE_SPACING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "FONT_SIZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "FONT_FACE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "FONT_FACE_LATIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "LINE_LENGTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "FONT_FACE_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    .line 430
    sget-object v0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid event key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/persistence/SettingsChangedEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 421
    :cond_1
    new-instance p1, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$3;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$3;-><init>(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;)V

    .line 427
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    const-wide/16 v1, 0x190

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67c4ee63 -> :sswitch_5
        0x30726991 -> :sswitch_4
        0x4260dc72 -> :sswitch_3
        0x4c0bdc4d -> :sswitch_2
        0x4c11e5f1 -> :sswitch_1
        0x62328ad8 -> :sswitch_0
    .end sparse-switch
.end method
