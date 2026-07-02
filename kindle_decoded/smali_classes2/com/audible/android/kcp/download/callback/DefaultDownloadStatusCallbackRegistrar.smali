.class public final Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;
.super Ljava/lang/Object;
.source "DefaultDownloadStatusCallbackRegistrar.java"

# interfaces
.implements Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private final downloadCallbacksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/util/Set<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final downloadObserversMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/mobile/domain/Asin;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final intentFilter:Landroid/content/IntentFilter;

.field private final localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/audible/mobile/preferences/PreferenceStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/audible/mobile/preferences/PreferenceStore;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/audible/mobile/preferences/PreferenceStore;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
            ">;",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->context:Landroid/content/Context;

    .line 56
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->downloadCallbacksMap:Ljava/util/Map;

    .line 57
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->downloadObserversMap:Ljava/util/Map;

    .line 59
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v0, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;->AUDIOBOOK_DOWNLOAD_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->intentFilter:Landroid/content/IntentFilter;

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 62
    new-instance p1, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;

    invoke-direct {p1, p3}, Lcom/audible/android/kcp/library/SharePreferencesNewAudiobookRegistrar;-><init>(Lcom/audible/mobile/preferences/PreferenceStore;)V

    .line 63
    new-instance p2, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;

    iget-object p3, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->downloadCallbacksMap:Ljava/util/Map;

    invoke-direct {p2, p3, p1}, Lcom/audible/android/kcp/download/receiver/AudiobookDownloadFinishedBroadcastReceiver;-><init>(Ljava/util/Map;Lcom/audible/android/kcp/library/NewAudiobookRegistrar;)V

    iput-object p2, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p4, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method

.method private areDownloadsRegistered()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->downloadObserversMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 112
    invoke-direct {p0}, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->areDownloadsRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Broadcast Receiver Registered!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method private registerContentResolver(JLcom/audible/mobile/domain/Asin;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/util/Set<",
            "Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->downloadObserversMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 125
    new-instance p2, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;

    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1, p4}, Lcom/audible/android/kcp/download/callback/DownloadProgressRunnable;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V

    .line 126
    new-instance p4, Lcom/audible/android/kcp/observer/RunnableObserver;

    invoke-direct {p4, p2}, Lcom/audible/android/kcp/observer/RunnableObserver;-><init>(Ljava/lang/Runnable;)V

    .line 128
    iget-object p2, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->downloadObserversMap:Ljava/util/Map;

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p2, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .line 135
    invoke-direct {p0}, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->areDownloadsRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :try_start_0
    sget-object v0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Broadcast Receiver Unregistered!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    sget-object v0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Broadcast Receiver Already Unregistered!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized registerDownloadStatusCallback(JLcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V
    .locals 2

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->registerBroadcastReceiver()V

    .line 72
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->downloadCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 76
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->downloadCallbacksMap:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->registerContentResolver(JLcom/audible/mobile/domain/Asin;Ljava/util/Set;)V

    .line 82
    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->downloadCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 92
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 99
    iget-object p2, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->downloadObserversMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/database/ContentObserver;

    .line 100
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->downloadObserversMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 103
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;->unregisterBroadcastReceiver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
