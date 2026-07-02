.class public Lcom/amazon/readingactions/bottomsheet/BottomSheet;
.super Ljava/lang/Object;
.source "BottomSheet.kt"

# interfaces
.implements Lcom/amazon/readingactions/bottomsheet/IBottomSheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/bottomsheet/BottomSheet$Companion;
    }
.end annotation


# instance fields
.field private actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

.field private final asyncTaskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

.field private final config:Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

.field private dimBackgroundEnabled:Z

.field private dragging:Z

.field private fullSize:Z

.field private peekHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/bottomsheet/BottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/bottomsheet/BottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncTaskExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->fullSize:Z

    iput-object p2, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->config:Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    iput-object p3, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->asyncTaskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    .line 34
    invoke-virtual {p2}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getHasDimBackground()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->dimBackgroundEnabled:Z

    .line 35
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->config:Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getPeekHeight()I

    move-result p1

    iput p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->peekHeight:I

    return-void
.end method

.method public static final synthetic access$getActions$p(Lcom/amazon/readingactions/bottomsheet/BottomSheet;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    return-object p0
.end method

.method private final executePostOnUIThread(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->asyncTaskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    new-instance v1, Lcom/amazon/readingactions/bottomsheet/BottomSheet$executePostOnUIThread$1;

    invoke-direct {v1, p1}, Lcom/amazon/readingactions/bottomsheet/BottomSheet$executePostOnUIThread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final setState(I)V
    .locals 1

    .line 144
    new-instance v0, Lcom/amazon/readingactions/bottomsheet/BottomSheet$setState$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/readingactions/bottomsheet/BottomSheet$setState$1;-><init>(Lcom/amazon/readingactions/bottomsheet/BottomSheet;I)V

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->executePostOnUIThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 1

    .line 60
    sget-object v0, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->COLLAPSED:Lcom/amazon/readingactions/bottomsheet/BottomSheetState;

    invoke-virtual {v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->setState(I)V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->fullSize:Z

    return-void
.end method

.method public disableDimBackgroundWithAnimation()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->hasDimBackground()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/amazon/readingactions/bottomsheet/BottomSheet$disableDimBackgroundWithAnimation$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet$disableDimBackgroundWithAnimation$1;-><init>(Lcom/amazon/readingactions/bottomsheet/BottomSheet;)V

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->executePostOnUIThread(Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->dimBackgroundEnabled:Z

    return-void
.end method

.method public enableDimBackgroundWithAnimation()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->hasDimBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/amazon/readingactions/bottomsheet/BottomSheet$enableDimBackgroundWithAnimation$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet$enableDimBackgroundWithAnimation$1;-><init>(Lcom/amazon/readingactions/bottomsheet/BottomSheet;)V

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->executePostOnUIThread(Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->dimBackgroundEnabled:Z

    return-void
.end method

.method public expand()V
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->EXPANDED:Lcom/amazon/readingactions/bottomsheet/BottomSheetState;

    invoke-virtual {v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheetState;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->setState(I)V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->fullSize:Z

    return-void
.end method

.method public final hasDimBackground()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->dimBackgroundEnabled:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->dragging:Z

    return v0
.end method

.method public isFullSize()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->fullSize:Z

    return v0
.end method

.method public onDrag()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->dragging:Z

    return-void
.end method

.method public onDraggingStop()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->dragging:Z

    return-void
.end method

.method public present(Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)Z
    .locals 2

    const-string v0, "behaviourEventHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-class v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->config:Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;->present(Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    .line 46
    iget-boolean p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->fullSize:Z

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->expand()V

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;->setMaxHeight(I)V

    :cond_0
    return-void
.end method

.method public setPeekHeight(I)V
    .locals 1

    .line 105
    iput p1, p0, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->peekHeight:I

    .line 106
    new-instance v0, Lcom/amazon/readingactions/bottomsheet/BottomSheet$setPeekHeight$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/readingactions/bottomsheet/BottomSheet$setPeekHeight$1;-><init>(Lcom/amazon/readingactions/bottomsheet/BottomSheet;I)V

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/bottomsheet/BottomSheet;->executePostOnUIThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
