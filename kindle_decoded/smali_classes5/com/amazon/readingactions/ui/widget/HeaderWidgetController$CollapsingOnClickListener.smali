.class final Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;
.super Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;
.source "HeaderWidgetController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CollapsingOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;",
            "Landroid/widget/Button;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "expandingTextView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "seeLessButton"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parentView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->getParentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 229
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/startactions/metrics/BookDetailActions;->CLICK_SEE_LESS:Lcom/amazon/startactions/metrics/BookDetailActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 232
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->getExpandingTextView()Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    move-result-object p1

    .line 231
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Landroid/content/res/Resources;

    move-result-object v0

    .line 232
    sget v1, Lcom/amazon/kindle/ea/R$integer;->readingactions_widget_expanding_text_max_lines_collapsed_wo_goodreads:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 234
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->getExpandingTextView()Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->getExpandingTextView()Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    .line 237
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    .line 239
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->getSeeLessButton()Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$BaseOnClickListener;->getExpandingTextView()Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$resetAccessibility(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;Landroid/view/View;)V

    .line 242
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController$CollapsingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;->access$getReadingStreamsMetadataWithMetricsTag(Lcom/amazon/readingactions/ui/widget/HeaderWidgetController;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 243
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsHeaderWidget"

    const-string v2, "ClickedSeeLess"

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 226
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewParent"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
