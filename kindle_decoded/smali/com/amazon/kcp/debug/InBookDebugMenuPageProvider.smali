.class public final Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "InBookDebugMenuPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final configureLaunchActivityButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 150
    sget v0, Lcom/amazon/kindle/krl/R$id;->launch_debug_paging_buttons_activity:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "launchActivityButton"

    .line 151
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Launch Debug Command Bar Activity"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    new-instance v0, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$configureLaunchActivityButton$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$configureLaunchActivityButton$1;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const-string/jumbo p2, "switch"

    .line 162
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<b><big>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</big></b><br/><small>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</small><br/>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p1, p5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 164
    invoke-virtual {p1, p6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "In Book Debug Options"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 8

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 22
    sget v1, Lcom/amazon/kindle/krl/R$layout;->in_book_debug_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->configureLaunchActivityButton(Landroid/view/ViewGroup;)V

    .line 27
    sget v3, Lcom/amazon/kindle/krl/R$id;->docviewer_line_spacing:I

    .line 30
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->calculateLineSpacingInDocViewer()Z

    move-result v6

    .line 31
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$1;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$1;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "Calculate Line Spacing in Doc Viewer"

    const-string v5, "Enabling this to calculate line spacing in docViewer."

    move-object v1, p0

    move-object v2, v0

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 37
    sget v3, Lcom/amazon/kindle/krl/R$id;->nln_rtl:I

    .line 40
    sget-boolean v6, Lcom/amazon/kcp/debug/DebugUtils;->RTL_CONTENT_SUPPORT_FOR_NLN:Z

    .line 41
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$2;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$2;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "RTL Content Support for NLN"

    const-string v5, "Enabling this for RTL Content Support for NLN."

    .line 36
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    sget v3, Lcom/amazon/kindle/krl/R$id;->test_dictionary_debug:I

    .line 50
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areTestDictionariesEnabled()Z

    move-result v6

    .line 51
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$3;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$3;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "Test Dictionaries"

    const-string v5, "Enabling this for test dictionaries. Restart app for effects to apply."

    .line 46
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    sget v3, Lcom/amazon/kindle/krl/R$id;->positions_in_empty_marginals:I

    .line 60
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isShowPositionsInMarginalsEnabled()Z

    move-result v6

    .line 61
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$4;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$4;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "Show positions instead of empty marginals"

    const-string v5, "Enabling this to show positions instead of empty marginals."

    .line 56
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    sget v3, Lcom/amazon/kindle/krl/R$id;->debug_upsell:I

    .line 70
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isDebugUpsellEnabled()Z

    move-result v6

    .line 71
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$5;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$5;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "Debug Upsell"

    const-string v5, "Enabling this for debug upsell."

    .line 66
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    sget v3, Lcom/amazon/kindle/krl/R$id;->new_orientation_lock_debug:I

    .line 80
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isNewOrientationLockEnabled()Z

    move-result v6

    .line 81
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$6;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$6;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "New Orientation Lock"

    const-string v5, "Enabling this for new orientation lock."

    .line 76
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    sget v3, Lcom/amazon/kindle/krl/R$id;->orientation_lock_tap_debug:I

    .line 90
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isOrientationLockTapEnabled()Z

    move-result v6

    .line 91
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$7;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$7;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "Orientation Lock Tap"

    const-string v5, "Enabling this for orientation lock tap."

    .line 86
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    sget v3, Lcom/amazon/kindle/krl/R$id;->debug_eink_simulation:I

    .line 100
    iget-object v1, p0, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/krl/R$bool;->enable_eink_device_for_debug:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/debug/DebugUtils;->isEInkSimulationEnabled(Landroid/content/Context;Z)Z

    move-result v6

    .line 101
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$8;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$8;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "eInk simulation"

    const-string v5, "Enabling this for eInk simulation."

    move-object v1, p0

    move-object v2, v0

    .line 96
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    sget v3, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_json_refactor:I

    .line 110
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isAaMenuV2JSONRefactorEnabled()Z

    move-result v6

    .line 111
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$9;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$9;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "Aa Menu V2 JSON Refactor"

    const-string v5, "Enabling this for Aa menu V2 JSON refactor."

    .line 106
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    sget v3, Lcom/amazon/kindle/krl/R$id;->debug_force_aa_side_sheet_in_landscape:I

    .line 120
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isForceAaSideSheetInLandscape()Z

    move-result v6

    .line 121
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$10;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$10;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "Force Aa Menu V2 Side Sheet in Landscape"

    const-string v5, "Enabling this to see Aa menu side sheet in landscape."

    .line 116
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    sget v3, Lcom/amazon/kindle/krl/R$id;->aes_kfc_font:I

    .line 130
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isAesEnabledForKfcScnFont()Z

    move-result v6

    .line 131
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$11;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$11;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "AES for KFC SCN font"

    const-string v5, "Enabling this for AES for KFC SCN font."

    .line 126
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    sget v3, Lcom/amazon/kindle/krl/R$id;->newtron_phase_2:I

    .line 140
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isNewtronTOCEnabled()Z

    move-result v6

    .line 141
    new-instance v7, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$12;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider$getView$12;-><init>(Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;)V

    const-string v4, "Newtron TOC"

    const-string v5, "Enabling this to see the TOC updates. Restart app for effects to apply."

    .line 136
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/debug/InBookDebugMenuPageProvider;->setUpSwitch(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
