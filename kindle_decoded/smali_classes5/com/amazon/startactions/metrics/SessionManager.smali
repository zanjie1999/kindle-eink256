.class public Lcom/amazon/startactions/metrics/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/metrics/SessionManager$Session;
    }
.end annotation


# static fields
.field private static final EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

.field private static final MAX_SESSIONS:I = 0x3

.field private static final SAVED_METRIC_DIR:Ljava/lang/String;

.field private static final SAVED_METRIC_FILENAME_REGEX:Ljava/lang/String; = "^.*_metric\\.tmp$"

.field private static final SAVED_METRIC_FILENAME_SUFFIX:Ljava/lang/String; = "_metric.tmp"

.field private static final SESSION_METRIC_NAME:Ljava/lang/String; = "StartActionsSession"

.field private static final SESSION_TIMEOUT:J = 0x1b7740L

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.metrics.SessionManager"

.field private static context:Landroid/content/Context;

.field private static final sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/startactions/metrics/SessionManager$Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "startactions"

    const-string v2, "metrics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/metrics/SessionManager;->SAVED_METRIC_DIR:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/metrics/SessionManager;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/amazon/startactions/metrics/SessionManager;->sessions:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/startactions/metrics/SessionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/amazon/startactions/metrics/SessionManager;->getSavedMetricFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Ljava/io/File;
    .locals 1

    .line 32
    invoke-static {}, Lcom/amazon/startactions/metrics/SessionManager;->getSavedMetricDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static closeSavedSessions()V
    .locals 2

    .line 212
    sget-object v0, Lcom/amazon/startactions/metrics/SessionManager;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/startactions/metrics/SessionManager$3;

    invoke-direct {v1}, Lcom/amazon/startactions/metrics/SessionManager$3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized closeSession(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/amazon/startactions/metrics/SessionManager;

    monitor-enter v0

    .line 147
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lcom/amazon/startactions/metrics/SessionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    sget-object v1, Lcom/amazon/startactions/metrics/SessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/metrics/SessionManager$Session;

    if-eqz p0, :cond_1

    .line 153
    invoke-static {p0}, Lcom/amazon/startactions/metrics/SessionManager$Session;->access$000(Lcom/amazon/startactions/metrics/SessionManager$Session;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/startactions/metrics/SessionManager;->deleteSessionFromDisk(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/amazon/startactions/metrics/SessionManager$Session;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized containsSessionMetric(Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/amazon/startactions/metrics/SessionManager;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/amazon/startactions/metrics/SessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static deleteSessionFromDisk(Ljava/lang/String;)V
    .locals 2

    .line 191
    sget-object v0, Lcom/amazon/startactions/metrics/SessionManager;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/startactions/metrics/SessionManager$2;

    invoke-direct {v1, p0}, Lcom/amazon/startactions/metrics/SessionManager$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static declared-synchronized getOldestSession()Lcom/amazon/startactions/metrics/SessionManager$Session;
    .locals 9

    const-class v0, Lcom/amazon/startactions/metrics/SessionManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 130
    :try_start_0
    sget-object v2, Lcom/amazon/startactions/metrics/SessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    sget-object v4, Lcom/amazon/startactions/metrics/SessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/startactions/metrics/SessionManager$Session;

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v3}, Lcom/amazon/startactions/metrics/SessionManager$Session;->getLastUpdated()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/amazon/startactions/metrics/SessionManager$Session;->getLastUpdated()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    :cond_1
    move-object v1, v3

    goto :goto_0

    .line 137
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getSavedMetricDirectory()Ljava/io/File;
    .locals 3

    .line 246
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amazon/startactions/metrics/SessionManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/amazon/startactions/metrics/SessionManager;->SAVED_METRIC_DIR:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private static getSavedMetricFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 259
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/startactions/metrics/SessionManager;->getSavedMetricDirectory()Ljava/io/File;

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

.method public static declared-synchronized getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;
    .locals 5

    const-class v0, Lcom/amazon/startactions/metrics/SessionManager;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/amazon/startactions/metrics/SessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/startactions/metrics/SessionManager$Session;

    if-nez v1, :cond_2

    .line 89
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lcom/amazon/startactions/metrics/SessionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    new-instance v1, Lcom/amazon/startactions/metrics/SessionManager$Session;

    invoke-direct {v1, p0}, Lcom/amazon/startactions/metrics/SessionManager$Session;-><init>(Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/amazon/startactions/metrics/SessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :goto_0
    sget-object p0, Lcom/amazon/startactions/metrics/SessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    const/4 v2, 0x3

    if-le p0, v2, :cond_4

    .line 97
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 98
    sget-object p0, Lcom/amazon/startactions/metrics/SessionManager;->TAG:Ljava/lang/String;

    const-string v2, "Too many sessions, closing oldest"

    invoke-static {p0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-static {}, Lcom/amazon/startactions/metrics/SessionManager;->getOldestSession()Lcom/amazon/startactions/metrics/SessionManager$Session;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/startactions/metrics/SessionManager$Session;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/startactions/metrics/SessionManager;->closeSession(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    sget-object v2, Lcom/amazon/startactions/metrics/SessionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Renewing session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/startactions/metrics/SessionManager$Session;->renew()V

    .line 110
    :cond_4
    invoke-virtual {v1}, Lcom/amazon/startactions/metrics/SessionManager$Session;->getMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized saveSessionToDisk(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/amazon/startactions/metrics/SessionManager;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lcom/amazon/startactions/metrics/SessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/startactions/metrics/SessionManager$Session;

    if-nez v1, :cond_0

    .line 168
    sget-object v1, Lcom/amazon/startactions/metrics/SessionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session is null; cannot save session to disk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit v0

    return-void

    .line 172
    :cond_0
    :try_start_1
    sget-object p0, Lcom/amazon/startactions/metrics/SessionManager;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/amazon/startactions/metrics/SessionManager$1;

    invoke-direct {v2, v1}, Lcom/amazon/startactions/metrics/SessionManager$1;-><init>(Lcom/amazon/startactions/metrics/SessionManager$Session;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 74
    sput-object p0, Lcom/amazon/startactions/metrics/SessionManager;->context:Landroid/content/Context;

    return-void
.end method
