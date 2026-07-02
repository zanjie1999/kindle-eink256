.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;
.super Ljava/lang/Object;
.source "ThumbnailScrubber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->selectPage(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

.field final synthetic val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final synthetic val$navigate:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;ZLcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 1206
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;->val$navigate:Z

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1209
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;->val$navigate:Z

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$500(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$1300(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Lcom/amazon/android/docviewer/KindleDocViewer;I)V

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$1400(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;->val$navigate:Z

    if-eqz v0, :cond_1

    .line 1215
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MopDoc"

    const-string v2, "Navigate_SCRUBBERTHUMB"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ThumbnailNavigate"

    const-string v2, "1"

    .line 1217
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "MOPMetrics"

    const-string v4, "Usage"

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$700(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V

    .line 1223
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$1500(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Z)V

    .line 1224
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$7;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$1602(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Z)Z

    return-void
.end method
