.class Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;
.super Ljava/lang/Object;
.source "AuthorBioWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeTextOnClickListener"
.end annotation


# instance fields
.field private final bio:Ljava/lang/String;

.field private final bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field private final expand:Z

.field private final listener:Landroid/view/View$OnClickListener;

.field private final parentView:Landroid/view/View;

.field private final readLessButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->bio:Ljava/lang/String;

    .line 448
    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 449
    iput-object p4, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->listener:Landroid/view/View$OnClickListener;

    .line 450
    iput-object p5, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->readLessButton:Landroid/widget/Button;

    .line 451
    iput-boolean p6, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->expand:Z

    .line 452
    iput-object p7, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->parentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 457
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->parentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 459
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 462
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->expand:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v3, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_SEE_MORE:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    invoke-static {v0, v3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 466
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 469
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->readLessButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v3, "ExpandedAuthorBio"

    invoke-static {v3, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    move-object v0, v2

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v3, Lcom/amazon/startactions/metrics/AboutTheAuthorActions;->CLICK_SEE_LESS:Lcom/amazon/startactions/metrics/AboutTheAuthorActions;

    invoke-static {v0, v3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 476
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 477
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object v4, v4, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_author_bio_text_view_max_lines_collapsed:I

    .line 478
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 477
    invoke-virtual {v3, v4}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 479
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->readLessButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    iget-object v3, v3, Lcom/amazon/readingactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v3, v4}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    :goto_0
    const-string v3, "DidAnything"

    .line 482
    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 484
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->bio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 488
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 489
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const/16 v0, 0x80

    invoke-static {p1, v0, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 491
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget$SizeTextOnClickListener;->bioTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const/16 v0, 0x40

    invoke-static {p1, v0, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void
.end method
