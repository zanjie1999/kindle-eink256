.class public abstract Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ReadingActionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadingActionsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadingActionsFragment.kt\ncom/amazon/readingactions/bottomsheet/ReadingActionsFragment\n*L\n1#1,134:1\n*E\n"
.end annotation


# instance fields
.field private fragmentId:Ljava/lang/String;

.field protected layoutView:Landroid/view/View;

.field private maxHeightPercentage:F

.field private minHeightDefaultPercentage:F

.field protected titleView:Landroid/view/View;

.field public titleWidget:Lcom/amazon/readingactions/ui/widget/TitleWidget;

.field protected viewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->maxHeightPercentage:F

    const v0, 0x3f19999a    # 0.6f

    .line 26
    iput v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->minHeightDefaultPercentage:F

    const-string v0, "UndefinedFragmentID"

    .line 31
    iput-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->fragmentId:Ljava/lang/String;

    return-void
.end method

.method private final scrollToTop()V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->layoutView:Landroid/view/View;

    if-eqz v0, :cond_6

    const-string v1, "layoutView"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 120
    sget v3, Lcom/amazon/kindle/ea/R$id;->readingactions_widget_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 122
    :goto_1
    iget-object v3, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->layoutView:Landroid/view/View;

    if-eqz v3, :cond_3

    sget v1, Lcom/amazon/kindle/ea/R$id;->nested_scroll_view:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 124
    new-instance v0, Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/amazon/ea/ui/AnimationCoordinator;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 125
    invoke-virtual {v0, v4}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToPosition(I)V

    goto :goto_2

    .line 122
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 120
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method protected final applyNavBarVisibilityChange(Z)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    .line 65
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 67
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final calculateMaxHeight()I
    .locals 2

    .line 100
    sget-object v0, Lcom/amazon/readingactions/ui/helpers/Display;->Companion:Lcom/amazon/readingactions/ui/helpers/Display$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/helpers/Display$Companion;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->maxHeightPercentage:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public abstract calculateMinHeight()I
.end method

.method protected final createListeners(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "cls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "EndActionsPlugin.sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    .line 41
    new-instance v0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$orientationEventListener$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$orientationEventListener$1;-><init>(Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;Lcom/amazon/kindle/krx/events/IMessageQueue;Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 50
    invoke-static {v0}, Lcom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry;->addListener(Landroid/view/OrientationEventListener;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->viewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$1;-><init>(Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_0
    const-string/jumbo p1, "viewGroup"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final getFragmentId()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->fragmentId:Ljava/lang/String;

    return-object v0
.end method

.method protected final getLayoutView()Landroid/view/View;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->layoutView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "layoutView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getMinHeightDefaultPercentage()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->minHeightDefaultPercentage:F

    return v0
.end method

.method protected final getTitleView()Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->titleView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "titleView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTitleWidget()Lcom/amazon/readingactions/ui/widget/TitleWidget;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->titleWidget:Lcom/amazon/readingactions/ui/widget/TitleWidget;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "titleWidget"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->viewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewGroup"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final hideDefaultDragIcon(Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 74
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "nextChild"

    .line 75
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 74
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "StartActionsFragment"

    const-string v1, "Error while setting visibility to hidden for chevron container"

    .line 77
    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final onCollapse()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->titleWidget:Lcom/amazon/readingactions/ui/widget/TitleWidget;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->updateTitleWidgetDescription(Z)V

    .line 114
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->scrollToTop()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "titleWidget"

    .line 113
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 88
    invoke-static {}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->finishContainerMetrics()V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "view!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->applyNavBarVisibilityChange(Z)V

    .line 95
    invoke-static {}, Lcom/amazon/readingactions/bottomsheet/OrientationEventListenerRegistry;->disableAllListeners()V

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onExpand()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->titleWidget:Lcom/amazon/readingactions/ui/widget/TitleWidget;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->updateTitleWidgetDescription(Z)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "titleWidget"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->applyNavBarVisibilityChange(Z)V

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public final postOnCreateView()V
    .locals 3

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->fragmentId:Ljava/lang/String;

    const-string v2, "ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->fragmentId:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final setLayoutView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->layoutView:Landroid/view/View;

    return-void
.end method

.method public final setMaxHeightPercentage(F)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->maxHeightPercentage:F

    return-void
.end method

.method protected final setTitleView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->titleView:Landroid/view/View;

    return-void
.end method

.method public final setTitleWidget(Lcom/amazon/readingactions/ui/widget/TitleWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->titleWidget:Lcom/amazon/readingactions/ui/widget/TitleWidget;

    return-void
.end method

.method protected final setViewGroup(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->viewGroup:Landroid/view/ViewGroup;

    return-void
.end method
