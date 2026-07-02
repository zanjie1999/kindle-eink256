.class final Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;
.super Ljava/lang/Object;
.source "AuthorSubscriptionsController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SizeTextOnClickListener"
.end annotation


# instance fields
.field private final bio:Ljava/lang/String;

.field private final bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field private final expanded:Z

.field private final listener:Landroid/view/View$OnClickListener;

.field private final parentView:Landroid/view/View;

.field private final readLessButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;Ljava/lang/String;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/widget/Button;",
            "Z",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "bio"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bioTextView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "readLessButton"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parentView"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->bio:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iput-object p4, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->listener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->readLessButton:Landroid/widget/Button;

    iput-boolean p6, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->expanded:Z

    iput-object p7, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->parentView:Landroid/view/View;

    return-void
.end method

.method private final collapse()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/FollowTheAuthorActions;->CLICK_SEE_LESS:Lcom/amazon/ea/metrics/FollowTheAuthorActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 489
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 488
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Landroid/content/res/Resources;

    move-result-object v1

    .line 489
    sget v2, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_author_bio_text_view_max_lines_collapsed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 490
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->readLessButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    return-void
.end method

.method private final expand()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/FollowTheAuthorActions;->CLICK_SEE_MORE:Lcom/amazon/ea/metrics/FollowTheAuthorActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 481
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 482
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->readLessButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getAnimationCoordinator$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->parentView:Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 460
    iget-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->expanded:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->expand()V

    move-object p1, v0

    goto :goto_0

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->collapse()V

    .line 465
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController;)Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 468
    :goto_0
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p1, v2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->bio:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 472
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 473
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const/16 v1, 0x80

    invoke-static {p1, v1, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 475
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorSubscriptionsController$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const/16 v1, 0x40

    invoke-static {p1, v1, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void

    .line 458
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewParent"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
