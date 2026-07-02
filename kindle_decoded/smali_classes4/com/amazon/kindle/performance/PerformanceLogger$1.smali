.class Lcom/amazon/kindle/performance/PerformanceLogger$1;
.super Ljava/lang/Object;
.source "PerformanceLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/performance/PerformanceLogger;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/performance/PerformanceLogger;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/performance/PerformanceLogger;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/performance/PerformanceLogger$1;->this$0:Lcom/amazon/kindle/performance/PerformanceLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 38
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/performance/PerformanceLogger$1;->this$0:Lcom/amazon/kindle/performance/PerformanceLogger;

    invoke-static {}, Lcom/amazon/kindle/performance/PerformanceLogger;->access$000()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/performance/PerformanceEvent;

    invoke-static {v0, v1}, Lcom/amazon/kindle/performance/PerformanceLogger;->access$100(Lcom/amazon/kindle/performance/PerformanceLogger;Lcom/amazon/kindle/performance/PerformanceEvent;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 41
    invoke-static {}, Lcom/amazon/kindle/performance/PerformanceLogger;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
