.class public Lcom/amazon/whispersync/dcp/ota/OTAController;
.super Ljava/lang/Object;
.source "OTAController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;,
        Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;,
        Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;,
        Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;,
        Lcom/amazon/whispersync/dcp/ota/OTAController$ServiceNotClosedException;
    }
.end annotation


# static fields
.field private static final BIND_TIMEOUT_SECONDS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field private static final DEFAULT_BIND_TIMEOUT_SECONDS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.OTAController"


# instance fields
.field private mBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

.field private mCanReadSettings:Z

.field private mContext:Landroid/content/Context;

.field private mDownloadObserverBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

.field private mDownloadObserverService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

.field private final mHandler:Landroid/os/Handler;

.field private mOpenedTrace:Lcom/amazon/whispersync/dcp/ota/OTAController$ServiceNotClosedException;

.field private final mRegisteredSideloadListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;",
            "Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredUpdateStatusListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

.field private final mStatusListenersLock:[Ljava/lang/Object;

.field private mThreadQueue:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 257
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const-string v1, "com.amazon.whispersync.dcp.ota.bindtimeoutseconds"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAController;->BIND_TIMEOUT_SECONDS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredUpdateStatusListeners:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 262
    iput-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mStatusListenersLock:[Ljava/lang/Object;

    .line 263
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredSideloadListeners:Ljava/util/Map;

    .line 266
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mHandler:Landroid/os/Handler;

    .line 273
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mThreadQueue:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x1

    .line 274
    iput-boolean v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mCanReadSettings:Z

    .line 283
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mResolver:Landroid/content/ContentResolver;

    .line 285
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.amazon.whispersync.dcp.ota.action.CONTROLLER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2, v3, v1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    .line 289
    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->setContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 293
    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAController;->TAG:Ljava/lang/String;

    const-string v3, "DCP clients using OTAController must request the READ_SETTINGS permission in their manifest"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mCanReadSettings:Z

    .line 297
    :goto_0
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.amazon.whispersync.dcp.ota.action.DOWNLOAD_OBSERVER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mDownloadObserverBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/ota/OTAController;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/ota/OTAController;Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Landroid/database/Cursor;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAController;->queryStatusFields(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/dcp/ota/OTAController;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mThreadQueue:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/dcp/ota/OTAController;Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/ota/OTAController;->constructStatusAfterQuery(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;

    move-result-object p0

    return-object p0
.end method

.method private bindToDownloadObserverService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mDownloadObserverBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    const-wide/16 v1, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->bind(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mDownloadObserverService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    .line 617
    const-class v1, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    const-string v2, "Failed to bind to the OTA service to register for download progress updates"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 626
    new-instance v1, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 622
    new-instance v1, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkPermission(Ljava/lang/String;)I
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private constructStatusAfterQuery(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;
    .locals 9

    .line 936
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->None:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 937
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 938
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move-object v6, v0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "State"

    .line 940
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 941
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/UpdateState;->fromValue(I)Lcom/amazon/whispersync/dcp/ota/UpdateState;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "FailureReason"

    .line 942
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 944
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->fromValue(I)Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    move-result-object v0

    .line 945
    sget-object v3, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->None:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq v0, v3, :cond_0

    move-object v6, v0

    :cond_0
    const-string v0, "DownloadProgress"

    .line 949
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    add-float/2addr v2, v0

    .line 938
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 952
    :cond_1
    invoke-static {v1}, Lcom/amazon/whispersync/dcp/ota/UpdateState;->fromCollection(Ljava/util/Collection;)Lcom/amazon/whispersync/dcp/ota/UpdateState;

    move-result-object v5

    .line 955
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    int-to-float p1, p1

    div-float v7, v2, p1

    .line 956
    new-instance p1, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;-><init>(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;Lcom/amazon/whispersync/dcp/ota/UpdateState;Lcom/amazon/whispersync/dcp/ota/OTAFailure;FLcom/amazon/whispersync/dcp/ota/OTAController$1;)V

    return-object p1
.end method

.method private varargs createUpdateTypeList([Lcom/amazon/whispersync/dcp/ota/UpdateType;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/amazon/whispersync/dcp/ota/UpdateType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateType;",
            ">;"
        }
    .end annotation

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 461
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 463
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/UpdateType;->App:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/UpdateType;->OS:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/dcp/ota/UpdateType;

    .line 469
    const-class v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Null Update Type is not permitted"

    invoke-static {v1, v2, v5, v4}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    sget-object v2, Lcom/amazon/whispersync/dcp/ota/UpdateType;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    const-class v4, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const-string v3, "Invalid Update Type: %s"

    invoke-static {v2, v1, v4, v3, v5}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private ensureHasPermission(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 992
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAController;->checkPermission(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing required permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private ensureNotClosed()V
    .locals 4

    .line 1012
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->isClosed()Z

    move-result v0

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot reuse this object once it\'s been closed"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private ensureNotRunningOnMainThread()V
    .locals 4

    .line 1005
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/ThreadHelpers;->isRunningOnMainThread()Z

    move-result v0

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot call this method on the main thread."

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized ensureServiceConnected()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "com.amazon.whispersync.dcp.ota.permission.CONTROLLER"

    .line 961
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureHasPermission(Ljava/lang/String;)V

    .line 962
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotClosed()V

    .line 964
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mOpenedTrace:Lcom/amazon/whispersync/dcp/ota/OTAController$ServiceNotClosedException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 966
    monitor-exit p0

    return-void

    .line 971
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mCanReadSettings:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAController;->BIND_TIMEOUT_SECONDS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    .line 972
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->bind(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    .line 973
    const-class v1, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    const-string v2, "Failed to bind to the OTA service"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAController$ServiceNotClosedException;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/ota/OTAController$ServiceNotClosedException;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mOpenedTrace:Lcom/amazon/whispersync/dcp/ota/OTAController$ServiceNotClosedException;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 988
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 986
    :try_start_2
    new-instance v1, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 982
    new-instance v1, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private queryStatusFields(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Landroid/database/Cursor;
    .locals 7

    .line 921
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/amazon/whispersync/dcp/provider/PendingUpdatesContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "DownloadProgress"

    const-string v3, "State"

    const-string v4, "FailureReason"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "ManifestID = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private throwExceptionOnError(Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTASideloadException;
        }
    .end annotation

    .line 848
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAController$1;->$SwitchMap$com$amazon$dcp$ota$OTASideloadException$ErrorType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 863
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid Error Type: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :pswitch_0
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadExceptionUnrecoverable;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTASideloadExceptionUnrecoverable;-><init>(Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;)V

    throw v0

    .line 855
    :pswitch_1
    new-instance p1, Lcom/amazon/whispersync/dcp/ota/OTASideloadExceptionNotEnoughDiskSpace;

    invoke-direct {p1}, Lcom/amazon/whispersync/dcp/ota/OTASideloadExceptionNotEnoughDiskSpace;-><init>()V

    throw p1

    .line 853
    :pswitch_2
    new-instance p1, Lcom/amazon/whispersync/dcp/ota/OTASideloadExceptionLowBatt;

    invoke-direct {p1}, Lcom/amazon/whispersync/dcp/ota/OTASideloadExceptionLowBatt;-><init>()V

    throw p1

    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 712
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 713
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->cancelUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 721
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs checkForUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;[Lcom/amazon/whispersync/dcp/ota/UpdateType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;",
            "[",
            "Lcom/amazon/whispersync/dcp/ota/UpdateType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateManifest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 335
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Null reason is not permitted"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    const-class v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v1, "Invalid Reason: %s"

    invoke-static {v0, p1, v2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/ota/OTAController;->createUpdateTypeList([Lcom/amazon/whispersync/dcp/ota/UpdateType;)Ljava/util/List;

    move-result-object p2

    .line 341
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 342
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->checkForUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 350
    new-instance p2, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public close()V
    .locals 4

    .line 869
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mThreadQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 876
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mStatusListenersLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 879
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredUpdateStatusListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 881
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;

    .line 883
    invoke-virtual {v3}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->shutdown()V

    goto :goto_0

    .line 887
    :cond_2
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredUpdateStatusListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 888
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredSideloadListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 892
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->unbind()V

    .line 893
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mDownloadObserverBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->unbind()V

    const/4 v0, 0x0

    .line 894
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mOpenedTrace:Lcom/amazon/whispersync/dcp/ota/OTAController$ServiceNotClosedException;

    return-void

    :catchall_0
    move-exception v1

    .line 888
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public downloadManifest(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 532
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 533
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->downloadManifest(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 540
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ensureSideloadCanBeInstalled(Lcom/amazon/whispersync/dcp/ota/Sideload;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;,
            Lcom/amazon/whispersync/dcp/ota/OTASideloadException;
        }
    .end annotation

    .line 780
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 781
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 783
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "sideload may not be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->ensureSideloadCanBeInstalled(Lcom/amazon/whispersync/dcp/ota/Sideload;)I

    move-result p1

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->fromValue(I)Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAController;->throwExceptionOnError(Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 791
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected finalize()V
    .locals 3

    .line 306
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 308
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mOpenedTrace:Lcom/amazon/whispersync/dcp/ota/OTAController$ServiceNotClosedException;

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAController;->TAG:Ljava/lang/String;

    const-string v1, "Releasing service connection in finalizer. Please ensure that you explicitly call close() on your OTAController"

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mOpenedTrace:Lcom/amazon/whispersync/dcp/ota/OTAController$ServiceNotClosedException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 317
    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAController;->TAG:Ljava/lang/String;

    const-string v2, "Finalizer threw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public varargs getActiveUpdates([Lcom/amazon/whispersync/dcp/ota/UpdateType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/amazon/whispersync/dcp/ota/UpdateType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateManifest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 444
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAController;->createUpdateTypeList([Lcom/amazon/whispersync/dcp/ota/UpdateType;)Ljava/util/List;

    move-result-object p1

    .line 446
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 447
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getActiveUpdates(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 454
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getLastCheckDate()Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 365
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 366
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getLastCheckTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 376
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 380
    new-instance v1, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method getLastInstallationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 417
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 418
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getLastInstallationTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 428
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 432
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getLastOSInstallationDate()Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 395
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 396
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getLastOSInstallationTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 410
    new-instance v1, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNextCheckTimeInMillis()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 480
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 481
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getNextCheckTimeInMillis()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 489
    new-instance v1, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReasonsNotToInstallUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/ota/UpdateManifest;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 666
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 668
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "A null manifest is not permitted"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getReasonsNotToInstallUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 676
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getUpdateStatus(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;
    .locals 1

    .line 908
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAController;->queryStatusFields(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Landroid/database/Cursor;

    move-result-object v0

    .line 911
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAController;->constructStatusAfterQuery(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public installSideload(Lcom/amazon/whispersync/dcp/ota/Sideload;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;,
            Lcom/amazon/whispersync/dcp/ota/OTASideloadException;
        }
    .end annotation

    .line 808
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 809
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 811
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "sideload may not be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->installSideload(Lcom/amazon/whispersync/dcp/ota/Sideload;)I

    move-result p1

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->fromValue(I)Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAController;->throwExceptionOnError(Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 819
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mThreadQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public pauseWhenOnMeteredConnection(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 830
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 831
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 833
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "manifest may not be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->pauseWhenOnMeteredConnection(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 841
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method processManifest(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Lcom/amazon/whispersync/dcp/ota/UpdateManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 514
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->processManifest(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 521
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method varargs processUpdates([Lcom/amazon/whispersync/dcp/ota/Update;)Lcom/amazon/whispersync/dcp/ota/UpdateManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 505
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;-><init>()V

    .line 506
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;->addUpdates([Lcom/amazon/whispersync/dcp/ota/Update;)V

    .line 507
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->processManifest(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    move-result-object p1

    return-object p1
.end method

.method public registerSideloadListener(Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 733
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 735
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "listener may not be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    :try_start_0
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;-><init>(Lcom/amazon/whispersync/dcp/ota/OTAController;Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;)V

    .line 740
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v1, v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->registerSideloadCallback(Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;)V

    .line 741
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredSideloadListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 745
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public registerUpdateListener(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    const-string v0, "com.amazon.whispersync.dcp.ota.permission.QUERY_PENDING_UPDATES"

    .line 576
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureHasPermission(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotRunningOnMainThread()V

    .line 578
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotClosed()V

    .line 580
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "A null manifest is not permitted"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;->isPersisted()Z

    move-result v0

    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Manifest must be persisted to the database before registering a status listener"

    invoke-static {v0, v2, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "A null listener is not permitted"

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mStatusListenersLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredUpdateStatusListeners:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredUpdateStatusListeners:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredUpdateStatusListeners:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 599
    new-instance v3, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;

    invoke-direct {v3, p0, p1, p2}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;-><init>(Lcom/amazon/whispersync/dcp/ota/OTAController;Lcom/amazon/whispersync/dcp/ota/UpdateManifest;Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredUpdateStatusListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 606
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->bindToDownloadObserverService()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 600
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerUpdateStatusListener(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;)V
    .locals 1

    .line 557
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dcp/ota/OTAController;->registerUpdateListener(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 561
    sget-object p2, Lcom/amazon/whispersync/dcp/ota/OTAController;->TAG:Ljava/lang/String;

    const-string v0, "Exception thrown in deprecated method registerUpdateStatusListener."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    sget-object p2, Lcom/amazon/whispersync/dcp/ota/OTAController;->TAG:Ljava/lang/String;

    const-string v0, "Use registerUpdateListener instead to catch this exception"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startInstallUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 688
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureServiceConnected()V

    .line 690
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "A null manifest is not permitted"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mService:Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->startInstallUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 700
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public unregisterSideloadListener(Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/ota/OTAUnavailableException;
        }
    .end annotation

    .line 755
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotClosed()V

    .line 757
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredSideloadListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;

    .line 758
    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Attempted to unregister a listener that was never registered"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;->access$700(Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadCallback;)V

    .line 763
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredSideloadListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterStatusListener(Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;)V
    .locals 4

    .line 637
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/ota/OTAController;->ensureNotClosed()V

    .line 639
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredUpdateStatusListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 641
    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Attempted to unregister a listener that was never registered"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mStatusListenersLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 648
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;

    .line 650
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusContentObserver;->shutdown()V

    goto :goto_0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredUpdateStatusListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mRegisteredUpdateStatusListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    .line 655
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 658
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController;->mDownloadObserverBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->unbind()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 655
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
