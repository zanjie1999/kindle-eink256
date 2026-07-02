.class public Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;
.super Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;
.source "HighlightExcerptOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final carousel:Lcom/amazon/xray/ui/widget/CardCarousel;

.field private final entity:Lcom/amazon/xray/model/object/Entity;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/ui/widget/CardCarousel;)V
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->create()Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;-><init>(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/ui/widget/CardCarousel;Lcom/amazon/xray/metrics/MetricsRecorder;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/ui/widget/CardCarousel;Lcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 35
    invoke-direct {p0, p3}, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;-><init>(Lcom/amazon/xray/metrics/MetricsRecorder;)V

    .line 36
    iput-object p1, p0, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    .line 37
    iput-object p2, p0, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->carousel:Lcom/amazon/xray/ui/widget/CardCarousel;

    return-void
.end method

.method private recordHighlightMetrics()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->getHighlightMetric()Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EntityId"

    .line 79
    invoke-virtual {v0, v2, v1}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExcerptId"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExcerptStart"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExcerptLength"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lcom/amazon/xray/metrics/Metric;->close()V

    return-void
.end method

.method private refreshUI()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->carousel:Lcom/amazon/xray/ui/widget/CardCarousel;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/amazon/xray/ui/widget/CardCarousel;->getFocusedCardIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/widget/CardCarousel;->reloadCard(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method getHighlightMetric()Lcom/amazon/xray/metrics/Metric;
    .locals 1

    const-string v0, "XrayHighlight"

    .line 102
    invoke-static {v0}, Lcom/amazon/xray/metrics/BookMetricUtil;->createCurrentBookMetric(Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    if-eqz p1, :cond_3

    .line 46
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/util/ContentUtil;->highlightText(II)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->refreshUI()V

    .line 52
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->recordSessionMetrics()V

    .line 53
    invoke-direct {p0}, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->recordHighlightMetrics()V

    .line 54
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->recordReadingStreams()V

    .line 56
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    iget-object v0, p0, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    invoke-interface {p1, v0}, Lcom/amazon/xray/metrics/MetricsRecorder;->highlightExcerpt(Lcom/amazon/xray/model/object/Entity;)V

    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    invoke-interface {p1}, Lcom/amazon/xray/metrics/MetricsRecorder;->highlightExcerpt()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected recordReadingStreams()V
    .locals 4

    .line 90
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 91
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ExcerptId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EntityId"

    .line 92
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "XrayCard_Passage"

    const-string v3, "Highlight"

    .line 97
    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected recordSessionMetrics()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->getSessionMetric()Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const-string v1, "PressedSaveHighlight"

    .line 73
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string v1, "UITaps"

    .line 74
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method
