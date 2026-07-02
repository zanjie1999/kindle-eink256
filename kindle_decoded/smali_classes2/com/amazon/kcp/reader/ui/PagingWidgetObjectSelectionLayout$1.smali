.class Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout$1;
.super Ljava/lang/Object;
.source "PagingWidgetObjectSelectionLayout.java"

# interfaces
.implements Lcom/amazon/android/widget/PagingButtonWidget$OnActionItemsClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout$1;->this$0:Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClick(Lcom/amazon/android/widget/AbstractActionWidgetItem;)V
    .locals 4

    .line 87
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getButtonIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Selection"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    invoke-static {}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AmazonKindle"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getButtonIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method
