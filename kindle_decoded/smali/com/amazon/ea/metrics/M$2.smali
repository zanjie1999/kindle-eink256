.class final Lcom/amazon/ea/metrics/M$2;
.super Ljava/lang/Object;
.source "M.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/metrics/M;->asyncWithMetrics(Ljava/util/concurrent/Callable;Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;)Lcom/amazon/kindle/krx/application/IAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/application/IAsyncTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Ljava/util/concurrent/Callable;

.field final synthetic val$p:Lcom/amazon/ea/metrics/Profiler;

.field final synthetic val$priority:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;


# direct methods
.method constructor <init>(Lcom/amazon/ea/metrics/Profiler;Ljava/util/concurrent/Callable;Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/amazon/ea/metrics/M$2;->val$p:Lcom/amazon/ea/metrics/Profiler;

    iput-object p2, p0, Lcom/amazon/ea/metrics/M$2;->val$c:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/amazon/ea/metrics/M$2;->val$priority:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/amazon/ea/metrics/M$2;->val$p:Lcom/amazon/ea/metrics/Profiler;

    if-eqz v0, :cond_0

    .line 202
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->access$100(Lcom/amazon/ea/metrics/Profiler;)V

    .line 205
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/metrics/M$2;->val$c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v1, p0, Lcom/amazon/ea/metrics/M$2;->val$p:Lcom/amazon/ea/metrics/Profiler;

    if-eqz v1, :cond_1

    .line 208
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 207
    iget-object v1, p0, Lcom/amazon/ea/metrics/M$2;->val$p:Lcom/amazon/ea/metrics/Profiler;

    if-eqz v1, :cond_2

    .line 208
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 210
    :cond_2
    throw v0
.end method

.method public getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/ea/metrics/M$2;->val$priority:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
