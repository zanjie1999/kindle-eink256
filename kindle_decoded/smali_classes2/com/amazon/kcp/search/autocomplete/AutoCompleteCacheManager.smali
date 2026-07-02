.class public Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;
.super Ljava/lang/Object;
.source "AutoCompleteCacheManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private currentWriteTask:Ljava/util/concurrent/Future;

.field private final lock:Ljava/lang/Object;

.field private final serializerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->lock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->serializerLock:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->context:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->serializerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method private cancelCurrentWriteTask()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->currentWriteTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 161
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->currentWriteTask:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;
    .locals 1

    .line 66
    sget-object v0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->instance:Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .line 49
    sget-object v0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->instance:Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->instance:Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->instance:Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private onBookClose()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->cancelCurrentWriteTask()V

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBookOpen(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->writeCache(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method private writeCache(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->cancelCurrentWriteTask()V

    .line 125
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    .line 126
    const-class v2, Lcom/amazon/kcp/reader/features/SearchActivityFeature;

    invoke-static {v2}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/features/SearchActivityFeature;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 129
    invoke-interface {v2, v1}, Lcom/amazon/kcp/reader/features/SearchActivityFeature;->isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v3

    :cond_0
    if-eqz v1, :cond_1

    .line 132
    invoke-static {v1}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteUtils;->bookSupportsAutoComplete(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 133
    new-instance v1, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 134
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager$1;

    invoke-direct {p2, p0, v1}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager$1;-><init>(Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->currentWriteTask:Ljava/util/concurrent/Future;

    .line 143
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public onReaderControllerEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 86
    sget-object v0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager$2;->$SwitchMap$com$amazon$kcp$reader$ReaderControllerEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->onBookClose()V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getPublisher()Lcom/amazon/kcp/reader/ReaderController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    .line 89
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->onBookOpen(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public readCache(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/android/autocomplete/AutoCompleteDataManager;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->serializerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    new-instance v1, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-virtual {v1}, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->readObject()Lcom/amazon/android/autocomplete/AutoCompleteDataManager;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
