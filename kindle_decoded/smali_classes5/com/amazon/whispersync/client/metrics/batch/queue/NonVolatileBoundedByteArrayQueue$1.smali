.class Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue$1;
.super Ljava/lang/Object;
.source "NonVolatileBoundedByteArrayQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->readPersistedData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue$1;->this$0:Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 11

    const-string v0, "Unsupported file name format: "

    const-string/jumbo v1, "readPersistedData"

    const-string/jumbo v2, "queueRead.NumberFormatException"

    .line 95
    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    const/4 v6, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 97
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue$1;->this$0:Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    invoke-interface {v9, v2, v7, v8}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 101
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v10, v6, [Ljava/lang/Object;

    invoke-virtual {v9, v1, p1, v10}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :goto_0
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 107
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 110
    :catch_1
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue$1;->this$0:Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;

    iget-object v4, v4, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v4}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v4

    invoke-interface {v4, v2, v7, v8}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 111
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v1, p2, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 93
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
