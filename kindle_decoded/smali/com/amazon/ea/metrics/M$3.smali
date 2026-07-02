.class final Lcom/amazon/ea/metrics/M$3;
.super Ljava/lang/Object;
.source "M.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/metrics/M;->asyncWithMetrics(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p:Lcom/amazon/ea/metrics/Profiler;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/ea/metrics/Profiler;Ljava/lang/Runnable;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/amazon/ea/metrics/M$3;->val$p:Lcom/amazon/ea/metrics/Profiler;

    iput-object p2, p0, Lcom/amazon/ea/metrics/M$3;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/amazon/ea/metrics/M$3;->val$p:Lcom/amazon/ea/metrics/Profiler;

    if-eqz v0, :cond_0

    .line 234
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->access$100(Lcom/amazon/ea/metrics/Profiler;)V

    .line 237
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/metrics/M$3;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v0, p0, Lcom/amazon/ea/metrics/M$3;->val$p:Lcom/amazon/ea/metrics/Profiler;

    if-eqz v0, :cond_1

    .line 240
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 239
    iget-object v1, p0, Lcom/amazon/ea/metrics/M$3;->val$p:Lcom/amazon/ea/metrics/Profiler;

    if-eqz v1, :cond_2

    .line 240
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 242
    :cond_2
    throw v0
.end method
