.class public Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;
.super Ljava/lang/Object;
.source "BookDetailWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/BookDetailWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SizeTextOnClickListener"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final descriptionTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

.field private final expand:Z

.field private final listener:Landroid/view/View$OnClickListener;

.field private final parentView:Landroid/view/View;

.field private final readLessButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/BookDetailWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/BookDetailWidget;Ljava/lang/String;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/BookDetailWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->description:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    .line 212
    iput-object p4, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->listener:Landroid/view/View$OnClickListener;

    .line 213
    iput-object p5, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->readLessButton:Landroid/widget/Button;

    .line 214
    iput-boolean p6, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->expand:Z

    .line 215
    iput-object p7, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->parentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getPaymentFlowDescriptionButtonString()Ljava/lang/String;
    .locals 2

    .line 252
    iget-boolean v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->expand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/BookDetailWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    .line 253
    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->getSABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/BookDetailWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 220
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/BookDetailWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->parentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 222
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/BookDetailWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 225
    iget-boolean v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->expand:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/BookDetailWidget;

    iget-object v2, v2, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_book_detail_text_view_max_lines_expanded:I

    .line 227
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 226
    invoke-virtual {v0, v2}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 228
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->readLessButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/BookDetailWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ExpandedBookDescription"

    invoke-static {v2, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/BookDetailWidget;

    iget-object v2, v2, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$integer;->startactions_widget_book_detail_text_view_max_lines_collapsed:I

    .line 233
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 232
    invoke-virtual {v0, v2}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 234
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->readLessButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/BookDetailWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->parentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    :goto_0
    const-string v0, "DidAnything"

    .line 237
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 239
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->getPaymentFlowDescriptionButtonString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 243
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 244
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 246
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;->descriptionTextView:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    const/16 v0, 0x40

    invoke-static {p1, v0, v1}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void
.end method
