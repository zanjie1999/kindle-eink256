.class public Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadRunner"
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ThreadRunner"


# instance fields
.field private final executors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;",
            "Ljava/util/HashMap<",
            "Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;",
            "Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 135
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 136
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;-><init>()V

    .line 137
    new-instance v1, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;

    invoke-direct {v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;-><init>()V

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->withExecutor(Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 138
    new-instance v1, Lcom/amazon/device/ads/ThreadUtils$BackgroundThreadRunner;

    invoke-direct {v1, v0}, Lcom/amazon/device/ads/ThreadUtils$BackgroundThreadRunner;-><init>(Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;)V

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->withExecutor(Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 139
    new-instance v1, Lcom/amazon/device/ads/ThreadUtils$MainThreadScheduler;

    invoke-direct {v1}, Lcom/amazon/device/ads/ThreadUtils$MainThreadScheduler;-><init>()V

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->withExecutor(Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 140
    new-instance v1, Lcom/amazon/device/ads/ThreadUtils$MainThreadRunner;

    invoke-direct {v1, v0}, Lcom/amazon/device/ads/ThreadUtils$MainThreadRunner;-><init>(Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;)V

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->withExecutor(Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executors:Ljava/util/HashMap;

    .line 145
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executors:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const-string p2, "No executor available for %s execution style."

    invoke-virtual {p1, p2, p3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 168
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    if-nez v0, :cond_1

    .line 171
    iget-object v3, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v2

    const-string p2, "No executor available for %s execution style on % execution thread."

    invoke-virtual {v3, p2, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;",
            "Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;",
            "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask<",
            "TT;**>;[TT;)V"
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->access$000()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner$1;

    invoke-direct {v1, p0, p3, p4}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner$1;-><init>(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method public varargs executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask<",
            "TT;**>;[TT;)V"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public withExecutor(Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executors:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->getExecutionStyle()Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executors:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->getExecutionStyle()Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->getExecutionThread()Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
