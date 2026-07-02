.class Lcom/amazon/kcp/library/sync/ReadDataSyncManager$4;
.super Ljava/lang/Object;
.source "ReadDataSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->cleanSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$4;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 215
    invoke-static {}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_MAR_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v2, Lcom/amazon/kcp/application/PerfMarker;->FTUE_MAR_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->startTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    .line 218
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$300()Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$4;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$100(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$4;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$400(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V

    .line 221
    invoke-static {}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$200()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_MAR_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v2, Lcom/amazon/kcp/application/PerfMarker;->FTUE_MAR_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->stopTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    .line 223
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_MAR_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V

    const/4 v0, 0x1

    .line 224
    invoke-static {v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$202(Z)Z

    :cond_1
    return-void
.end method
