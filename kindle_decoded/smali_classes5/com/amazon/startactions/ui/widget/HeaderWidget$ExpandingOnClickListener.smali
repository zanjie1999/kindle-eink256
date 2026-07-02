.class Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;
.super Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;
.source "HeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/HeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandingOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    .line 313
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 318
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->parentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 320
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 323
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_header_max_lines_first_expansion:I

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 325
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v1}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->getMaxLines()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 328
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v4, v4, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v5, Lcom/amazon/startactions/metrics/BookDetailActions;->CLICK_SEE_MORE:Lcom/amazon/startactions/metrics/BookDetailActions;

    invoke-static {v4, v5}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 330
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v4, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 331
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v4, v4, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/amazon/kindle/ea/R$string;->startactions_widget_see_all:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;)V

    const-string v0, "HeaderWidgetSeeMoreClicked"

    .line 333
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 334
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    invoke-virtual {v4}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_1

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v4, Lcom/amazon/startactions/metrics/BookDetailActions;->CLICK_SEE_ALL:Lcom/amazon/startactions/metrics/BookDetailActions;

    invoke-static {v0, v4}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 339
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    const-string v0, "HeaderWidgetSeeAllClicked"

    .line 341
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 342
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    invoke-virtual {v4}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 344
    :goto_1
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    .line 346
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->seeLessButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-static {p1, v0}, Lcom/amazon/startactions/ui/widget/HeaderWidget;->access$100(Lcom/amazon/startactions/ui/widget/HeaderWidget;Landroid/view/View;)V

    if-eqz v1, :cond_2

    const-string p1, "ClickedSeeMore"

    goto :goto_2

    :cond_2
    const-string p1, "ClickedSeeAll"

    .line 351
    :goto_2
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 352
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "AnyActionsHeaderWidget"

    invoke-interface {v1, v2, p1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
