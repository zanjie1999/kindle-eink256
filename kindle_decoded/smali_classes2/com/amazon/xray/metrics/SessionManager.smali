.class public Lcom/amazon/xray/metrics/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/metrics/SessionManager$SessionLruCache;,
        Lcom/amazon/xray/metrics/SessionManager$Session;
    }
.end annotation


# static fields
.field private static EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService; = null

.field private static final MAX_SESSIONS:I = 0x4

.field private static final SAVED_METRIC_DIR:Ljava/lang/String;

.field private static final SAVED_METRIC_FILENAME_REGEX:Ljava/lang/String; = "^.*_metric\\.tmp$"

.field private static final SAVED_METRIC_FILENAME_SUFFIX:Ljava/lang/String; = "_metric.tmp"

.field private static final SESSION_TIMEOUT_MS:J = 0x1b7740L

.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.metrics.SessionManager"

.field private static final sessions:Lcom/amazon/xray/metrics/SessionManager$SessionLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "xray"

    const-string v2, "metrics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/metrics/SessionManager;->SAVED_METRIC_DIR:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/amazon/xray/metrics/SessionManager$SessionLruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/amazon/xray/metrics/SessionManager$SessionLruCache;-><init>(I)V

    sput-object v0, Lcom/amazon/xray/metrics/SessionManager;->sessions:Lcom/amazon/xray/metrics/SessionManager$SessionLruCache;

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/metrics/SessionManager;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/xray/metrics/SessionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/amazon/xray/metrics/SessionManager;->getSavedMetricFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/io/File;
    .locals 1

    .line 42
    invoke-static {}, Lcom/amazon/xray/metrics/SessionManager;->getSavedMetricDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/amazon/xray/metrics/SessionManager;->deleteSessionFromDisk(Ljava/lang/String;)V

    return-void
.end method

.method public static closeSavedSessions()V
    .locals 2

    .line 184
    sget-object v0, Lcom/amazon/xray/metrics/SessionManager;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/xray/metrics/SessionManager$3;

    invoke-direct {v1}, Lcom/amazon/xray/metrics/SessionManager$3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized closeSession(Lcom/amazon/xray/metrics/SessionManager$Session;)V
    .locals 4

    const-class v0, Lcom/amazon/xray/metrics/SessionManager;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Lcom/amazon/xray/metrics/SessionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/xray/metrics/SessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    sget-object v1, Lcom/amazon/xray/metrics/SessionManager;->sessions:Lcom/amazon/xray/metrics/SessionManager$SessionLruCache;

    invoke-virtual {p0}, Lcom/amazon/xray/metrics/SessionManager$Session;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static deleteSessionFromDisk(Ljava/lang/String;)V
    .locals 2

    .line 164
    sget-object v0, Lcom/amazon/xray/metrics/SessionManager;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/xray/metrics/SessionManager$2;

    invoke-direct {v1, p0}, Lcom/amazon/xray/metrics/SessionManager$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getSavedMetricDirectory()Ljava/io/File;
    .locals 3

    .line 213
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/amazon/xray/metrics/SessionManager;->SAVED_METRIC_DIR:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    sget-object v1, Lcom/amazon/xray/metrics/SessionManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create directory for saved metrics"

    invoke-static {v1, v2}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static getSavedMetricFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 229
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/xray/metrics/SessionManager;->getSavedMetricDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_metric.tmp"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;
    .locals 4

    const-class v0, Lcom/amazon/xray/metrics/SessionManager;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 88
    :try_start_0
    sget-object p0, Lcom/amazon/xray/metrics/SessionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Book is null; cannot create a session unique to the current book. A new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " session will be created but will not be persisted and all events on this metric will be lost."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance p0, Lcom/amazon/xray/metrics/SessionManager$Session;

    const-string v1, ""

    invoke-direct {p0, v1, p1}, Lcom/amazon/xray/metrics/SessionManager$Session;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/xray/metrics/SessionManager$Session;->getMetric()Lcom/amazon/xray/metrics/Metric;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 93
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    sget-object v1, Lcom/amazon/xray/metrics/SessionManager;->sessions:Lcom/amazon/xray/metrics/SessionManager$SessionLruCache;

    invoke-virtual {v1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/metrics/SessionManager$Session;

    if-nez v1, :cond_2

    .line 96
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    sget-object v1, Lcom/amazon/xray/metrics/SessionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    new-instance v1, Lcom/amazon/xray/metrics/SessionManager$Session;

    invoke-direct {v1, p0, p1}, Lcom/amazon/xray/metrics/SessionManager$Session;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object p1, Lcom/amazon/xray/metrics/SessionManager;->sessions:Lcom/amazon/xray/metrics/SessionManager$SessionLruCache;

    invoke-virtual {p1, p0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 103
    sget-object p1, Lcom/amazon/xray/metrics/SessionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Renewing session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/xray/metrics/SessionManager$Session;->renew()V

    .line 107
    :goto_0
    invoke-virtual {v1}, Lcom/amazon/xray/metrics/SessionManager$Session;->getMetric()Lcom/amazon/xray/metrics/Metric;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static initMetrics(Lcom/amazon/xray/metrics/Metric;)V
    .locals 3

    .line 241
    invoke-virtual {p0}, Lcom/amazon/xray/metrics/Metric;->getOperation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XrayReadingSession"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0}, Lcom/amazon/xray/metrics/SessionManager;->initReadingSessionMetrics(Lcom/amazon/xray/metrics/Metric;)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    sget-object v0, Lcom/amazon/xray/metrics/SessionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/xray/metrics/Metric;->getOperation()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has no implemention to initialize metrics"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static initReadingSessionMetrics(Lcom/amazon/xray/metrics/Metric;)V
    .locals 2

    const-string v0, "XrayOpened"

    .line 257
    invoke-virtual {p0, v0}, Lcom/amazon/xray/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "XrayInfoCardsShown"

    .line 258
    invoke-virtual {p0, v0}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v0, "FromDisk"

    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0, v0, v1}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 260
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 264
    sget-object p0, Lcom/amazon/xray/metrics/SessionManager;->TAG:Ljava/lang/String;

    const-string v0, "Could not initialize \'HasSidecar\' flag; book is null"

    invoke-static {p0, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 267
    :cond_0
    invoke-static {v0}, Lcom/amazon/xray/model/util/SidecarFileUtil;->getSidecarFile(Lcom/amazon/kindle/krx/content/IBook;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "HasSidecar"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    return-void
.end method

.method public static declared-synchronized saveSessionToDisk(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/amazon/xray/metrics/SessionManager;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 133
    :try_start_0
    sget-object p0, Lcom/amazon/xray/metrics/SessionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Book is null; cannot save session to disk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit v0

    return-void

    .line 137
    :cond_0
    :try_start_1
    sget-object v1, Lcom/amazon/xray/metrics/SessionManager;->sessions:Lcom/amazon/xray/metrics/SessionManager$SessionLruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/xray/metrics/SessionManager$Session;

    if-nez p0, :cond_1

    .line 140
    sget-object p0, Lcom/amazon/xray/metrics/SessionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session is null; cannot save session to disk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    monitor-exit v0

    return-void

    .line 144
    :cond_1
    :try_start_2
    sget-object p1, Lcom/amazon/xray/metrics/SessionManager;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/xray/metrics/SessionManager$1;

    invoke-direct {v1, p0}, Lcom/amazon/xray/metrics/SessionManager$1;-><init>(Lcom/amazon/xray/metrics/SessionManager$Session;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
