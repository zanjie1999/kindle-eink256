.class public abstract Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;
.super Ljava/lang/Object;
.source "TextViewExpandableOnClickListener.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

.field private final buttonString:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field public listener:Landroid/view/View$OnClickListener;

.field private final maxLines:I

.field private final metricAction:Lcom/amazon/ea/metrics/WidgetActions;

.field private final metricsTag:Ljava/lang/String;

.field private final parentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator;Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "expandingTextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parentView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationCoordinator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsTag"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricAction"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonString"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->parentView:Landroid/view/View;

    iput-object p3, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iput-object p4, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->metricsTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->metricAction:Lcom/amazon/ea/metrics/WidgetActions;

    iput-object p6, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->description:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->buttonString:Ljava/lang/String;

    iput p8, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->maxLines:I

    return-void
.end method


# virtual methods
.method protected final getAnimationCoordinator()Lcom/amazon/ea/ui/AnimationCoordinator;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    return-object v0
.end method

.method protected final getParentView()Landroid/view/View;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->parentView:Landroid/view/View;

    return-object v0
.end method

.method public abstract handleAction()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->parentView:Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 26
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->maxLines:I

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->setMaxLines(I)V

    .line 28
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->handleAction()V

    .line 30
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->metricsTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->metricAction:Lcom/amazon/ea/metrics/WidgetActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 32
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->buttonString:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->listener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 37
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const/16 v0, 0x80

    invoke-static {p1, v0, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 39
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->expandingTextView:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const/16 v0, 0x40

    invoke-static {p1, v0, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void

    :cond_0
    const-string p1, "listener"

    .line 32
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewParent"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method
