.class abstract Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;
.super Ljava/lang/Object;
.source "BaseExcerptCardActionListener.java"


# instance fields
.field protected excerpt:Lcom/amazon/xray/model/object/Excerpt;

.field protected metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;


# direct methods
.method constructor <init>(Lcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    return-void
.end method


# virtual methods
.method protected getSessionMetric()Lcom/amazon/xray/metrics/Metric;
    .locals 2

    .line 44
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    return-object v0
.end method

.method public setExcerpt(Lcom/amazon/xray/model/object/Excerpt;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    return-void
.end method
