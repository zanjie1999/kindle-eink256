.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/ModalBottomSheetFragmentInitializer;
.super Ljava/lang/Object;
.source "BaseModalBottomSheetFragment.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/krx/ui/bottomsheet/ModalBottomSheetFragmentInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/ui/bottomsheet/ModalBottomSheetFragmentInitializer;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/ModalBottomSheetFragmentInitializer;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/ui/bottomsheet/ModalBottomSheetFragmentInitializer;->INSTANCE:Lcom/amazon/kindle/krx/ui/bottomsheet/ModalBottomSheetFragmentInitializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;)Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;-><init>()V

    .line 32
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getSkipCollapsedState()Z

    move-result v2

    const-string v3, "SKIP_COLLAPSED_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getTheme()Lcom/amazon/kindle/bottomsheet/BottomSheetTheme;

    move-result-object v2

    const-string v3, "THEME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 35
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getShowFullHeight()Z

    move-result v2

    const-string v3, "SHOW_FULL_HEIGHT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getSetDefaultMaxWidth()Z

    move-result v2

    const-string v3, "SHOULD_SET_MAX_WIDTH"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getPeekHeight()I

    move-result v2

    const-string v3, "MODAL_PEEK_HEIGHT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kindle/bottomsheet/ModalBottomSheetViewConfig;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->setChildFragment(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method
