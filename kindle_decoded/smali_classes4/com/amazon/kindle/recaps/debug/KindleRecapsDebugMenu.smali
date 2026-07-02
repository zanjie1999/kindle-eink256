.class public final Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "KindleRecapsDebugMenu.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final debugConfig:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;->debugConfig:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    return-void
.end method

.method public static final synthetic access$getDebugConfig$p(Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;)Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;->debugConfig:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Kindle Recaps Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 33
    sget v1, Lcom/amazon/kindle/recaps/R$layout;->recaps_debug_menu_page:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 35
    sget v1, Lcom/amazon/kindle/recaps/R$id;->recaps_enabled_check_box:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/widget/CheckBox;

    .line 36
    iget-object v2, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;->debugConfig:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    invoke-virtual {v2}, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;->getRecapsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 37
    new-instance v2, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu$getView$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu$getView$1;-><init>(Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.CheckBox"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
