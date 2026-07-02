.class public Lcom/amazon/kindle/dcaps/DCAPSClient;
.super Ljava/lang/Object;
.source "DCAPSClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "dcaps.DCAPSClient"

.field private static client:Lcom/amazon/kindle/dcaps/DCAPSClient;


# instance fields
.field private final mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/dcaps/IDCAPSIntegration;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 53
    invoke-static {p2}, Lcom/amazon/kindle/dcaps/common/Application;->initialize(Landroid/content/Context;)V

    .line 54
    invoke-static {p1}, Lcom/amazon/kindle/dcaps/common/Metrics;->initialize(Lcom/amazon/kindle/dcaps/IDCAPSIntegration;)V

    .line 55
    invoke-static {p1}, Lcom/amazon/kindle/dcaps/common/HttpClient;->initialize(Lcom/amazon/kindle/dcaps/IDCAPSIntegration;)V

    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/dcaps/DCAPSClient;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized getInstance(Lcom/amazon/kindle/dcaps/IDCAPSIntegration;Landroid/content/Context;)Lcom/amazon/kindle/dcaps/DCAPSClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-class v0, Lcom/amazon/kindle/dcaps/DCAPSClient;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/dcaps/DCAPSClient;->client:Lcom/amazon/kindle/dcaps/DCAPSClient;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/amazon/kindle/dcaps/DCAPSClient;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/dcaps/DCAPSClient;-><init>(Lcom/amazon/kindle/dcaps/IDCAPSIntegration;Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kindle/dcaps/DCAPSClient;->client:Lcom/amazon/kindle/dcaps/DCAPSClient;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    :try_start_1
    sget-object p0, Lcom/amazon/kindle/dcaps/DCAPSClient;->client:Lcom/amazon/kindle/dcaps/DCAPSClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "dcaps.DCAPSClient"

    const-string v1, "Cannot instantiate DCAPS Client with NULL Context"

    .line 78
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized initialize()V
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/DCAPSClient;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dcaps.DCAPSClient"

    const-string v1, "DCAPS Client has already been initialized."

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/DCAPSClient;->registerCapabilities()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCapabilities()V
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    new-instance v0, Lcom/amazon/kindle/dcaps/DCAPSClient$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/dcaps/DCAPSClient$1;-><init>(Lcom/amazon/kindle/dcaps/DCAPSClient;)V

    invoke-static {v0}, Lcom/amazon/kindle/dcaps/common/ThreadUtils;->runOffMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
