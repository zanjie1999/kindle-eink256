.class Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;
.super Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;
.source "HeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/HeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollapsingOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/HeaderWidget;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    .line 287
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/HeaderWidget;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 292
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$1200(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->parentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 295
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$1300(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/startactions/metrics/BookDetailActions;->CLICK_SEE_LESS:Lcom/amazon/startactions/metrics/BookDetailActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 298
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$1400(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$1500(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$integer;->readingactions_widget_expanding_text_max_lines_collapsed_w_goodreads:I

    .line 300
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 299
    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$1600(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$integer;->readingactions_widget_expanding_text_max_lines_collapsed_wo_goodreads:I

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 303
    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 307
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$1700(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$1800(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    .line 310
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$1900(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->parentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    .line 312
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->seeLessButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-static {p1, v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$1000(Lcom/amazon/readingactions/ui/widget/HeaderWidget;Landroid/view/View;)V

    .line 315
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$2000(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Lcom/amazon/startactions/ui/IAnyActionsUIController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "HeaderWidgetSeeLessClicked"

    .line 316
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 317
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-virtual {v2}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 319
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidget;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidget;->access$2100(Lcom/amazon/readingactions/ui/widget/HeaderWidget;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 320
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsHeaderWidget"

    const-string v2, "ClickedSeeLess"

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
