.class public final Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "AppCoreDebugPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final setUpButton(Landroid/view/ViewGroup;ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string p2, "button"

    .line 67
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setUpToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    const-string p2, "button"

    .line 59
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Enable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 62
    invoke-virtual {p1, p5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "App Core Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 7

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 24
    sget v1, Lcom/amazon/kindle/krl/R$layout;->app_core_debug_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    sget v3, Lcom/amazon/kindle/krl/R$id;->enable_new_pdoc_download_location:I

    .line 29
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isPdocDownloadLocationEnabled()Z

    move-result v5

    .line 30
    new-instance v6, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$1;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$1;-><init>(Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;)V

    const-string v4, "New Personal Document Location"

    move-object v1, p0

    move-object v2, v0

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;->setUpToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 37
    sget v1, Lcom/amazon/kindle/krl/R$id;->reset_pdoc_migration_flag:I

    .line 39
    new-instance v2, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$2;-><init>(Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;)V

    const-string v3, "Reset Personal Document Migration Flag"

    .line 36
    invoke-direct {p0, v0, v1, v3, v2}, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;->setUpButton(Landroid/view/ViewGroup;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 45
    sget v3, Lcom/amazon/kindle/krl/R$id;->enable_sideload_permission_changes:I

    .line 47
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isSideloadPermissionChangesEnabled()Z

    move-result v5

    .line 48
    new-instance v6, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$3;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider$getView$3;-><init>(Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;)V

    const-string v4, "Sideload Permission Changes"

    move-object v1, p0

    move-object v2, v0

    .line 44
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/debug/AppCoreDebugPageProvider;->setUpToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
