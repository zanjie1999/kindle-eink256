.class public final Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "OneTapBookOpenDebugMenuPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;
    .locals 0

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    const-string p2, "button"

    .line 144
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 145
    invoke-virtual {p1, p5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p1
.end method

.method private final setupProgressBarDebugUtils(Landroid/view/View;)V
    .locals 4

    .line 105
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->values()[Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 106
    sget v1, Lcom/amazon/kindle/krl/R$id;->book_open_progress_interpolation_spinner:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 108
    new-instance v2, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$setupProgressBarDebugUtils$1$1;

    invoke-direct {v2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$setupProgressBarDebugUtils$1$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 118
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->getProgressInterpolationType()Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 121
    sget v0, Lcom/amazon/kindle/krl/R$id;->book_open_progress_animation_duration_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    sget v1, Lcom/amazon/kindle/krl/R$id;->book_open_progress_animation_duration_seek_bar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 123
    new-instance v1, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$setupProgressBarDebugUtils$$inlined$apply$lambda$1;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$setupProgressBarDebugUtils$$inlined$apply$lambda$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 138
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->getProgressBarUpdateAnimationMs()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "One Tap Debug Options"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 9

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 26
    sget v1, Lcom/amazon/kindle/krl/R$layout;->one_tap_book_open_debug_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v2

    const-string/jumbo v3, "view"

    .line 30
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/amazon/kindle/krl/R$id;->book_open_library_toggle:I

    .line 31
    invoke-static {v2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenLibraryEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v7

    .line 32
    new-instance v8, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$1;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$1;-><init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)V

    const-string v6, "Library"

    move-object v3, p0

    move-object v4, v0

    .line 30
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget v5, Lcom/amazon/kindle/krl/R$id;->book_open_home_toggle:I

    .line 37
    invoke-static {v2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenHomeEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v7

    .line 38
    new-instance v8, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$2;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$2;-><init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)V

    const-string v6, "Home"

    move-object v3, p0

    .line 36
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;

    .line 42
    sget v5, Lcom/amazon/kindle/krl/R$id;->book_open_search_toggle:I

    .line 43
    invoke-static {v2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v3

    xor-int/lit8 v7, v3, 0x1

    .line 44
    new-instance v8, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$3;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$3;-><init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)V

    const-string v6, "Search"

    move-object v3, p0

    .line 42
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;

    .line 48
    sget v5, Lcom/amazon/kindle/krl/R$id;->book_open_sdp_toggle:I

    .line 49
    invoke-static {v2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSDPEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v7

    .line 50
    new-instance v8, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$4;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$4;-><init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)V

    const-string v6, "SDP"

    .line 48
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget v5, Lcom/amazon/kindle/krl/R$id;->book_open_end_actions_NIS_toggle:I

    .line 55
    invoke-static {v2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsNISEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v7

    .line 56
    new-instance v8, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$5;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$5;-><init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)V

    const-string v6, "End Actions NIS"

    move-object v3, p0

    .line 54
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget v5, Lcom/amazon/kindle/krl/R$id;->book_open_end_actions_expando_toggle:I

    .line 61
    invoke-static {v2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapEndActionsExpandoEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v7

    .line 62
    new-instance v8, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$6;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$6;-><init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)V

    const-string v6, "End Actions Expando"

    move-object v3, p0

    .line 60
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget v5, Lcom/amazon/kindle/krl/R$id;->book_open_bibb_toggle:I

    .line 67
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenBiBBEnabled()Z

    move-result v7

    .line 68
    new-instance v8, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$7;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$7;-><init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)V

    const-string v6, "BiBB"

    move-object v3, p0

    .line 66
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget v5, Lcom/amazon/kindle/krl/R$id;->book_open_hold_splash_until_cover_tapped:I

    .line 73
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->shouldHoldOneTapSplashUntilCoverTapped()Z

    move-result v7

    .line 74
    new-instance v8, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$8;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$8;-><init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)V

    const-string v6, "Hold Splash Screen Until Cover Tapped"

    move-object v3, p0

    .line 72
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;

    .line 78
    sget v5, Lcom/amazon/kindle/krl/R$id;->book_open_simulate_unfetched_cover:I

    .line 79
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->simulateUnfetchedCoverImage()Z

    move-result v7

    .line 80
    new-instance v8, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$9;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$9;-><init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)V

    const-string v6, "Simulate Unfetched Cover Image"

    .line 78
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;

    .line 84
    sget v5, Lcom/amazon/kindle/krl/R$id;->book_open_download_sidecar_early:I

    .line 85
    invoke-static {v2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isEarlySidecarDownloadEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v7

    .line 86
    new-instance v8, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$10;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$10;-><init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;)V

    const-string v6, "Download sidecar early"

    .line 84
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;

    .line 90
    sget v5, Lcom/amazon/kindle/krl/R$id;->book_open_all_toggle:I

    .line 91
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenAllEnabled()Z

    move-result v7

    .line 92
    new-instance v8, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$11;

    invoke-direct {v8, p0, v1}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider$getView$11;-><init>(Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;Ljava/util/List;)V

    const-string v6, "All"

    .line 90
    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupButton(Landroid/view/View;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/widget/ToggleButton;

    .line 100
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugMenuPageProvider;->setupProgressBarDebugUtils(Landroid/view/View;)V

    return-object v0
.end method
