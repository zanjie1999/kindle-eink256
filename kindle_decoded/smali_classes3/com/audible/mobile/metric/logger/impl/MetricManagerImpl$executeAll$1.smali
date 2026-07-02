.class final Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$executeAll$1;
.super Ljava/lang/Object;
.source "MetricManagerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->executeAll(Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $command:Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;

.field final synthetic this$0:Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;


# direct methods
.method constructor <init>(Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;)V
    .locals 0

    iput-object p1, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$executeAll$1;->this$0:Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;

    iput-object p2, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$executeAll$1;->$command:Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$executeAll$1;->this$0:Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;->access$getLoggerSet$p(Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/metric/logger/FilterableMetricLogger;

    .line 116
    iget-object v2, p0, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$executeAll$1;->$command:Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;

    const-string v3, "logger"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/audible/mobile/metric/logger/impl/MetricManagerImpl$Command;->execute(Lcom/audible/mobile/metric/logger/FilterableMetricLogger;)V

    goto :goto_0

    :cond_0
    return-void
.end method
