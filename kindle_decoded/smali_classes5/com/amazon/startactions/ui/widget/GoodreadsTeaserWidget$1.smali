.class Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget$1;
.super Ljava/lang/Object;
.source "GoodreadsTeaserWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 100
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "DidAnything"

    .line 101
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 102
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/GrokTeaserWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ClickedGoodreadsSignUp"

    invoke-static {v2, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v0, "StartActionsActiveTime"

    .line 103
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->stopTimer(Ljava/lang/String;)V

    .line 105
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "AnyActionsGoodreadsTeaserWidget"

    const-string v3, "GoodreadsSignUp"

    .line 107
    invoke-interface {p1, v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Goodreads"

    .line 109
    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.amazon.kindle.otter.oobe.LAUNCH_GR_FLOW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CALLING_APP"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "RESULT_REQUIRED"

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "key_start_actions"

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget$1;->this$0:Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    const/16 v1, 0x539

    invoke-interface {v0, p1, v1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
