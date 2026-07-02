.class Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin$1;
.super Lcom/amazon/kindle/krx/ui/InfoCardProvider;
.source "WikipediaInfoCardPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;->getProvider()Lcom/amazon/kindle/krx/providers/ISortableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin$1;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;
    .locals 5

    .line 55
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;->hasInfoCard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InfoCardControllerTimer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin$1;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$layout;->info_card_wikipedia_v2:I

    invoke-static {v2, v3}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;->inflateCardView(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    if-eqz v2, :cond_1

    .line 68
    new-instance v3, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)V

    .line 69
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->loadQuery(Ljava/lang/String;)V

    .line 71
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "INFO_CARD_WIKIPEDIA"

    const-string v4, "WikipediaCardShown"

    invoke-virtual {v0, v3, v4, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 72
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "InfoCardWikipediaTimer"

    const-string v4, "WikipediaCardCreationTimer"

    invoke-virtual {v0, v3, v4, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin$1;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 0

    const/16 p1, 0x7d0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 47
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardPlugin$1;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method
