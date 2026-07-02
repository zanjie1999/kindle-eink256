.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetFragmentInitializer;
.super Ljava/lang/Object;
.source "BaseBottomSheetFragment.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetFragmentInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetFragmentInitializer;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetFragmentInitializer;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetFragmentInitializer;->INSTANCE:Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetFragmentInitializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;)Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetFragmentInitializer;->newInstance(Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    move-result-object p1

    return-object p1
.end method

.method public final newInstance(Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getDismissOnTapOutside()Z

    move-result v2

    const-string v3, "DISMISS_ON_TAP_OUTSIDE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getDismissWithSwipe()Z

    move-result v2

    const-string v3, "DISMISS_WITH_SWIPE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getHasDimBackground()Z

    move-result v2

    const-string v3, "HAS_DIM_BG"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getPeekHeight()I

    move-result v2

    const-string v3, "PEEK_HEIGHT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getSkipCollapsedState()Z

    move-result v2

    const-string v3, "SKIP_COLLAPSED_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v2

    const-string v3, "THEME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 60
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getForceShowDragIcon()Z

    move-result v2

    const-string v3, "FORCE_SHOW_DRAG_ICON"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getSetDefaultMaxWidth()Z

    move-result v2

    const-string v3, "SHOULD_SET_MAX_WIDTH"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetViewConfig;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->setChildFragment(Landroidx/fragment/app/Fragment;)V

    .line 64
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->setBehaviourEventHandler(Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;)V

    return-object v0
.end method
