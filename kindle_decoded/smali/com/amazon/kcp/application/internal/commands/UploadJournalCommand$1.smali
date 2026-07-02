.class Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;
.super Ljava/lang/Object;
.source "UploadJournalCommand.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->doExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/internal/IObjectCallback<",
        "Lcom/amazon/kindle/annotation/IUploadJournalsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/annotation/IUploadJournalsResult;)V
    .locals 5

    .line 47
    invoke-interface {p1}, Lcom/amazon/kindle/annotation/IUploadJournalsResult;->getStatus()Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;->WEB_REQUEST_ERROR:Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;

    xor-int/lit8 v3, p1, 0x1

    invoke-static {v0, v3}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->access$000(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;Z)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;->postKill()V

    if-eqz p1, :cond_1

    .line 54
    invoke-static {}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Journal upload succeeded"

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Journal upload failed"

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "UploadJournalCommand"

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 61
    iget-object v4, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;

    invoke-static {v4}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->access$200(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;)Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getMetricTimer()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    if-eqz p1, :cond_2

    const-string p1, "JournalsUploadedCount"

    goto :goto_2

    :cond_2
    const-string p1, "JournalsFailedCount"

    :goto_2
    aput-object p1, v3, v2

    const-string p1, "%s:%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;

    invoke-static {v1}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->access$300(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, p1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 63
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/amazon/kindle/annotation/IUploadJournalsResult;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;->execute(Lcom/amazon/kindle/annotation/IUploadJournalsResult;)V

    return-void
.end method
