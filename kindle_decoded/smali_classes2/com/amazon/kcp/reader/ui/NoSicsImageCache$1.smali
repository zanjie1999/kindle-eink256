.class Lcom/amazon/kcp/reader/ui/NoSicsImageCache$1;
.super Ljava/lang/Object;
.source "NoSicsImageCache.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/NoSicsImageCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$1;->this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 46
    invoke-static {}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->access$000()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to accept task, isTerminated="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$1;->this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->access$100(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isShutDown="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$1;->this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    .line 47
    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->access$100(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
