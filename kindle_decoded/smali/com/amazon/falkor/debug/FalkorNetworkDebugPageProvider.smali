.class public final Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "FalkorNetworkDebugPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/falkor/FalkorPluginPrefs;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falkorPrefs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    return-void
.end method

.method public static final synthetic access$getFalkorPrefs$p(Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;)Lcom/amazon/falkor/FalkorPluginPrefs;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    return-object p0
.end method

.method private final setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    const-string p2, "button"

    .line 71
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Enable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 74
    invoke-virtual {p1, p5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Falkor Network Utils"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 7

    .line 24
    iget-object v0, p0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 25
    sget v1, Lcom/amazon/falkor/R$layout;->network_debug:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    sget v3, Lcom/amazon/falkor/R$id;->toggle_force_show_fave_bottom_sheet:I

    .line 28
    sget-object v1, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isForceShowFaveBottomSheetEnabled()Z

    move-result v5

    .line 29
    sget-object v6, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$1;->INSTANCE:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$1;

    const-string v4, "Force Show Fave BTS"

    move-object v1, p0

    move-object v2, v0

    .line 27
    invoke-direct/range {v1 .. v6}, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    sget v3, Lcom/amazon/falkor/R$id;->toggle_pre_prod_endpoint:I

    .line 34
    iget-object v1, p0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefs;

    invoke-interface {v1}, Lcom/amazon/falkor/FalkorPluginPrefs;->getIsPreProdEnabled()Z

    move-result v5

    .line 35
    new-instance v6, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$2;

    invoke-direct {v6, p0}, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$2;-><init>(Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;)V

    const-string v4, "Pre Prod Webviews"

    move-object v1, p0

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 39
    sget v3, Lcom/amazon/falkor/R$id;->toggle_page_not_found_error:I

    .line 40
    sget-object v1, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isPageNotFoundErrorDebugEnabled()Z

    move-result v5

    .line 41
    sget-object v6, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$3;->INSTANCE:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$3;

    const-string v4, "404 Server Failure"

    move-object v1, p0

    .line 39
    invoke-direct/range {v1 .. v6}, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    sget v3, Lcom/amazon/falkor/R$id;->toggle_internal_server_error:I

    .line 46
    sget-object v1, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isInternalServerErrorDebugEnabled()Z

    move-result v5

    .line 47
    sget-object v6, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$4;->INSTANCE:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$4;

    const-string v4, "500 Server Failure"

    move-object v1, p0

    .line 45
    invoke-direct/range {v1 .. v6}, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    sget v3, Lcom/amazon/falkor/R$id;->toggle_episode_info_error:I

    .line 52
    sget-object v1, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isEpisodeInfoErrorDebugEnabled()Z

    move-result v5

    .line 53
    sget-object v6, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$5;->INSTANCE:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$5;

    const-string v4, "Episode info error"

    move-object v1, p0

    .line 51
    invoke-direct/range {v1 .. v6}, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    sget v3, Lcom/amazon/falkor/R$id;->toggle_smd_error:I

    .line 58
    sget-object v1, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isSMDErrorDebugEnabled()Z

    move-result v5

    .line 59
    sget-object v6, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$6;->INSTANCE:Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider$getView$6;

    const-string v4, "SMD error"

    move-object v1, p0

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;->setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
