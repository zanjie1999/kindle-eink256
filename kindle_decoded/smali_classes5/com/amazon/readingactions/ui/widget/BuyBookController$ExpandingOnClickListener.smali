.class final Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;
.super Ljava/lang/Object;
.source "BuyBookController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BuyBookController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExpandingOnClickListener"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final expand:Z

.field private final expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field public listener:Landroid/view/View$OnClickListener;

.field private final parentView:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/BuyBookController;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "expandingTextView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parentView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->parentView:Landroid/view/View;

    iput-object p4, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->description:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->expand:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->parentView:Landroid/view/View;

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 446
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getRecommendation$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 450
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->expand:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getActivity$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_less:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "activity.resources.getSt\u2026actions_widget_read_less)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 452
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getActivity$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 453
    sget v4, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_book_detail_text_view_max_lines_expanded:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 455
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getModel$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v3, "ClickedBuyBookDescription"

    invoke-static {v3, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getActivity$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "activity.resources.getSt\u2026actions_widget_read_more)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 458
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getActivity$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 459
    sget v4, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_book_detail_text_view_max_lines_collapsed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 460
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->parentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    :goto_0
    const-string v2, "DidAnything"

    .line 462
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 464
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->listener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 468
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 469
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const/16 v0, 0x80

    invoke-static {p1, v0, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 471
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const/16 v0, 0x40

    invoke-static {p1, v0, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void

    :cond_1
    const-string p1, "listener"

    .line 464
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewParent"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$ExpandingOnClickListener;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method
