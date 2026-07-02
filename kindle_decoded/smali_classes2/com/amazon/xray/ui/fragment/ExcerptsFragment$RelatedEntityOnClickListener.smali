.class Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;
.super Ljava/lang/Object;
.source "ExcerptsFragment.java"

# interfaces
.implements Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/ExcerptsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RelatedEntityOnClickListener"
.end annotation


# instance fields
.field private final activity:Lcom/amazon/xray/ui/activity/XrayActivity;

.field private final metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

.field private final parentEntity:Lcom/amazon/xray/model/object/Entity;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;)V
    .locals 1

    .line 622
    sget-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->create()Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/metrics/MetricsRecorder;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Entity;Lcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    .line 627
    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;->parentEntity:Lcom/amazon/xray/model/object/Entity;

    .line 628
    iput-object p3, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    return-void
.end method


# virtual methods
.method getSessionMetric()Lcom/amazon/xray/metrics/Metric;
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/model/object/Entity;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 634
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p2}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/xray/ui/activity/XrayActivity;->navigateToEntity(I)V

    .line 636
    invoke-virtual {p0}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;->getSessionMetric()Lcom/amazon/xray/metrics/Metric;

    move-result-object p1

    const-string p2, "EntitiesViewed"

    .line 637
    invoke-virtual {p1, p2}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string p2, "PressedRelatedEntity"

    .line 638
    invoke-virtual {p1, p2}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    const-string p2, "UITaps"

    .line 639
    invoke-virtual {p1, p2}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 642
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 643
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "XrayCard_Passage"

    const-string v0, "SelectRelatedEntity"

    .line 644
    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;->parentEntity:Lcom/amazon/xray/model/object/Entity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;->parentEntity:Lcom/amazon/xray/model/object/Entity;

    invoke-interface {p1, p2}, Lcom/amazon/xray/metrics/MetricsRecorder;->selectRelatedEntity(Lcom/amazon/xray/model/object/Entity;)V

    goto :goto_1

    .line 648
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$RelatedEntityOnClickListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    invoke-interface {p1}, Lcom/amazon/xray/metrics/MetricsRecorder;->selectRelatedEntity()V

    :cond_2
    :goto_1
    return-void
.end method
