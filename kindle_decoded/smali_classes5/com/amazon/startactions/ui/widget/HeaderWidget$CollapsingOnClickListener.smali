.class Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;
.super Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;
.source "HeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/HeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollapsingOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    .line 363
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 368
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->parentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 371
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/startactions/metrics/BookDetailActions;->CLICK_SEE_LESS:Lcom/amazon/startactions/metrics/BookDetailActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 373
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_header_max_lines_collapsed:I

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 373
    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 375
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    .line 378
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->parentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    .line 380
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->seeLessButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 381
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-static {p1, v0}, Lcom/amazon/startactions/ui/widget/HeaderWidget;->access$100(Lcom/amazon/startactions/ui/widget/HeaderWidget;Landroid/view/View;)V

    .line 383
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "HeaderWidgetSeeLessClicked"

    .line 384
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 385
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    invoke-virtual {v2}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 387
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 388
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsHeaderWidget"

    const-string v2, "ClickedSeeLess"

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
