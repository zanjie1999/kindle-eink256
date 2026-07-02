.class public Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;
.super Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;
.source "ShareExcerptOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Lcom/amazon/xray/ui/activity/XrayActivity;

.field private displayableExcerpt:Lcom/amazon/xray/model/object/DisplayableExcerpt;

.field private final entity:Lcom/amazon/xray/model/object/Entity;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->create()Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/metrics/MetricsRecorder;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 36
    invoke-direct {p0, p3}, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;-><init>(Lcom/amazon/xray/metrics/MetricsRecorder;)V

    .line 37
    iput-object p1, p0, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    .line 38
    iput-object p2, p0, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    return-void
.end method

.method private recordShareMetrics()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->getShareMetric()Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EntityId"

    .line 70
    invoke-virtual {v0, v2, v1}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExcerptId"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExcerptStart"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    .line 75
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExcerptLength"

    .line 74
    invoke-virtual {v0, v2, v1}, Lcom/amazon/xray/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lcom/amazon/xray/metrics/Metric;->close()V

    return-void
.end method


# virtual methods
.method getShareMetric()Lcom/amazon/xray/metrics/Metric;
    .locals 1

    const-string v0, "XrayShare"

    .line 80
    invoke-static {v0}, Lcom/amazon/xray/metrics/BookMetricUtil;->createCurrentBookMetric(Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->displayableExcerpt:Lcom/amazon/xray/model/object/DisplayableExcerpt;

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->shareExcerpt()V

    .line 45
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->recordSessionMetrics()V

    .line 46
    invoke-direct {p0}, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->recordShareMetrics()V

    .line 47
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->recordReadingStreams()V

    .line 49
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    iget-object v0, p0, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    invoke-interface {p1, v0}, Lcom/amazon/xray/metrics/MetricsRecorder;->shareExcerpt(Lcom/amazon/xray/model/object/Entity;)V

    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    invoke-interface {p1}, Lcom/amazon/xray/metrics/MetricsRecorder;->shareExcerpt()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected recordReadingStreams()V
    .locals 4

    .line 86
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 87
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Excerpt;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ExcerptId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->entity:Lcom/amazon/xray/model/object/Entity;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EntityId"

    .line 88
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    .line 92
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "XrayCard_Passage"

    const-string v3, "Share"

    .line 93
    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected recordSessionMetrics()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->getSessionMetric()Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const-string v1, "PressedSharePassage"

    .line 64
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string v1, "UITaps"

    .line 65
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method public setDisplayableExcerpt(Lcom/amazon/xray/model/object/DisplayableExcerpt;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->displayableExcerpt:Lcom/amazon/xray/model/object/DisplayableExcerpt;

    return-void
.end method

.method shareExcerpt()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    iget-object v1, p0, Lcom/amazon/xray/ui/listener/BaseExcerptCardActionListener;->excerpt:Lcom/amazon/xray/model/object/Excerpt;

    iget-object v2, p0, Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;->displayableExcerpt:Lcom/amazon/xray/model/object/DisplayableExcerpt;

    invoke-virtual {v2}, Lcom/amazon/xray/model/object/DisplayableExcerpt;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/xray/plugin/util/SharingUtil;->shareExcerpt(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Excerpt;Ljava/lang/String;)V

    return-void
.end method
