.class Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;
.super Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;
.source "ExpandingTextWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandingOnClickListener"
.end annotation


# instance fields
.field private final parentView:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    .line 192
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;)V

    .line 194
    iput-object p4, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->parentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 199
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->parentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 201
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 204
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->access$100(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_expanding_text_max_lines_first_expansion:I

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

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

    .line 209
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v4, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 210
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-static {v4}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->access$100(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;)Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/ea/R$string;->startactions_widget_see_all:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;)V

    const-string v0, "ExpandingTextWidgetSeeMoreClicked"

    .line 212
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 213
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-virtual {v4}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 217
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;)V

    const-string v0, "ExpandingTextWidgetSeeAllClicked"

    .line 219
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 220
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-virtual {v4}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 222
    :goto_1
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->dynamicTextData:Lcom/amazon/ea/sidecar/def/data/DynamicTextData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/DynamicTextData;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->seeLessButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-static {p1, v0}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->access$200(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Landroid/view/View;)V

    if-eqz v1, :cond_2

    const-string p1, "ClickedSeeMore"

    goto :goto_2

    :cond_2
    const-string p1, "ClickedSeeAll"

    .line 229
    :goto_2
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 230
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "AnyActionsExpandingTextWidget"

    invoke-interface {v1, v2, p1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
