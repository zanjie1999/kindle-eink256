.class Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$1;
.super Ljava/lang/Object;
.source "PeriodicMetricReporterImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/whispersync/client/metrics/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Lcom/amazon/whispersync/client/metrics/Priority;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$1;->this$0:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "PeriodicMetricReporterThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method
