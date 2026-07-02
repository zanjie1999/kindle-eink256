.class public Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;
.super Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;
.source "EndActionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/bottomsheet/EndActionsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndActionsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EndActionsFragment.kt\ncom/amazon/readingactions/bottomsheet/EndActionsFragment\n*L\n1#1,202:1\n*E\n"
.end annotation


# instance fields
.field private entryPoint:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

.field private final keyEventListener:Lcom/amazon/readingactions/ui/KeyEventListener;

.field private layoutController:Lcom/amazon/ea/ui/layout/LayoutController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;-><init>()V

    .line 35
    new-instance v0, Lcom/amazon/readingactions/ui/KeyEventListener;

    invoke-direct {v0}, Lcom/amazon/readingactions/ui/KeyEventListener;-><init>()V

    iput-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->keyEventListener:Lcom/amazon/readingactions/ui/KeyEventListener;

    return-void
.end method

.method private final activityOptionItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 186
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "EndActionsPlugin.sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "EndActions"

    const-string v1, "ActionBarClose"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final computeFirstWidgetHeight()I
    .locals 4

    .line 103
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$id;->rating_and_title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ea/R$id;->readingactions_widget_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v0, v3

    :cond_1
    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    .line 109
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_4
    :goto_1
    return v1

    .line 108
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3
.end method

.method private final createLayoutView(Lcom/amazon/ea/model/layout/LayoutModel;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "EndActionsFragment"

    if-nez v0, :cond_0

    const-string p1, "Application context is null"

    .line 115
    invoke-static {v3, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 118
    :cond_0
    sget-object v0, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder;->Companion:Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, p1, p0}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion;->createController(Landroid/app/Activity;Lcom/amazon/ea/model/layout/LayoutModel;Landroidx/fragment/app/Fragment;)Lcom/amazon/ea/ui/layout/LayoutController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Layout controller is null for model "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 123
    :cond_1
    iput-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    .line 124
    invoke-virtual {v0, p2}, Lcom/amazon/ea/ui/layout/LayoutController;->getView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private final showChromeIfNeeded()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->entryPoint:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->ERL:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->entryPoint:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->END_OF_BOOK:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->requestShowChrome()V

    :cond_1
    return-void
.end method


# virtual methods
.method public calculateMinHeight()I
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->computeFirstWidgetHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->calculateMaxHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    .line 98
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getMinHeightDefaultPercentage()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/ea/ui/layout/LayoutController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 39
    invoke-virtual {p0, p3}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->applyNavBarVisibilityChange(Z)V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/amazon/ea/EndActionsPlugin;->setCurrentActivity(Landroid/app/Activity;)V

    .line 43
    sget p3, Lcom/amazon/kindle/ea/R$layout;->readingactions_activity_overlay_main:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz p3, :cond_7

    .line 44
    invoke-virtual {p0, p3}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->setViewGroup(Landroid/view/ViewGroup;)V

    .line 45
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object p3

    sget v2, Lcom/amazon/kindle/ea/R$id;->readingactions_content_container:I

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_7

    .line 48
    iget-object v2, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->keyEventListener:Lcom/amazon/readingactions/ui/KeyEventListener;

    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/readingactions/ui/KeyEventListener;->register(Landroid/view/ViewGroup;)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "maxHeightPercentage"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/Float;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v2}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->setMaxHeightPercentage(F)V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "entryPoint"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    check-cast v2, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    iput-object v2, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->entryPoint:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    .line 53
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->layoutModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/model/layout/LayoutModel;

    if-eqz v2, :cond_7

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->createLayoutView(Lcom/amazon/ea/model/layout/LayoutModel;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v2}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->setLayoutView(Landroid/view/View;)V

    .line 57
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v3, "EndActionsPlugin.sdk"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    const-string v3, "EndActionsPlugin.sdk.readerManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 60
    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 61
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_6

    .line 64
    sget-object v3, Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget;->Companion:Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget$Companion;

    invoke-virtual {v3, v2}, Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget$Companion;->createTitleWidgetFromIBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/readingactions/ui/widget/TitleWidget;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->setTitleWidget(Lcom/amazon/readingactions/ui/widget/TitleWidget;)V

    .line 66
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getTitleWidget()Lcom/amazon/readingactions/ui/widget/TitleWidget;

    move-result-object v2

    invoke-virtual {v2, p3, p1}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->createView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    .line 68
    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    const-string/jumbo v3, "titleViewContainer"

    .line 71
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, -0x1

    .line 72
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 73
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 74
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getLayoutView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$array;->readingactions_bg_container:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 79
    sget v1, Lcom/amazon/kindle/ea/R$id;->title_widget:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->setTitleView(Landroid/view/View;)V

    goto :goto_4

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_6
    :goto_4
    invoke-virtual {p0, p2}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->hideDefaultDragIcon(Landroid/view/ViewGroup;)V

    .line 84
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 86
    const-class p1, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->createListeners(Ljava/lang/Class;)V

    .line 87
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->postOnCreateView()V

    .line 89
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->onDestroy()V

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ea/ui/layout/LayoutController;->onDestroy()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->keyEventListener:Lcom/amazon/readingactions/ui/KeyEventListener;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/KeyEventListener;->unregister()V
    :try_end_0
    .catch Lkotlin/UninitializedPropertyAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 151
    :goto_0
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->showChromeIfNeeded()V

    return-void
.end method

.method public onExpand()V
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->onExpand()V

    .line 166
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ea/ui/layout/LayoutController;->onRender()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 170
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->activityOptionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ea/ui/layout/LayoutController;->onPause()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 134
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/ea/ui/layout/LayoutController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 160
    invoke-super {p0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ea/ui/layout/LayoutController;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/ea/ui/layout/LayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
