.class public Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;
.super Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;
.source "GoToImageExcerptOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Lcom/amazon/xray/ui/activity/XrayActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->create()Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/metrics/MetricsRecorder;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 28
    invoke-direct {p0, p2}, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;-><init>(Lcom/amazon/xray/metrics/MetricsRecorder;)V

    .line 29
    iput-object p1, p0, Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Excerpt;->getGoTo()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->navigateToReaderBookPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 37
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;->recordSessionMetrics()V

    .line 38
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;->recordReadingStreams()V

    .line 40
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    invoke-interface {p1}, Lcom/amazon/xray/metrics/MetricsRecorder;->navigateToImage()V

    :cond_0
    return-void
.end method

.method protected recordReadingStreams()V
    .locals 3

    .line 53
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "XrayCard_Image"

    const-string v2, "GoToBookLocation"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected recordSessionMetrics()V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->getSessionMetric()Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const-string v1, "PressedGoToImage"

    .line 47
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string v1, "UITaps"

    .line 48
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method
