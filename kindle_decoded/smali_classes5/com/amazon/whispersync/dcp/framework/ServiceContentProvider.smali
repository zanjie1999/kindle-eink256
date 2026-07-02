.class public abstract Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;
.super Landroid/content/ContentProvider;
.source "ServiceContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$RefcountingCursor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_BIND_TIMEOUT:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field private static final TAG:Ljava/lang/String; = "ServiceContentProvider"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfo:Landroid/content/pm/ProviderInfo;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mRefCount:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

.field private mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

.field private mServiceBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

.field private final mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mServiceObtained:Ljava/util/concurrent/locks/Condition;

.field private final mThreadQueue:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const-class v0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    .line 87
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const/16 v1, 0x1e

    const-string v2, "ServiceContentProvider.default_bind_timeout"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->DEFAULT_BIND_TIMEOUT:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mServiceObtained:Ljava/util/concurrent/locks/Condition;

    .line 101
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mThreadQueue:Ljava/util/concurrent/Executor;

    .line 105
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mServiceClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->incRef()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->connectToService()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mServiceObtained:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->waitForServiceAndIncRef()V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)Lcom/amazon/whispersync/dcp/framework/IContentProvider;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    return-object p0
.end method

.method private connectToService()V
    .locals 6

    const-string v0, "ServiceContentProvider"

    .line 128
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mServiceClass:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 130
    new-instance v2, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    invoke-direct {v2}, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;-><init>()V

    .line 134
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->increment()I

    .line 135
    sget-object v3, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->DEFAULT_BIND_TIMEOUT:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v3}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->bind(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    iput-object v3, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    const/4 v3, 0x2

    .line 136
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 141
    :cond_0
    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mServiceBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    .line 142
    iput-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mRefCount:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_1

    .line 159
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->onCreate()Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    :cond_1
    return-void

    :catch_2
    move-exception v1

    const-string v2, "Timeout occurred trying to bind to service."

    .line 151
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception v1

    const-string v2, "Interrupt received trying to bind to service."

    .line 146
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private decRef()V
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mRefCount:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->decrement()I

    move-result v0

    const-string v1, "ServiceContentProvider"

    const/4 v2, 0x2

    .line 202
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Reference count decremented to %d at callstack:"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    :cond_0
    if-nez v0, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->disconnectFromService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 215
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 220
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private disconnectFromService()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mServiceBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->unbind()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mServiceBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    .line 231
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    .line 232
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mRefCount:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private incRef()V
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mRefCount:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->increment()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "ServiceContentProvider"

    .line 185
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "Refcount incremented to %d at callstack:"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    :cond_0
    if-eq v0, v2, :cond_1

    return-void

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private waitForServiceAndIncRef()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 113
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mServiceObtained:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->incRef()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 498
    :try_start_0
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mContext:Landroid/content/Context;

    .line 499
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mInfo:Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 506
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    :catchall_0
    move-exception p1

    .line 503
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    .line 390
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->waitForServiceAndIncRef()V

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 397
    :catch_0
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return p1

    :goto_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    throw p1
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 408
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->waitForServiceAndIncRef()V

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    throw p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 362
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->waitForServiceAndIncRef()V

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    throw p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 376
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->waitForServiceAndIncRef()V

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    throw p1
.end method

.method protected final isTemporary()Z
    .locals 1

    .line 474
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->waitForServiceAndIncRef()V

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->isTemporary()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 481
    :catch_0
    :try_start_1
    invoke-super {p0}, Landroid/content/ContentProvider;->isTemporary()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return v0

    :goto_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    throw v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 285
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 286
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mThreadQueue:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$3;-><init>(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate()Z
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mThreadQueue:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$1;-><init>(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onLowMemory()V
    .locals 2

    .line 311
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 312
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mThreadQueue:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$4;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$4;-><init>(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 455
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->waitForServiceAndIncRef()V

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 463
    :catch_0
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return-object p1

    :goto_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    throw p1
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 436
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->waitForServiceAndIncRef()V

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 444
    :catch_0
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return-object p1

    :goto_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    throw p1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 341
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->waitForServiceAndIncRef()V

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/CrossProcessCursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    new-instance p2, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$RefcountingCursor;

    invoke-direct {p2, p0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$RefcountingCursor;-><init>(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;Landroid/database/CrossProcessCursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p2

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    throw p1
.end method

.method public shutdown()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mThreadQueue:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$2;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$2;-><init>(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 422
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->waitForServiceAndIncRef()V

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->mService:Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->decRef()V

    throw p1
.end method
