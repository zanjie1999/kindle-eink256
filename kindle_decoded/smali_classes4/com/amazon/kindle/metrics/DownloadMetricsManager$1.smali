.class final Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;
.super Ljava/lang/Object;
.source "DownloadMetricsManager.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IBooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/metrics/DownloadMetricsManager;->reportDownloadEndedMetricsLocalBroadcast(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/content/ContentMetadata;JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$completionStatus:Ljava/lang/String;

.field final synthetic val$error:Ljava/lang/String;

.field final synthetic val$krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field final synthetic val$serializedBookID:Ljava/lang/String;

.field final synthetic val$size:J


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;->val$krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iput-object p2, p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;->val$serializedBookID:Ljava/lang/String;

    iput-wide p3, p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;->val$size:J

    iput-object p5, p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;->val$completionStatus:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 7

    if-nez p1, :cond_0

    .line 242
    invoke-static {}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sync has finished unsuccessfully, the download metric may be reported incorrectly"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;->val$krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iget-object v0, p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;->val$serializedBookID:Ljava/lang/String;

    .line 247
    invoke-interface {p1, v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    .line 248
    iget-object v1, p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;->val$krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iget-wide v3, p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;->val$size:J

    iget-object v5, p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;->val$completionStatus:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/kindle/metrics/DownloadMetricsManager$1;->val$error:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->pushDownloadEndedMetrics(Lcom/amazon/kindle/content/ContentMetadata;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
