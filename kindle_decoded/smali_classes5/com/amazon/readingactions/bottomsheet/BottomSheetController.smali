.class public Lcom/amazon/readingactions/bottomsheet/BottomSheetController;
.super Ljava/lang/Object;
.source "BottomSheetController.kt"

# interfaces
.implements Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/bottomsheet/BottomSheetController$Companion;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BottomSheetController"


# instance fields
.field private final bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

.field private final fragment:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

.field private lastOffset:Ljava/lang/Float;

.field private final pubsubManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;Lcom/amazon/readingactions/bottomsheet/IBottomSheet;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomSheet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pubsubManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->fragment:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    iput-object p2, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    iput-object p3, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->pubsubManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    return-void
.end method

.method public static final synthetic access$getBottomSheet$p(Lcom/amazon/readingactions/bottomsheet/BottomSheetController;)Lcom/amazon/readingactions/bottomsheet/IBottomSheet;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    return-object p0
.end method

.method private final disableDimBackgroundWithAnimation()V
    .locals 1

    .line 162
    new-instance v0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController$disableDimBackgroundWithAnimation$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController$disableDimBackgroundWithAnimation$1;-><init>(Lcom/amazon/readingactions/bottomsheet/BottomSheetController;)V

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->executeWithFragmentContext(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final enableDimBackgroundWithAnimation()V
    .locals 1

    .line 158
    new-instance v0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController$enableDimBackgroundWithAnimation$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController$enableDimBackgroundWithAnimation$1;-><init>(Lcom/amazon/readingactions/bottomsheet/BottomSheetController;)V

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->executeWithFragmentContext(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final executeWithFragmentContext(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->isFragmentActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "BottomSheetController"

    const-string v0, "Fragment has no context, skipping execution"

    .line 169
    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final isDraggingDown(F)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {v0}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->lastOffset:Ljava/lang/Float;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isDraggingUp(F)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {v0}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->lastOffset:Ljava/lang/Float;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final onCollapse()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->disableDimBackgroundWithAnimation()V

    .line 137
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->fragment:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {v0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getFragmentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/ea/metrics/BottomSheetActions;->COLLAPSE:Lcom/amazon/ea/metrics/BottomSheetActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 138
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->fragment:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {v0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->onCollapse()V

    return-void
.end method

.method private final onDrag()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {v0}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->onDrag()V

    return-void
.end method

.method private final onExpand()V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->enableDimBackgroundWithAnimation()V

    .line 131
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->fragment:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {v0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getFragmentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/ea/metrics/BottomSheetActions;->EXPAND:Lcom/amazon/ea/metrics/BottomSheetActions;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 132
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->fragment:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {v0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->onExpand()V

    return-void
.end method

.method private final onHidden()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->pubsubManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bottomSheetPillClickEventHandler(Lcom/amazon/readingactions/bottomsheet/events/PillClickEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {p1}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->isFullSize()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {p1}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->collapse()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {p1}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->expand()V

    :goto_0
    return-void
.end method

.method public final expandEventHandler(Lcom/amazon/readingactions/bottomsheet/events/ExpandEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {p1}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->isFullSize()Z

    move-result p1

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {p1}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->expand()V

    :cond_0
    return-void
.end method

.method public final isFragmentActive()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->fragment:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->fragment:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->fragment:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "fragment.parentFragment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSlide(Landroid/view/View;F)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->lastOffset:Ljava/lang/Float;

    if-eqz p1, :cond_3

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->isDraggingDown(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {p1}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->onDraggingStop()V

    .line 101
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->disableDimBackgroundWithAnimation()V

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0, p2}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->isDraggingUp(F)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {p1}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->onDraggingStop()V

    .line 104
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->enableDimBackgroundWithAnimation()V

    .line 106
    :cond_2
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->lastOffset:Ljava/lang/Float;

    return-void

    .line 94
    :cond_3
    :goto_1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->lastOffset:Ljava/lang/Float;

    return-void
.end method

.method public onStateChange(Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object p1, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->EXPANDED:Lcom/amazon/readingactions/bottomsheet/BottomSheetState;

    invoke-virtual {p1}, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->getValue()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->onExpand()V

    goto :goto_0

    .line 115
    :cond_0
    sget-object p1, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->COLLAPSED:Lcom/amazon/readingactions/bottomsheet/BottomSheetState;

    invoke-virtual {p1}, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->getValue()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->onCollapse()V

    goto :goto_0

    .line 119
    :cond_1
    sget-object p1, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->DRAGGING:Lcom/amazon/readingactions/bottomsheet/BottomSheetState;

    invoke-virtual {p1}, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->getValue()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->onDrag()V

    goto :goto_0

    .line 123
    :cond_2
    sget-object p1, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->HIDDEN:Lcom/amazon/readingactions/bottomsheet/BottomSheetState;

    invoke-virtual {p1}, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->getValue()I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 124
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->onHidden()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final recomputeHeight(Lcom/amazon/readingactions/bottomsheet/events/HeightChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->fragment:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {p1}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->calculateMinHeight()I

    move-result p1

    .line 73
    new-instance v0, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;

    invoke-direct {v0, p1}, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->refreshHeight(Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;)V

    return-void
.end method

.method public final refreshHeight(Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-virtual {p1}, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;->getHeight()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->setPeekHeight(I)V

    .line 55
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->fragment:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {v0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->calculateMaxHeight()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->setMaxHeight(I)V

    .line 57
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {p1}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->isFullSize()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->enableDimBackgroundWithAnimation()V

    .line 59
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->onExpand()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->disableDimBackgroundWithAnimation()V

    .line 62
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->onCollapse()V

    :goto_0
    return-void
.end method

.method public final start()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->bottomSheet:Lcom/amazon/readingactions/bottomsheet/IBottomSheet;

    invoke-interface {v0, p0}, Lcom/amazon/readingactions/bottomsheet/IBottomSheet;->present(Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheetController;->pubsubManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
