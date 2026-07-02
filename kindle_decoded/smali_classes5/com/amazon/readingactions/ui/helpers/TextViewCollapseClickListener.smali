.class public final Lcom/amazon/readingactions/ui/helpers/TextViewCollapseClickListener;
.super Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;
.source "TextViewCollapseClickListener.kt"


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/content/res/Resources;Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Ljava/lang/String;I)V
    .locals 11

    move-object v0, p4

    const-string v1, "expandingTextView"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "parentView"

    move-object v4, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "animationCoordinator"

    move-object v5, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "resources"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metricsTag"

    move-object/from16 v6, p5

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metricAction"

    move-object/from16 v7, p6

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "description"

    move-object/from16 v8, p7

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "resources.getString(R.st\u2026actions_widget_read_more)"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    move/from16 v10, p8

    .line 21
    invoke-direct/range {v2 .. v10}, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator;Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public handleAction()V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->getAnimationCoordinator()Lcom/amazon/ea/ui/AnimationCoordinator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/helpers/TextViewExpandableOnClickListener;->getParentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    return-void
.end method
