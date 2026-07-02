.class public final Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;
.super Ljava/lang/Object;
.source "PeriodicMetricReporterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PeriodicCommand"
.end annotation


# instance fields
.field private final mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;)V
    .locals 1

    .line 254
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;->this$0:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;->this$0:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->access$000(Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
