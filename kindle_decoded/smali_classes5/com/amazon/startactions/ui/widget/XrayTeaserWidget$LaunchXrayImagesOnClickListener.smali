.class Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;
.super Ljava/lang/Object;
.source "XrayTeaserWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchXrayImagesOnClickListener"
.end annotation


# static fields
.field private static final NO_EXCERPT_ID:I = -0x1


# instance fields
.field private final excerptId:I

.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;I)V
    .locals 3

    .line 569
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput p2, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;->excerptId:I

    .line 573
    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->access$200(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;)Z

    move-result p2

    const-string v0, "XrayTeaserMosaicImagesWidgetLaunchedXray"

    const-string v1, "XrayTeaserSquareImagesWidgetLaunchedXray"

    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    move-object p2, v0

    goto :goto_0

    .line 574
    :cond_0
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    move-object p2, v1

    .line 575
    :goto_0
    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->access$200(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 576
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    :goto_1
    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 579
    invoke-virtual {p1, p2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 586
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->access$200(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;)Z

    move-result p1

    const-string v0, "XrayTeaserMosaicImagesWidgetLaunchedXray"

    const-string v1, "XrayTeaserSquareImagesWidgetLaunchedXray"

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    move-object p1, v0

    goto :goto_0

    .line 587
    :cond_0
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    move-object p1, v1

    .line 588
    :goto_0
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    invoke-static {v2}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->access$200(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    .line 589
    invoke-virtual {v1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    .line 589
    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    :goto_1
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v1

    const/4 v2, 0x1

    .line 592
    invoke-virtual {v1, p1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 593
    invoke-virtual {v1, v0, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 594
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/startactions/metrics/XRayActions;->CLICK_SEE_CONTENT:Lcom/amazon/startactions/metrics/XRayActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 597
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "Type"

    const-string v1, "images"

    .line 598
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->access$200(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mosaic"

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "square"

    :goto_2
    const-string v1, "Format"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsXrayTeaserWidget"

    const-string v3, "LaunchedXray"

    .line 603
    invoke-interface {v0, v1, v3, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "Xray"

    .line 605
    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 611
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.amazon.xray.ui.activity.OpenDirectlyToImages"

    .line 612
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 613
    iget v1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$LaunchXrayImagesOnClickListener;->excerptId:I

    const-string v2, "com.amazon.xray.ui.activity.InitialFocusedExcerptId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.amazon.xray.ui.activity.LaunchedFromSource"

    const-string v2, "TimesLaunchedFromStartActions"

    .line 614
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
