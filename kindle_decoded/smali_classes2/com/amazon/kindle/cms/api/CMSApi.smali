.class public final Lcom/amazon/kindle/cms/api/CMSApi;
.super Ljava/lang/Object;
.source "CMSApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;,
        Lcom/amazon/kindle/cms/api/CMSApi$CMSServiceConnection;,
        Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;,
        Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:J = 0x1388L

.field public static final NEVER_ACCESSED:Ljava/util/Date;

.field private static final TAG:Ljava/lang/String; = "CmsApi"

.field private static volatile s_instance:Lcom/amazon/kindle/cms/api/CMSApi;


# instance fields
.field private final m_asyncExecutor:Ljava/util/concurrent/ExecutorService;

.field private final m_callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final m_cmsApiDbErrorHandler:Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;

.field private final m_context:Landroid/content/Context;

.field private final m_dbHelper:Lcom/amazon/kindle/cms/api/DBOpenHelper;

.field private volatile m_dbInit:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "m_dbInitLock"
    .end annotation
.end field

.field private final m_dbInitLock:Ljava/lang/Object;

.field private volatile m_futureDb:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private final m_handler:Landroid/os/Handler;

.field private final m_sourceSyncMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/SyncState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/amazon/kindle/cms/api/CMSApi;->NEVER_ACCESSED:Ljava/util/Date;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_context:Landroid/content/Context;

    .line 293
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/amazon/kindle/cms/api/CMSApi$1;

    invoke-direct {v7, p0}, Lcom/amazon/kindle/cms/api/CMSApi$1;-><init>(Lcom/amazon/kindle/cms/api/CMSApi;)V

    const/4 v1, 0x1

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_asyncExecutor:Ljava/util/concurrent/ExecutorService;

    .line 304
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_handler:Landroid/os/Handler;

    .line 305
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_callbackMap:Ljava/util/Map;

    .line 306
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_sourceSyncMap:Ljava/util/concurrent/ConcurrentMap;

    .line 307
    new-instance p1, Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;-><init>(Lcom/amazon/kindle/cms/api/CMSApi;Lcom/amazon/kindle/cms/api/CMSApi$1;)V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_cmsApiDbErrorHandler:Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;

    .line 308
    new-instance p1, Lcom/amazon/kindle/cms/api/DBOpenHelper;

    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/cms/api/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_dbHelper:Lcom/amazon/kindle/cms/api/DBOpenHelper;

    .line 309
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_dbInitLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 310
    iput-boolean p1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_dbInit:Z

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/cms/api/CMSApi;)Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_cmsApiDbErrorHandler:Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/cms/api/CMSApi;)Lcom/amazon/kindle/cms/api/DBOpenHelper;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_dbHelper:Lcom/amazon/kindle/cms/api/DBOpenHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/cms/api/CMSApi;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSApi;->cleanUpDatabase()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/cms/api/CMSApi;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/cms/api/CMSApi;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_handler:Landroid/os/Handler;

    return-object p0
.end method

.method private cleanUpDatabase()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_dbInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_dbHelper:Lcom/amazon/kindle/cms/api/DBOpenHelper;

    invoke-virtual {v1}, Lcom/amazon/kindle/cms/api/DBOpenHelper;->deleteDatabase()V

    .line 340
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_sourceSyncMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    const/4 v1, 0x0

    .line 341
    iput-object v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_futureDb:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    .line 342
    iput-boolean v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_dbInit:Z

    .line 343
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static ensureSourceIsRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 284
    invoke-static {p0}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/api/CMSApi;->getCallback(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    .line 286
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback not registered for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initializeDatabase()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_dbInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_dbInit:Z

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_sourceSyncMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 320
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_asyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/amazon/kindle/cms/api/CMSApi$2;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/cms/api/CMSApi$2;-><init>(Lcom/amazon/kindle/cms/api/CMSApi;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_futureDb:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    .line 329
    iput-boolean v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_dbInit:Z

    .line 331
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;
    .locals 2

    .line 117
    sget-object v0, Lcom/amazon/kindle/cms/api/CMSApi;->s_instance:Lcom/amazon/kindle/cms/api/CMSApi;

    if-nez v0, :cond_1

    .line 119
    const-class v0, Lcom/amazon/kindle/cms/api/CMSApi;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/cms/api/CMSApi;->s_instance:Lcom/amazon/kindle/cms/api/CMSApi;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/cms/api/CMSApi;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kindle/cms/api/CMSApi;->s_instance:Lcom/amazon/kindle/cms/api/CMSApi;

    .line 123
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 125
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kindle/cms/api/CMSApi;->s_instance:Lcom/amazon/kindle/cms/api/CMSApi;

    return-object p0
.end method


# virtual methods
.method public connect(Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.amazon.kindle.cms.CMS_CLIENT_CONNECT"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    sget-object v1, Lcom/amazon/kindle/cms/ipc/Constants;->CMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 145
    new-instance v1, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;-><init>(Lcom/amazon/kindle/cms/api/CMSApi;Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;)V

    const/4 p1, 0x1

    .line 148
    :try_start_0
    invoke-virtual {v1, v0, p1}, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->bind(Landroid/content/Intent;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->safeUnbind()V

    .line 166
    new-instance p1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    throw p1

    .line 158
    :catchall_0
    invoke-virtual {v1}, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->safeUnbind()V

    .line 166
    new-instance p1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    throw p1

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {v1}, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->safeUnbind()V

    .line 162
    new-instance v0, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v1, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw v0
.end method

.method getAllSources()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_callbackMap:Ljava/util/Map;

    monitor-enter v0

    .line 226
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_callbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCallback(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback;
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_callbackMap:Ljava/util/Map;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_callbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/cms/api/Callback;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 246
    iget-boolean v0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_dbInit:Z

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSApi;->initializeDatabase()V

    .line 257
    :catch_0
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_futureDb:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 267
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string/jumbo v2, "unable to obtain DB"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getSyncState(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/SyncState;
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_sourceSyncMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/cms/api/SyncState;

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Lcom/amazon/kindle/cms/api/SyncState;

    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/CMSApi;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/kindle/cms/api/SyncState;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)V

    .line 237
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_sourceSyncMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/cms/api/SyncState;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method onDatabaseCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_cmsApiDbErrorHandler:Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public registerCallback(Landroid/net/Uri;Lcom/amazon/kindle/cms/api/Callback;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_callbackMap:Ljava/util/Map;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSApi;->m_callbackMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
