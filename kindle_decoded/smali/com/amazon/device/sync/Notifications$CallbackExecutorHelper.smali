.class final Lcom/amazon/device/sync/Notifications$CallbackExecutorHelper;
.super Ljava/lang/Object;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackExecutorHelper"
.end annotation


# static fields
.field private static final CALLBACK_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 295
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/Notifications$CallbackExecutorHelper;->CALLBACK_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 293
    invoke-static {p0}, Lcom/amazon/device/sync/Notifications$CallbackExecutorHelper;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/amazon/device/sync/Notifications$CallbackExecutorHelper;

    monitor-enter v0

    .line 300
    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/Notifications$CallbackExecutorHelper;->CALLBACK_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

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
