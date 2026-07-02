.class public final Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;
.super Ljava/lang/Object;
.source "JumpForwardBottomSheet.kt"


# instance fields
.field private actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActions()Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;->actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    return-object v0
.end method

.method public final showBottomSheet(Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;)V
    .locals 11

    const-string v0, "recapsLastReadPositionModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v3, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;

    invoke-direct {v3}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->getBookNextChapterStartPosition()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "NEXT_POSITION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->getRecapLastReadChapterTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RECAP_LAST_READ_CHAPTER_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->getRecapNextChapterTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RECAP_NEXT_CHAPTER_TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    sget-object p1, Lcom/amazon/kindle/recaps/util/DarkModeUtil;->INSTANCE:Lcom/amazon/kindle/recaps/util/DarkModeUtil;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/util/DarkModeUtil;->isDarkThemed()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->DARK:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->LIGHT:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    :goto_0
    move-object v4, p1

    .line 35
    new-instance p1, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v10, 0x0

    const-string v2, "JUMP_FORWARD_BOTTOM_SHEET"

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    const-class v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenter;->present(Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;)Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheet;->actions:Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    :cond_2
    return-void
.end method
