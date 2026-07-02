.class public final Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "JumpForwardBottomSheetController.kt"


# instance fields
.field private bottomSheet:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;

.field private isRecapsClosed:Z

.field private recapsLastPositionReadModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    .line 18
    new-instance v0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;

    invoke-direct {v0}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->bottomSheet:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;

    return-void
.end method


# virtual methods
.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 42
    iget-boolean v0, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->isRecapsClosed:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->isRecapsClosed:Z

    .line 45
    sget-object v1, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->INSTANCE:Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;

    const-string v2, "RecapsCloseAction"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->logPerfMarker(Ljava/lang/String;Z)V

    .line 47
    iget-object v1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->recapsLastPositionReadModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->getHasNextChapter()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->recapsLastPositionReadModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->getBookId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    const/4 v3, 0x2

    invoke-static {v1, p1, v0, v3, v2}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 48
    iget-object p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->bottomSheet:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;

    iget-object v0, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->recapsLastPositionReadModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;->showBottomSheet(Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;)V

    .line 49
    iget-object p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->recapsLastPositionReadModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->invalidateModel()V

    nop

    :cond_3
    return-void
.end method

.method public final onJumpForwardButtonClicked$KindleRecapsAndroidPlugin_release(Lcom/amazon/kindle/recaps/events/JumpForwardButtonClickedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->bottomSheet:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;->getActions()Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onPillClicked$KindleRecapsAndroidPlugin_release(Lcom/amazon/kindle/recaps/events/PillClickEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->bottomSheet:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;->getActions()Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onRecapsClosed(Lcom/amazon/kindle/recaps/events/RecapsClosedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->isRecapsClosed:Z

    .line 28
    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/events/RecapsClosedEvent;->getRecapsLastReadPositionModel()Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;->recapsLastPositionReadModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    return-void
.end method
