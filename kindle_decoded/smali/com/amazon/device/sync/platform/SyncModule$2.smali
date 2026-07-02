.class Lcom/amazon/device/sync/platform/SyncModule$2;
.super Ljava/lang/Object;
.source "SyncModule.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/platform/SyncModule;->deferredExecutor()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mThreadNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/amazon/device/sync/platform/SyncModule;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/platform/SyncModule;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/device/sync/platform/SyncModule$2;->this$0:Lcom/amazon/device/sync/platform/SyncModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/sync/platform/SyncModule$2;->mThreadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/device/sync/platform/SyncModule$2$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/sync/platform/SyncModule$2$1;-><init>(Lcom/amazon/device/sync/platform/SyncModule$2;Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sync-background-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/device/sync/platform/SyncModule$2;->mThreadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
