.class Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;
.super Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;
.source "ExpandingTextWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollapsingOnClickListener"
.end annotation


# instance fields
.field private final parentView:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;)V

    .line 246
    iput-object p4, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->parentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 251
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->parentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 254
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->access$100(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_expanding_text_max_lines_collapsed:I

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 254
    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 256
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->access$100(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->dynamicTextData:Lcom/amazon/ea/sidecar/def/data/DynamicTextData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/DynamicTextData;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->parentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    .line 261
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->seeLessButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;->expandingTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-static {p1, v0}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->access$200(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Landroid/view/View;)V

    .line 264
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "ExpandingTextWidgetSeeLessClicked"

    .line 265
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 266
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-virtual {v2}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 268
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 269
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsExpandingTextWidget"

    const-string v2, "ClickedSeeLess"

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
