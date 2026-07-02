.class public abstract Lcom/amazon/falkor/BottomSheetController;
.super Ljava/lang/Object;
.source "BottomSheetController.kt"


# instance fields
.field private volatile currentBottomSheet:Lcom/amazon/falkor/CurrentBottomSheet;

.field private final id:Ljava/lang/String;

.field private final messageQueue:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/BottomSheetController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/BottomSheetController;->id:Ljava/lang/String;

    .line 61
    new-instance p1, Lcom/amazon/falkor/BottomSheetController$messageQueue$1;

    invoke-direct {p1, p0}, Lcom/amazon/falkor/BottomSheetController$messageQueue$1;-><init>(Lcom/amazon/falkor/BottomSheetController;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/BottomSheetController;->messageQueue:Lkotlin/Lazy;

    return-void
.end method

.method private final getCurrentTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->isCurrentAreaInDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->DARK:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;->LIGHT:Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    :goto_0
    return-object v0
.end method

.method private final isSimilarFragmentVisible(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/amazon/falkor/BottomSheetController;->isBottomSheetVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/falkor/BottomSheetController;->currentBottomSheet:Lcom/amazon/falkor/CurrentBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/falkor/CurrentBottomSheet;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final isTalkbackOn(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final showBottomSheet(Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;)V
    .locals 1

    .line 137
    new-instance v0, Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/falkor/BottomSheetController$showBottomSheet$runnable$1;-><init>(Lcom/amazon/falkor/BottomSheetController;Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;Landroidx/fragment/app/Fragment;)V

    .line 149
    sget-object p1, Lcom/amazon/falkor/utils/FalkorThreadUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorThreadUtils;

    iget-object p2, p0, Lcom/amazon/falkor/BottomSheetController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/falkor/utils/FalkorThreadUtils;->runOrSubmitOnMainThread(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic showBottomSheetFragment$default(Lcom/amazon/falkor/BottomSheetController;Landroidx/fragment/app/Fragment;ZZZILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 91
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/falkor/BottomSheetController;->showBottomSheetFragment(Landroidx/fragment/app/Fragment;ZZZ)V

    return-void

    .line 0
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showBottomSheetFragment"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized dismissSheet()V
    .locals 2

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/amazon/falkor/BottomSheetController;->currentBottomSheet:Lcom/amazon/falkor/CurrentBottomSheet;

    const/4 v1, 0x0

    .line 168
    iput-object v1, p0, Lcom/amazon/falkor/BottomSheetController;->currentBottomSheet:Lcom/amazon/falkor/CurrentBottomSheet;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/amazon/falkor/CurrentBottomSheet;->getActions()Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getCurrentBottomSheet()Lcom/amazon/falkor/CurrentBottomSheet;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/falkor/BottomSheetController;->currentBottomSheet:Lcom/amazon/falkor/CurrentBottomSheet;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/falkor/BottomSheetController;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getJSInterface()Lcom/amazon/falkor/FalkorJSInterface;
.end method

.method protected final getMessageQueue()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazon/falkor/BottomSheetController;->messageQueue:Lkotlin/Lazy;

    return-object v0
.end method

.method protected final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/falkor/BottomSheetController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method protected final isBottomSheetVisible()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/falkor/BottomSheetController;->currentBottomSheet:Lcom/amazon/falkor/CurrentBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/falkor/CurrentBottomSheet;->getActions()Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewActions;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public abstract isCurrentAreaInDarkMode()Z
.end method

.method public final setCurrentBottomSheet(Lcom/amazon/falkor/CurrentBottomSheet;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/falkor/BottomSheetController;->currentBottomSheet:Lcom/amazon/falkor/CurrentBottomSheet;

    return-void
.end method

.method public declared-synchronized showBottomSheetFragment(Landroidx/fragment/app/Fragment;ZZZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    const-string v2, "fragment"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct/range {p0 .. p1}, Lcom/amazon/falkor/BottomSheetController;->isSimilarFragmentVisible(Landroidx/fragment/app/Fragment;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 93
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/amazon/falkor/BottomSheetController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "sdk.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/amazon/falkor/BottomSheetController;->isTalkbackOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    new-instance v12, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;

    .line 98
    iget-object v3, v1, Lcom/amazon/falkor/BottomSheetController;->id:Ljava/lang/String;

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/amazon/falkor/BottomSheetController;->getCurrentTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x7fffffff

    const/4 v9, 0x1

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v2, v12

    move-object/from16 v4, p1

    .line 97
    invoke-direct/range {v2 .. v11}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 105
    :cond_1
    new-instance v15, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;

    .line 106
    iget-object v3, v1, Lcom/amazon/falkor/BottomSheetController;->id:Ljava/lang/String;

    const/4 v5, 0x0

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/amazon/falkor/BottomSheetController;->getCurrentTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0x180

    const/4 v14, 0x0

    move-object v2, v15

    move-object/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p4

    .line 105
    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;IZZZLcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v15

    .line 115
    :goto_0
    invoke-direct {v1, v0, v12}, Lcom/amazon/falkor/BottomSheetController;->showBottomSheet(Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showModalBottomSheetFragment(Landroidx/fragment/app/Fragment;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/amazon/falkor/BottomSheetController;->isSimilarFragmentVisible(Landroidx/fragment/app/Fragment;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 124
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;

    .line 127
    iget-object v2, p0, Lcom/amazon/falkor/BottomSheetController;->id:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/amazon/falkor/BottomSheetController;->getCurrentTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x7fffffff

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 126
    invoke-direct/range {v1 .. v10}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;ZZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/amazon/falkor/BottomSheetController;->showBottomSheet(Landroidx/fragment/app/Fragment;Lcom/amazon/kindle/bottomsheet/BaseBottomSheetViewConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
