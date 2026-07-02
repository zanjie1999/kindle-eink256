.class public Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;
.super Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;
.source "GoToEntityExcerptOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Lcom/amazon/xray/ui/activity/XrayActivity;

.field private final entity:Lcom/amazon/xray/model/object/Entity;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->create()Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/metrics/MetricsRecorder;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 32
    invoke-direct {p0, p3}, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;-><init>(Lcom/amazon/xray/metrics/MetricsRecorder;)V

    .line 33
    iput-object p1, p0, Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    .line 34
    iput-object p2, p0, Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    if-eqz p1, :cond_2

    .line 41
    iget-object v0, p0, Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Excerpt;->getGoTo()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/activity/XrayActivity;->navigateToReaderBookPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 43
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;->recordSessionMetrics()V

    .line 44
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;->recordReadingStreams()V

    .line 46
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    iget-object v0, p0, Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    invoke-interface {p1, v0}, Lcom/amazon/xray/metrics/MetricsRecorder;->navigateToExcerpt(Lcom/amazon/xray/model/object/Entity;)V

    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    invoke-interface {p1}, Lcom/amazon/xray/metrics/MetricsRecorder;->navigateToExcerpt()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected recordReadingStreams()V
    .locals 3

    .line 63
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "XrayCard_Passage"

    const-string v2, "GoToBookLocation"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected recordSessionMetrics()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->getSessionMetric()Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const-string v1, "PressedGoToPassage"

    .line 57
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string v1, "UITaps"

    .line 58
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method
