.class Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue$1;
.super Ljava/lang/Object;
.source "NonVolatileBoundedByteArrayQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->readPersistedData()V
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
.field final synthetic this$0:Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;


# direct methods
.method constructor <init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue$1;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 9

    const-string v0, "Unsupported file name format: "

    const-string/jumbo v1, "readPersistedData"

    const-string/jumbo v2, "queueRead.NumberFormatException"

    const-wide/16 v3, 0x0

    .line 105
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 107
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    iget-object v7, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue$1;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;

    iget-object v7, v7, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v7}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v7

    invoke-interface {v7, v2, v5, v6}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 111
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v8, v4, [Ljava/lang/Object;

    .line 111
    invoke-virtual {v7, v1, p1, v8}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v3

    .line 117
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 120
    :catch_1
    iget-object v7, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue$1;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;

    iget-object v7, v7, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v7}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v7

    invoke-interface {v7, v2, v5, v6}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 121
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v2, v1, p2, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 103
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
