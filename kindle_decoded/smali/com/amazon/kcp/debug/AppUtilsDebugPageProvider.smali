.class public final Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "AppUtilsDebugPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZZLjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    const-string p2, "button"

    .line 92
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    if-eqz p5, :cond_0

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Disable "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Enable "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p1, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 97
    invoke-virtual {p1, p7}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 99
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method static synthetic setupToggleButton$default(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;Landroid/view/ViewGroup;ILjava/lang/String;ZZLjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    const-string v0, "disabled"

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p6

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v8, p7

    .line 89
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZZLjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "App Utils"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 15

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 25
    sget v1, Lcom/amazon/kindle/krl/R$layout;->app_utils_debug_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    sget v3, Lcom/amazon/kindle/krl/R$id;->enable_webview_debugging:I

    .line 28
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isWebViewDebuggingEnabled()Z

    move-result v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 29
    new-instance v8, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$1;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$1;-><init>(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)V

    const/16 v13, 0x30

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    const-string v4, "Webview Debugging"

    move-object v1, p0

    move-object v2, v0

    .line 27
    invoke-static/range {v1 .. v10}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->setupToggleButton$default(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;Landroid/view/ViewGroup;ILjava/lang/String;ZZLjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ILjava/lang/Object;)V

    .line 36
    sget v3, Lcom/amazon/kindle/krl/R$id;->use_gamma_endpoints:I

    .line 37
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isUsingGammaEndpoints()Z

    move-result v5

    .line 38
    new-instance v8, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$2;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$2;-><init>(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)V

    const-string v4, "Gamma Endpoints"

    .line 36
    invoke-static/range {v1 .. v10}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->setupToggleButton$default(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;Landroid/view/ViewGroup;ILjava/lang/String;ZZLjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ILjava/lang/Object;)V

    .line 44
    sget v3, Lcom/amazon/kindle/krl/R$id;->toggle_falkor:I

    .line 45
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isFalkorEnabled()Z

    move-result v5

    .line 46
    new-instance v8, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$3;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$3;-><init>(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)V

    const-string v4, "Falkor"

    .line 44
    invoke-static/range {v1 .. v10}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->setupToggleButton$default(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;Landroid/view/ViewGroup;ILjava/lang/String;ZZLjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ILjava/lang/Object;)V

    .line 52
    sget v1, Lcom/amazon/kindle/krl/R$id;->app_expan_debug:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$4;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$4;-><init>(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget v3, Lcom/amazon/kindle/krl/R$id;->dark_mode_phase_one:I

    .line 60
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isDarkModePhaseOneEnabled()Z

    move-result v5

    .line 61
    new-instance v8, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$5;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$5;-><init>(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)V

    const-string v4, "Dark Mode Phase One"

    move-object v1, p0

    move-object v2, v0

    .line 59
    invoke-static/range {v1 .. v10}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->setupToggleButton$default(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;Landroid/view/ViewGroup;ILjava/lang/String;ZZLjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ILjava/lang/Object;)V

    .line 67
    sget v3, Lcom/amazon/kindle/krl/R$id;->dark_mode_phase_two:I

    .line 68
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isDarkModePhaseTwoEnabled()Z

    move-result v5

    .line 69
    new-instance v8, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$6;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$6;-><init>(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)V

    const-string v4, "Dark Mode Phase Two"

    move v6, v11

    move-object v7, v12

    move v9, v13

    move-object v10, v14

    .line 67
    invoke-static/range {v1 .. v10}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->setupToggleButton$default(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;Landroid/view/ViewGroup;ILjava/lang/String;ZZLjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;ILjava/lang/Object;)V

    .line 75
    sget v3, Lcom/amazon/kindle/krl/R$id;->dark_mode_phase_three:I

    .line 76
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isDarkModePhaseThreeEnabled()Z

    move-result v5

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 79
    :goto_0
    new-instance v8, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$7;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider$getView$7;-><init>(Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;)V

    const-string v4, "Dark Mode Phase Three"

    const-string v7, "Disabled pre-Android Q"

    move-object v1, p0

    move-object v2, v0

    .line 75
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/debug/AppUtilsDebugPageProvider;->setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZZLjava/lang/String;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
