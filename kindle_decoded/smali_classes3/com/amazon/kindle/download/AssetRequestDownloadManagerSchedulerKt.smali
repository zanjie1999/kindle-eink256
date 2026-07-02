.class public final Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;
.super Ljava/lang/Object;
.source "AssetRequestDownloadManagerScheduler.kt"


# static fields
.field private static final KEEP_ALIVE_TIME:J = 0x3cL

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$buildProcessor()Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;->buildProcessor()Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final buildProcessor()Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;
    .locals 9

    const/4 v0, 0x4

    .line 266
    invoke-static {v0}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getAssetRequestDownloadManagerThreadCount(I)I

    move-result v3

    .line 267
    new-instance v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;

    new-instance v8, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    .line 270
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 271
    new-instance v7, Lcom/amazon/kindle/util/ThreadFactory;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v2, Lcom/amazon/kindle/util/Named;

    const-string v4, "AssetRequestDownloadManager-Executor"

    invoke-direct {v2, v4}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-direct {v7, v1}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    const-wide/16 v4, 0x3c

    move-object v1, v8

    move v2, v3

    .line 267
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v8}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;-><init>(Lcom/amazon/kindle/util/PausableThreadPoolExecutor;)V

    return-object v0
.end method
