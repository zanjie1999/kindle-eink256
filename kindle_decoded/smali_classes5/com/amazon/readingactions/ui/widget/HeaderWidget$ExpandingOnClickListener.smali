.class Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;
.super Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;
.source "HeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/HeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandingOnClickListener"
.end annotation


# instance fields
.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/HeaderWidget;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    .line 252
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/HeaderWidget;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V

    .line 253
    iput-object p5, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 258
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$600(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->parentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 260
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$700(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/startactions/ui/IAnyActionsUIController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 262
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$800(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/startactions/metrics/BookDetailActions;->CLICK_SEE_MORE:Lcom/amazon/startactions/metrics/BookDetailActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 264
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    const-string v0, "HeaderWidgetSeeMoreClicked"

    .line 265
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 266
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-virtual {v2}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 267
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$900(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    .line 269
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->seeLessButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-static {p1, v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$1000(Lcom/amazon/readingactions/ui/widget/HeaderWidget;Landroid/view/View;)V

    .line 273
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$1100(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 274
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "ClickedSeeMore"

    const-string v2, "AnyActionsHeaderWidget"

    invoke-interface {v0, v2, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 277
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$ExpandingOnClickListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/readingactions/bottomsheet/events/ExpandEvent;

    invoke-direct {v0}, Lcom/amazon/readingactions/bottomsheet/events/ExpandEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
