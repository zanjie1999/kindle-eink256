.class public Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;
.super Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;
.source "StartActionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/bottomsheet/StartActionsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartActionsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartActionsFragment.kt\ncom/amazon/readingactions/bottomsheet/StartActionsFragment\n*L\n1#1,159:1\n*E\n"
.end annotation


# instance fields
.field private layout:Lcom/amazon/startactions/ui/layout/Layout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildTitleWidget(Lcom/amazon/ea/sidecar/def/Sidecar;Lcom/amazon/startactions/ui/layout/Layout;)Lcom/amazon/readingactions/ui/widget/TitleWidget;
    .locals 6

    const-string/jumbo v0, "sidecar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/Sidecar;->widgetIDToWidget:Ljava/util/Map;

    const-string v1, "headerWidget"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 101
    new-instance v2, Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;

    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;-><init>(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;Ljava/lang/String;)V

    .line 102
    sget-object v3, Lcom/amazon/readingactions/helpers/WeblabManager;->Companion:Lcom/amazon/readingactions/helpers/WeblabManager$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v1}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->shouldSABSETitleIncludeTTR$default(Lcom/amazon/readingactions/helpers/WeblabManager$Companion;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/Sidecar;->widgetIDToWidget:Ljava/util/Map;

    const-string/jumbo v1, "timeToReadWidget"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    if-eqz p1, :cond_0

    .line 105
    new-instance v1, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;

    invoke-direct {v1, p1, v0, p2}, Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;-><init>(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;Lcom/amazon/startactions/ui/layout/Layout;)V

    .line 106
    new-instance p1, Lcom/amazon/readingactions/ui/widget/TitleWidget;

    invoke-direct {p1, v2, v1}, Lcom/amazon/readingactions/ui/widget/TitleWidget;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;Lcom/amazon/readingactions/ui/widget/title/TitleWidgetAdditionalData;)V

    return-object p1

    .line 104
    :cond_0
    new-instance p1, Lcom/amazon/readingactions/ui/widget/TitleWidget;

    invoke-direct {p1, v2}, Lcom/amazon/readingactions/ui/widget/TitleWidget;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;)V

    return-object p1

    .line 108
    :cond_1
    new-instance p1, Lcom/amazon/readingactions/ui/widget/TitleWidget;

    invoke-direct {p1, v2}, Lcom/amazon/readingactions/ui/widget/TitleWidget;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;)V

    return-object p1

    :cond_2
    return-object v1
.end method

.method public calculateMinHeight()I
    .locals 5

    .line 113
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$id;->header_widget_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 115
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/ea/R$id;->readingactions_goodreads_shelf_widget_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    instance-of v4, v3, Landroid/view/View;

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v3

    :goto_3
    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_5

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getTitleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v2, v1

    .line 121
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->calculateMaxHeight()I

    move-result v0

    if-ge v2, v0, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    if-ge v1, v0, :cond_7

    goto :goto_4

    :cond_7
    int-to-float v0, v0

    .line 125
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getMinHeightDefaultPercentage()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v1, v0

    :goto_4
    return v1
.end method

.method public final createLayoutView(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/ui/layout/Layout;)Landroid/view/View;
    .locals 2

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 142
    :cond_0
    new-instance v0, Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-direct {v0, p1, v1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;-><init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;)V

    .line 143
    invoke-virtual {v0, p2}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->setLayout(Lcom/amazon/startactions/ui/layout/Layout;)V

    .line 145
    invoke-interface {p2, v0, v1}, Lcom/amazon/startactions/ui/layout/Layout;->createView(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 40
    invoke-virtual {p0, p3}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->applyNavBarVisibilityChange(Z)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/amazon/ea/EndActionsPlugin;->setCurrentActivity(Landroid/app/Activity;)V

    .line 44
    sget-object p3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "EndActionsPlugin.sdk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p3

    const-string v0, "EndActionsPlugin.sdk.readerManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "maxHeightPercentage"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v1}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->setMaxHeightPercentage(F)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "sidecarRetriever"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    check-cast v1, Lcom/amazon/readingactions/helpers/ISidecarRetriever;

    if-eqz v1, :cond_c

    .line 52
    invoke-interface {v1, p3}, Lcom/amazon/readingactions/helpers/ISidecarRetriever;->retrieve(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v1

    .line 54
    invoke-static {p3, v1}, Lcom/amazon/readingactions/ui/layout/StartActionsLayoutFactory;->create(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 55
    iput-object v2, p0, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    if-eqz v2, :cond_b

    .line 57
    invoke-interface {v2}, Lcom/amazon/startactions/ui/layout/Layout;->loadData()V

    .line 59
    sget v2, Lcom/amazon/kindle/ea/R$layout;->readingactions_activity_overlay_main:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_a

    .line 60
    invoke-virtual {p0, v2}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->setViewGroup(Landroid/view/ViewGroup;)V

    .line 62
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/ea/R$id;->readingactions_content_container:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_a

    .line 65
    iget-object v4, p0, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    if-eqz v4, :cond_9

    invoke-virtual {p0, p3, v4}, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;->createLayoutView(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/ui/layout/Layout;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p0, p3}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->setLayoutView(Landroid/view/View;)V

    const-string/jumbo p3, "sidecar"

    .line 67
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    if-eqz p3, :cond_7

    invoke-virtual {p0, v1, p3}, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;->buildTitleWidget(Lcom/amazon/ea/sidecar/def/Sidecar;Lcom/amazon/startactions/ui/layout/Layout;)Lcom/amazon/readingactions/ui/widget/TitleWidget;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p0, p3}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->setTitleWidget(Lcom/amazon/readingactions/ui/widget/TitleWidget;)V

    .line 69
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getTitleWidget()Lcom/amazon/readingactions/ui/widget/TitleWidget;

    move-result-object p3

    invoke-virtual {p3, v2, p1}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->createView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    .line 71
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 72
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of v1, p3, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p3

    :goto_3
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_4

    const/4 p3, 0x3

    const-string/jumbo v1, "titleViewContainer"

    .line 76
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p3, -0x1

    .line 77
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 78
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 79
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_bg_container:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->hideDefaultDragIcon(Landroid/view/ViewGroup;)V

    .line 87
    sget p2, Lcom/amazon/kindle/ea/R$id;->title_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->setTitleView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 91
    const-class p1, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->createListeners(Ljava/lang/Class;)V

    .line 92
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->postOnCreateView()V

    .line 94
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1

    .line 87
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-object v0

    .line 67
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_8
    return-object v0

    .line 65
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_a
    return-object v0

    .line 57
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_c
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 149
    invoke-super {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->onDestroy()V

    .line 151
    :try_start_0
    sget-object v0, Lcom/amazon/readingactions/helpers/WeblabManager;->Companion:Lcom/amazon/readingactions/helpers/WeblabManager$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->isGRAutoshelfEnabledInSABSE(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;->layout:Lcom/amazon/startactions/ui/layout/Layout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/startactions/ui/layout/Layout;->onUiDismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StartActionsFragment"

    const-string v2, "Error clearing up SA fragment"

    .line 155
    invoke-static {v1, v2, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
