.class public Lcom/amazon/kindle/krx/reader/ReaderManager;
.super Lcom/amazon/kindle/krx/reader/BaseReaderManager;
.source "ReaderManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final accessibilityProviders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final activityEventListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private backstack:Lcom/amazon/kindle/krx/reader/BookBackStack;

.field private bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

.field private final contentPropertyProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field private eventExecutor:Ljava/util/concurrent/ExecutorService;

.field private isPluginInitialized:Z

.field private final keyEventController:Lcom/amazon/kcp/reader/KeyEventController;

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private final lazyActivityLifecycleEventHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyAnnotationItemManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyPositionChangeEventHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyReaderSettings:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ReaderSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyRestrictionHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyTimeToReadManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final navigationListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;",
            ">;"
        }
    .end annotation
.end field

.field private final readerController:Lcom/amazon/kcp/reader/IReaderController;

.field private volatile readingMode:Lcom/amazon/kindle/krx/reader/ReadingMode;

.field private startPageProvider:Lcom/amazon/kindle/krx/reader/IStartPageProvider;

.field private final tocLoadedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IReaderTOCLoadedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/reader/ReaderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/reader/KeyEventController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kcp/reader/IReaderController;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ReaderSettings;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BaseReaderManager;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 80
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    .line 81
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->backstack:Lcom/amazon/kindle/krx/reader/BookBackStack;

    .line 82
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->navigationListeners:Ljava/util/Collection;

    .line 83
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->activityEventListeners:Ljava/util/Collection;

    .line 90
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->contentPropertyProviders:Ljava/util/List;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->accessibilityProviders:Ljava/util/Collection;

    .line 93
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->startPageProvider:Lcom/amazon/kindle/krx/reader/IStartPageProvider;

    .line 95
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->tocLoadedListeners:Ljava/util/List;

    .line 97
    sget-object v1, Lcom/amazon/kindle/krx/reader/ReadingMode;->NORMAL:Lcom/amazon/kindle/krx/reader/ReadingMode;

    iput-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readingMode:Lcom/amazon/kindle/krx/reader/ReadingMode;

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->isPluginInitialized:Z

    .line 100
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 120
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->context:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    .line 122
    iput-object p3, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 123
    iput-object p4, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->keyEventController:Lcom/amazon/kcp/reader/KeyEventController;

    .line 124
    iput-object p5, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyActivityLifecycleEventHandler:Ldagger/Lazy;

    .line 125
    iput-object p6, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyPositionChangeEventHandler:Ldagger/Lazy;

    .line 126
    iput-object p7, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyReaderSettings:Ldagger/Lazy;

    .line 127
    iput-object p8, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyRestrictionHandler:Ldagger/Lazy;

    .line 128
    iput-object p9, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyAnnotationItemManager:Ldagger/Lazy;

    .line 129
    iput-object p10, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyTimeToReadManager:Ldagger/Lazy;

    .line 131
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object p1

    const-string p2, "ReaderManager_lowpriority_worker"

    .line 133
    invoke-interface {p1, p2}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    const/4 p2, 0x1

    .line 134
    invoke-interface {p1, p2}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withPriority(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 135
    invoke-interface {p1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->eventExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/amazon/kindle/krx/reader/ReaderManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleBookCloseEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 3

    .line 233
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->clearCurrentBook()V

    .line 235
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getReaderNavigationListeners()Ljava/util/Collection;

    move-result-object p1

    .line 238
    monitor-enter p1

    .line 239
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;

    .line 240
    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_1

    .line 242
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized handleBookInitEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 1

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->latch:Ljava/util/concurrent/CountDownLatch;

    if-nez p1, :cond_0

    .line 260
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 262
    sget-object p1, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_before:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    invoke-static {p1}, Lcom/amazon/kcp/reader/KRXPluginManager;->initialize(Lcom/amazon/kindle/krx/plugin/Plugin$Entry;)V

    .line 263
    iget-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleBookOpenEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 6

    .line 172
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->isPluginInitialized:Z

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_after:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    invoke-static {v0}, Lcom/amazon/kcp/reader/KRXPluginManager;->initialize(Lcom/amazon/kindle/krx/plugin/Plugin$Entry;)V

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->isPluginInitialized:Z

    .line 176
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 185
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getActivityLifecycleEventHander()Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->registerLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    .line 190
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getPositionChangedEventHandler()Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 203
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->isEventForSettingsChange(Lcom/amazon/kcp/reader/ReaderActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 204
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    move-object p1, v0

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getReaderNavigationListeners()Ljava/util/Collection;

    move-result-object v0

    .line 207
    monitor-enter v0

    .line 208
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 212
    :catch_0
    :try_start_2
    sget-object v3, Lcom/amazon/kindle/krx/reader/ReaderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error on sending book open event to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 215
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 223
    :cond_5
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookLockManager()Lcom/amazon/kcp/reader/IBookLockManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IBookLockManager;->unLock()V

    return-void
.end method

.method private handleBookReadyEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 2

    .line 246
    iget-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 249
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    sget-object p1, Lcom/amazon/kindle/krx/reader/ReaderManager;->TAG:Ljava/lang/String;

    const-string v0, "Interrupted while waiting for plugin initialization"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/reader/ReaderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "events out of order: BOOK_LIFECYCLE_READY received before BOOK_LIFECYCLE_INIT"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v1, "this should not happen"

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private isEventForSettingsChange(Lcom/amazon/kcp/reader/ReaderActivity;)Z
    .locals 2

    .line 229
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "settingsChange"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public bindActivityToCurrentBook(Landroid/app/Activity;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getOrRestoreCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method

.method public clearActivitiesOverReaderActivity()V
    .locals 3

    .line 742
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 744
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24000000

    .line 745
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 746
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized clearCurrentBook()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 380
    :try_start_0
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 381
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->backstack:Lcom/amazon/kindle/krx/reader/BookBackStack;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->backstack:Lcom/amazon/kindle/krx/reader/BookBackStack;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/reader/BookBackStack;->removeEventHandler()V

    .line 383
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->backstack:Lcom/amazon/kindle/krx/reader/BookBackStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccessibilityProviders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;",
            ">;"
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->accessibilityProviders:Ljava/util/Collection;

    return-object v0
.end method

.method public getActivityEventListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;",
            ">;"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->activityEventListeners:Ljava/util/Collection;

    return-object v0
.end method

.method getActivityLifecycleEventHander()Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyActivityLifecycleEventHandler:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;

    return-object v0
.end method

.method public getAnnotationItemManager()Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyAnnotationItemManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;

    return-object v0
.end method

.method public getAnnotationManager(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/reader/IAnnotationManager;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 354
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 357
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    .line 360
    :cond_1
    new-instance v1, Lcom/amazon/kindle/krx/reader/AnnotationManager;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    .line 361
    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/amazon/kindle/krx/reader/AnnotationManager;-><init>(Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    return-object v1
.end method

.method public getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;
    .locals 1

    .line 737
    invoke-static {}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->getInstance()Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    move-result-object v0

    return-object v0
.end method

.method public getContentProperty(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->contentPropertyProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;

    .line 653
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;->getProperty(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->contentPropertyProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;

    .line 664
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    .line 270
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    instance-of v3, v2, Lcom/amazon/kindle/krx/content/LocalBook;

    if-eqz v3, :cond_1

    .line 278
    check-cast v2, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/LocalBook;->getLocalBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 281
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v3, :cond_2

    .line 282
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v2, v0, :cond_3

    .line 284
    :cond_2
    new-instance v2, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-direct {v2, v0}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    iput-object v2, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    .line 285
    check-cast v2, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/krx/content/LocalBook;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 287
    iput-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->backstack:Lcom/amazon/kindle/krx/reader/BookBackStack;

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public getCurrentBookAnnotationManager()Lcom/amazon/kindle/krx/reader/IAnnotationManager;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v1, Lcom/amazon/kindle/krx/reader/AnnotationManager;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    .line 342
    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/kindle/krx/reader/AnnotationManager;-><init>(Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentBookBackStack()Lcom/amazon/kindle/krx/reader/IBookBackStack;
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->backstack:Lcom/amazon/kindle/krx/reader/BookBackStack;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/amazon/kindle/krx/reader/BookBackStack;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/reader/BookBackStack;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->backstack:Lcom/amazon/kindle/krx/reader/BookBackStack;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->backstack:Lcom/amazon/kindle/krx/reader/BookBackStack;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/content/IBookContent<",
            "+",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v1, Lcom/amazon/kindle/krx/content/BookContent;

    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amazon/kindle/krx/content/BookContent;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lcom/amazon/kindle/krx/reader/ReaderManager;->TAG:Ljava/lang/String;

    const-string v1, "You are invoking getCurrentBookNavigator when a book isn\'t open"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Lcom/amazon/kindle/krx/reader/BookNavigator;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/reader/BookNavigator;-><init>(Lcom/amazon/kcp/reader/IReaderController;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    return-object v0
.end method

.method public getCurrentBookPageNumberManager()Lcom/amazon/kindle/krx/reader/IPageNumberManager;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v1, Lcom/amazon/kindle/krx/reader/PageNumberManager;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/kindle/krx/reader/PageNumberManager;-><init>(Lcom/amazon/android/docviewer/IPageLabelProvider;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentBookSelection()Lcom/amazon/kindle/krx/content/IContentSelection;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    new-instance v1, Lcom/amazon/kindle/krx/content/ContentSelection;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/kindle/krx/content/ContentSelection;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    return-object v0
.end method

.method getPositionChangedEventHandler()Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyPositionChangeEventHandler:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/PositionChangedEventHandler;

    return-object v0
.end method

.method getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 550
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getReaderNavigationListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;",
            ">;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->navigationListeners:Ljava/util/Collection;

    return-object v0
.end method

.method public getReaderSettings()Lcom/amazon/kindle/krx/reader/IReaderSettings;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyReaderSettings:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/IReaderSettings;

    return-object v0
.end method

.method public getReadingMode()Lcom/amazon/kindle/krx/reader/ReadingMode;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readingMode:Lcom/amazon/kindle/krx/reader/ReadingMode;

    return-object v0
.end method

.method public getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyRestrictionHandler:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    return-object v0
.end method

.method public getStartPageProvider()Lcom/amazon/kindle/krx/reader/IStartPageProvider;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->startPageProvider:Lcom/amazon/kindle/krx/reader/IStartPageProvider;

    return-object v0
.end method

.method public getTOCLoadedListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IReaderTOCLoadedListener;",
            ">;"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->tocLoadedListeners:Ljava/util/List;

    return-object v0
.end method

.method public getTimeToReadManager()Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadManager;
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->lazyTimeToReadManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;

    .line 716
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/reader/ttr/TimeToReadManager;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-object v0
.end method

.method public handleBookEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 140
    sget-object v0, Lcom/amazon/kindle/krx/reader/ReaderManager$2;->$SwitchMap$com$amazon$kcp$reader$ReaderControllerEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/reader/ReaderManager;->handleBookInitEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/reader/ReaderManager;->handleBookReadyEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/reader/ReaderManager;->handleBookCloseEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V

    goto :goto_0

    .line 142
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/reader/ReaderManager;->handleBookOpenEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V

    :goto_0
    return-void
.end method

.method public handlePageTurnAbortedEvent(Lcom/amazon/kcp/events/PageTurnAbortedEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 161
    new-instance v0, Lcom/amazon/kindle/krx/reader/KRXPageTurnAbortedEventData;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/reader/KRXPageTurnAbortedEventData;-><init>(Lcom/amazon/kcp/events/PageTurnAbortedEvent;)V

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getReaderNavigationListeners()Ljava/util/Collection;

    move-result-object p1

    .line 164
    monitor-enter p1

    .line 165
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;

    .line 166
    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/reader/IPageNavigationAbortedListener;->onPageTurnAborted(Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V

    goto :goto_0

    .line 168
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inDemoMode()Z
    .locals 1

    .line 721
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v0

    return v0
.end method

.method public onPeekEvent(Lcom/amazon/kindle/krx/events/PeekEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 638
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/AbstractContentEvent;->getStage()Lcom/amazon/kindle/krx/events/EventStage;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/EventStage;->Start:Lcom/amazon/kindle/krx/events/EventStage;

    if-ne p1, v0, :cond_0

    .line 639
    sget-object p1, Lcom/amazon/kindle/krx/reader/ReadingMode;->PEEK:Lcom/amazon/kindle/krx/reader/ReadingMode;

    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readingMode:Lcom/amazon/kindle/krx/reader/ReadingMode;

    goto :goto_0

    .line 641
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/reader/ReadingMode;->NORMAL:Lcom/amazon/kindle/krx/reader/ReadingMode;

    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readingMode:Lcom/amazon/kindle/krx/reader/ReadingMode;

    :goto_0
    return-void
.end method

.method public openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    const/4 v0, 0x0

    .line 633
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/os/Bundle;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/os/Bundle;Landroid/app/Activity;)Z
    .locals 11

    .line 603
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 604
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 603
    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 606
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setOpenForReading(Z)V

    .line 608
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getLocalContentFactory()Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->loadLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 609
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 p1, 0x0

    .line 613
    instance-of v1, p2, Lcom/amazon/kindle/model/Annotations/IntPosition;

    if-eqz v1, :cond_0

    .line 614
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    if-lez p2, :cond_0

    .line 616
    new-instance p1, Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;

    invoke-direct {p1, p2}, Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;-><init>(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 621
    new-instance p1, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {p1}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    :cond_1
    move-object v5, p1

    .line 623
    iget-object v3, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    sget-object v6, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v8, p4

    move-object v10, p3

    invoke-interface/range {v3 .. v10}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    return v0

    :cond_2
    return v2
.end method

.method public registerAccessibilityProvider(Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;)V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->accessibilityProviders:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->activityEventListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->activityEventListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerContentPropertyProvider(Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;)V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->contentPropertyProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->keyEventController:Lcom/amazon/kcp/reader/KeyEventController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/KeyEventController;->registerKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V

    return-void
.end method

.method public registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->navigationListeners:Ljava/util/Collection;

    new-instance v1, Lcom/amazon/kindle/krx/reader/ReaderManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/krx/reader/ReaderManager$1;-><init>(Lcom/amazon/kindle/krx/reader/ReaderManager;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerStartPageProvider(Lcom/amazon/kindle/krx/reader/IStartPageProvider;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->startPageProvider:Lcom/amazon/kindle/krx/reader/IStartPageProvider;

    return-void
.end method

.method public registerTOCLoadedListener(Lcom/amazon/kindle/krx/reader/IReaderTOCLoadedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->tocLoadedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->tocLoadedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public tocLoaded(Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 519
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 525
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 526
    sget-object p1, Lcom/amazon/kindle/krx/reader/ReaderManager;->TAG:Ljava/lang/String;

    const-string v0, " Update the listeners that toc is loaded "

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getTOCLoadedListeners()Ljava/util/List;

    move-result-object p1

    .line 529
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/reader/IReaderTOCLoadedListener;

    .line 530
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderTOCLoadedListener;->onTocLoaded()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unBindActivityFromCurrentBook(Landroid/app/Activity;)V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    return-void
.end method

.method public unregisterKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager;->keyEventController:Lcom/amazon/kcp/reader/KeyEventController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/KeyEventController;->unregisterKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V

    return-void
.end method
