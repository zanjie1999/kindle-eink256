.class Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;
.super Ljava/lang/Object;
.source "BookDetailWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BookDetailWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeTextOnClickListener"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final descriptionTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field private final expand:Z

.field private final listener:Landroid/view/View$OnClickListener;

.field private final parentView:Landroid/view/View;

.field private final seeInStoreButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/BookDetailWidget;Ljava/lang/String;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->description:Ljava/lang/String;

    .line 254
    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 255
    iput-object p4, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->listener:Landroid/view/View$OnClickListener;

    .line 256
    iput-object p5, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->seeInStoreButton:Landroid/widget/Button;

    .line 257
    iput-boolean p6, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->expand:Z

    .line 258
    iput-object p7, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->parentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 263
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->parentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 265
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 269
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->expand:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_less:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object v3, v3, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_book_detail_text_view_max_lines_expanded:I

    .line 272
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 271
    invoke-virtual {v2, v3}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 273
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->seeInStoreButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object v2, v2, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v3, "ExpandedBookDescription"

    invoke-static {v3, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object v3, v3, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_book_detail_text_view_max_lines_collapsed:I

    .line 279
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 278
    invoke-virtual {v2, v3}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 280
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->seeInStoreButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object v2, v2, Lcom/amazon/readingactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->parentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    :goto_0
    const-string v2, "DidAnything"

    .line 283
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 285
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 289
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 290
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 292
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const/16 v0, 0x40

    invoke-static {p1, v0, v1}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void
.end method
