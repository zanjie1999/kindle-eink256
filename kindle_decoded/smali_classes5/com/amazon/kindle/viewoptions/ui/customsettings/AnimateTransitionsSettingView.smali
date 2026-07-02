.class public final Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;
.source "AnimateTransitionsSettingView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimateTransitionsSettingView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimateTransitionsSettingView.kt\ncom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,260:1\n1#2:261\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private animateTransitionsToggle:Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;

.field private leftButton:Landroid/view/View;

.field private rightButton:Landroid/view/View;

.field private seekBarView:Landroid/widget/SeekBar;

.field private sliderBarCollection:Landroid/widget/LinearLayout;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move/from16 v6, p3

    move-object/from16 v3, p4

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "toggleUpdateHandler"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "sliderUpdateHandler"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_vertical_offset:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 44
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x0

    .line 45
    invoke-virtual {v0, v9, v8, v9, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x1

    .line 46
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, 0x2

    .line 47
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 54
    sget v10, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_transition_speed_slider:I

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_animation_slider:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "resources.getString(R.st\u2026enu_cmx_animation_slider)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v12, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$createButton$1;

    invoke-direct {v12, v0, v2}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$createButton$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;Landroid/content/Context;)V

    .line 65
    sget v13, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_slower_animation_speed_button_enabled:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/amazon/kindle/krl/R$string;->aa_menu_vs_animation_speed_slider_slower_button:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "resources.getString(R.st\u2026eed_slider_slower_button)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    iput-object v13, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->leftButton:Landroid/view/View;

    .line 66
    sget v13, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_faster_animation_speed_button_enabled:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/amazon/kindle/krl/R$string;->aa_menu_vs_animation_speed_slider_faster_button:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "resources.getString(R.st\u2026eed_slider_faster_button)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    iput-object v12, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->rightButton:Landroid/view/View;

    .line 67
    invoke-direct {v0, v6}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->updateButtonState(Z)V

    .line 69
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 70
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 71
    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    sget v8, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2SeekBarColor:I

    invoke-virtual {v15, v8, v12, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v15, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2SeekBarTick:I

    invoke-virtual {v8, v15, v14, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v15, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2SeekBar:I

    invoke-virtual {v8, v15, v13, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 78
    new-instance v8, Landroid/widget/SeekBar;

    sget v15, Lcom/amazon/kindle/krl/R$style;->AaMenuV2SeekBar:I

    const/4 v5, 0x0

    invoke-direct {v8, v2, v5, v9, v15}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    iget v13, v13, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget v12, v12, Landroid/util/TypedValue;->data:I

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x18

    if-lt v8, v12, :cond_0

    .line 82
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, v14, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v12, Lcom/amazon/kindle/krl/R$integer;->aa_menu_v2_seekbar_weight:I

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    .line 86
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x1010181

    invoke-virtual {v13, v14, v12, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 88
    invoke-virtual {v12}, Landroid/util/TypedValue;->getFloat()F

    move-result v8

    .line 93
    :cond_1
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v13, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_seekbar_tap_area_padding:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 95
    iget-object v13, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v13, v8, v8, v8, v8}, Landroid/widget/SeekBar;->setPadding(IIII)V

    const/16 v8, 0x11

    .line 97
    iput v8, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 98
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v12}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    const/16 v12, 0x9

    invoke-virtual {v8, v12}, Landroid/widget/SeekBar;->setMax(I)V

    .line 100
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    move/from16 v12, p5

    invoke-virtual {v8, v12}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 101
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v4}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 102
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 103
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v11}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v10}, Landroid/widget/SeekBar;->setId(I)V

    .line 105
    iput-object v11, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->title:Ljava/lang/String;

    .line 106
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    new-instance v10, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$1;

    invoke-direct {v10}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$1;-><init>()V

    invoke-virtual {v8, v10}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 114
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    sget v10, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_transition_speed_slider:I

    invoke-virtual {v8, v10}, Landroid/widget/SeekBar;->setId(I)V

    .line 115
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    const-string v10, "default"

    invoke-virtual {v8, v10}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 117
    new-instance v8, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;

    invoke-direct {v8, v0, v3, v11}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    .line 142
    iget-object v10, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v10, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 146
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    .line 147
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v10, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 150
    iget-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_horizontal_offset:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 152
    iget-object v10, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v12

    iget-object v13, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v10, v8, v12, v8, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 155
    new-instance v8, Landroid/widget/Space;

    invoke-direct {v8, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v10, Landroid/widget/Space;

    invoke-direct {v10, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_seekbar_spacing:I

    invoke-virtual {v13, v14, v12, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 159
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/util/TypedValue;->getFloat()F

    move-result v14

    const/4 v15, -0x1

    invoke-direct {v13, v9, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v13}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/util/TypedValue;->getFloat()F

    move-result v12

    invoke-direct {v13, v9, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v13}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v12, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->leftButton:Landroid/view/View;

    new-instance v13, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$2;

    invoke-direct {v13, v0, v11, v3}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$2;-><init>(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v12, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->rightButton:Landroid/view/View;

    new-instance v13, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$3;

    invoke-direct {v13, v0, v11, v3}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$3;-><init>(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_accessibility_slider_decrease_button_description:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v12, "context.getString(R.stri\u2026rease_button_description)"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v11, v13, v9

    invoke-static {v13, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "java.lang.String.format(this, *args)"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget v14, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_accessibility_slider_increase_button_description:I

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v11, v12, v9

    invoke-static {v12, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v14, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v13, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->leftButton:Landroid/view/View;

    invoke-virtual {v13, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->rightButton:Landroid/view/View;

    invoke-virtual {v3, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 186
    sget v3, Lcom/amazon/kindle/krl/R$style;->AaMenuV2SettingSubtitle:I

    invoke-static {v12, v3}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 187
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x2

    .line 190
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 193
    iget-object v3, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->leftButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    iget-object v3, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v3, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    iget-object v3, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    iget-object v3, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->rightButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$string;->guided_view_animations:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "resources.getString(R.st\u2026g.guided_view_animations)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_animate_transitions_description:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 205
    :goto_0
    sget v5, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_animate_transitions_toggle:I

    .line 207
    new-instance v7, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$changeHandler$1;

    invoke-direct {v7, v0, v1}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$changeHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;Lkotlin/jvm/functions/Function1;)V

    .line 212
    new-instance v8, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v5, v7

    move/from16 v6, p3

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;)V

    iput-object v8, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->animateTransitionsToggle:Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;

    .line 214
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->animateTransitionsToggle:Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {v8, v1, v9, v2, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 220
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->animateTransitionsToggle:Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->sliderBarCollection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public static final synthetic access$getSeekBarView$p(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;)Landroid/widget/SeekBar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static final synthetic access$isSeekBarOnScreen(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;)Z
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->isSeekBarOnScreen()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateButtonState(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->updateButtonState(Z)V

    return-void
.end method

.method private final isSeekBarOnScreen()Z
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v2, "resources"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 255
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v1, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 257
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 258
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private final updateButtonState(Z)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->leftButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->rightButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->title:Ljava/lang/String;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 237
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 238
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 2

    const-string/jumbo v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->getInitValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 243
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    const-string/jumbo v0, "theme_change"

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 245
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->seekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method
