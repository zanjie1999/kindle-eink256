.class public final Lcom/amazon/whispersync/dcp/framework/MagicExecutors;
.super Ljava/lang/Object;
.source "MagicExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFixedThreadPool(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 68
    new-instance v8, Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;)V

    return-object v8
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 81
    new-instance v8, Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v8

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;)V

    return-object v8
.end method
