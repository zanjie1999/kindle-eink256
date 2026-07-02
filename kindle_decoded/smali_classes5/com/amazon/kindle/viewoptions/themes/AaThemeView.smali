.class public final Lcom/amazon/kindle/viewoptions/themes/AaThemeView;
.super Landroid/widget/LinearLayout;
.source "AaThemeView.kt"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

.field private final buttonAlpha:F

.field private checkedDrawable:I

.field private isChecked:Z

.field private themeDeleteButton:Landroid/widget/ImageButton;

.field private themeEditButton:Landroid/widget/ImageButton;

.field private themeIcon:Landroid/widget/ImageView;

.field private themeMainView:Landroid/widget/LinearLayout;

.field private themeSaveButton:Landroid/widget/Button;

.field private themeSubtitle:Landroid/widget/TextView;

.field private themeTitle:Landroid/widget/TextView;

.field private themeUndoView:Landroid/widget/LinearLayout;

.field private final themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

.field private uncheckedDrawable:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aaTheme"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "themesManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    const/4 p2, -0x1

    .line 44
    iput p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->checkedDrawable:I

    .line 45
    iput p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->uncheckedDrawable:I

    const/high16 p2, 0x3f000000    # 0.5f

    .line 46
    iput p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->buttonAlpha:F

    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_theme_view:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 138
    sget p2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_main_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "content.findViewById(R.i\u2026_menu_v2_theme_main_view)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeMainView:Landroid/widget/LinearLayout;

    .line 139
    sget p2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_undo_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "content.findViewById(R.i\u2026_menu_v2_theme_undo_view)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeUndoView:Landroid/widget/LinearLayout;

    const-string p2, "content"

    .line 140
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->setupMainView(Landroid/view/View;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->setupUndoView(Landroid/view/View;)V

    .line 142
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->updateContentVisibility()V

    .line 143
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->setupViewId()V

    return-void
.end method

.method public static final synthetic access$deleteTheme(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->deleteTheme()V

    return-void
.end method

.method public static final synthetic access$isChecked$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->isChecked:Z

    return p0
.end method

.method public static final synthetic access$openEditThemeDialog(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->openEditThemeDialog()V

    return-void
.end method

.method public static final synthetic access$openSaveThemeDialog(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->openSaveThemeDialog()V

    return-void
.end method

.method public static final synthetic access$undoDeleteTheme(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->undoDeleteTheme()V

    return-void
.end method

.method private final applyThemeViewStyling()V
    .locals 9

    .line 88
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "this.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 90
    iget-boolean v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->isChecked:Z

    const-string v3, "Utils.getFactory()"

    const-string/jumbo v4, "themeIcon"

    const/4 v5, 0x1

    const-string/jumbo v6, "themeSaveButton"

    const-string/jumbo v7, "themeTitle"

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    .line 91
    sget v2, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2SelectedBlueColor:I

    invoke-virtual {v1, v2, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 92
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->EMBERBOLD:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1, v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->checkedDrawable:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingPresetType;->CUSTOM:Lcom/amazon/ksdk/presets/ReadingPresetType;

    if-ne v0, v1, :cond_8

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 96
    :cond_1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 94
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 93
    :cond_3
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 92
    :cond_4
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 100
    :cond_5
    sget v2, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2TextTitleColor:I

    invoke-virtual {v1, v2, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 101
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1, v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->checkedDrawable:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->uncheckedDrawable:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingPresetType;->CUSTOM:Lcom/amazon/ksdk/presets/ReadingPresetType;

    if-ne v0, v1, :cond_8

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->buttonAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    :cond_6
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 106
    :cond_7
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    :cond_8
    :goto_0
    return-void

    .line 104
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 103
    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 102
    :cond_b
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    .line 101
    :cond_c
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8
.end method

.method private final deleteTheme()V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_THEME_DELETE_THEME:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v2, "KindlePerformanceConstants.AA_THEME_DELETE_THEME"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KindlePerformanceConstan\u2026DELETE_THEME.metricString"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->recordPerfStartMarker(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->setCurrentlyFocusedTheme(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)V

    .line 271
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_delete_button_description:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->deleteTheme(I)V

    .line 273
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PRESETS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->getMetricName(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemeMetricsName(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)Ljava/lang/String;

    move-result-object v1

    .line 275
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->USER_DEFINED_DELETE:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->getValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;->NA:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;

    .line 273
    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    return-void
.end method

.method private final openEditThemeDialog()V
    .locals 6

    .line 261
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->setCurrentlyFocusedTheme(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)V

    .line 262
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 263
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment;->Companion:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;->EDIT:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;->newInstance(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->getTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amazon.kcp.reader.ReaderActivity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final openSaveThemeDialog()V
    .locals 6

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->setCurrentlyFocusedTheme(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)V

    .line 254
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 255
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 256
    sget-object v1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment;->Companion:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;->SAVE:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;->newInstance(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->getTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amazon.kcp.reader.ReaderActivity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setupMainView(Landroid/view/View;)V
    .locals 9

    .line 147
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.aa_menu_v2_theme_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeIcon:Landroid/widget/ImageView;

    .line 148
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.aa_menu_v2_theme_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeTitle:Landroid/widget/TextView;

    .line 149
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.aa_menu_v2_theme_subtitle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSubtitle:Landroid/widget/TextView;

    .line 150
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_edit_theme_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.a\u2026enu_v2_edit_theme_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeEditButton:Landroid/widget/ImageButton;

    .line 151
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_delete_theme_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.a\u2026u_v2_delete_theme_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeDeleteButton:Landroid/widget/ImageButton;

    .line 152
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_save_theme_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "view.findViewById(R.id.a\u2026enu_v2_save_theme_button)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSaveButton:Landroid/widget/Button;

    .line 153
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getCheckedDrawable()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->checkedDrawable:I

    .line 155
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getUncheckedDrawable()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->uncheckedDrawable:I

    .line 157
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeEditButton:Landroid/widget/ImageButton;

    const-string/jumbo v1, "themeEditButton"

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_edit_button_description:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v7}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeDeleteButton:Landroid/widget/ImageButton;

    const-string/jumbo v2, "themeDeleteButton"

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_delete_button_description:I

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v7}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object p1

    sget-object v3, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const-string/jumbo v3, "themeSubtitle"

    const-string/jumbo v4, "themeSaveButton"

    const/16 v6, 0x8

    if-eq p1, v5, :cond_a

    const/4 v5, 0x2

    if-eq p1, v5, :cond_7

    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeEditButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeDeleteButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->hasReachedUserDefinedThemeLimitation()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 176
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSaveButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSubtitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_custom_theme_limit_reached_subtitle:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSubtitle:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_custom_theme_normal_subtitle:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_7
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSaveButton:Landroid/widget/Button;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSubtitle:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_a
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeEditButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeDeleteButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSaveButton:Landroid/widget/Button;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSubtitle:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeSaveButton:Landroid/widget/Button;

    if-eqz p1, :cond_d

    new-instance v3, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$1;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$1;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeEditButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_c

    new-instance v1, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$2;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeDeleteButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_b

    new-instance v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$3;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->isChecked:Z

    .line 194
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->applyThemeViewStyling()V

    .line 196
    new-instance p1, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$4;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$4;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void

    .line 190
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_14
    const-string/jumbo p1, "themeTitle"

    .line 153
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method private final setupUndoView(Landroid/view/View;)V
    .locals 6

    .line 206
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_undo_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "undoTitleText"

    .line 207
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_deleted_template:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_undo_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 210
    new-instance v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupUndoView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupUndoView$1;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setupViewId()V
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getBuiltInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v0

    sget-object v4, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_low_vision:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setId(I)V

    goto :goto_0

    .line 232
    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_large:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setId(I)V

    goto :goto_0

    .line 229
    :cond_3
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_standard:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setId(I)V

    goto :goto_0

    .line 226
    :cond_4
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_compact:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setId(I)V

    goto :goto_0

    .line 221
    :cond_5
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_user_defined:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setId(I)V

    goto :goto_0

    .line 218
    :cond_6
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_theme_custom:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setId(I)V

    :goto_0
    return-void
.end method

.method private final undoDeleteTheme()V
    .locals 5

    .line 279
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_THEME_UNDO_THEME:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v2, "KindlePerformanceConstants.AA_THEME_UNDO_THEME"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KindlePerformanceConstan\u2026E_UNDO_THEME.metricString"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->recordPerfStartMarker(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->setCurrentlyFocusedTheme(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)V

    .line 281
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_undo_button_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->undoDelete(I)V

    .line 283
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PRESETS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->getMetricName(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemeMetricsName(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)Ljava/lang/String;

    move-result-object v1

    .line 285
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->USER_DEFINED_UNDO_DELETE:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->getValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;->NA:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;

    const/4 v4, 0x0

    .line 283
    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    return-void
.end method

.method private final updateContentVisibility()V
    .locals 5

    .line 114
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_theme_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 116
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isUndo()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeUndoView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 121
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "this.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2ThemeUndoColor:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 122
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themeUndoView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final applyFocus()V
    .locals 2

    .line 289
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x40

    .line 290
    invoke-static {p0, v0, v1}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 291
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->setCurrentlyFocusedTheme(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)V

    return-void
.end method

.method public final applyTheme()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->applyTheme(I)V

    return-void
.end method

.method public final getTheme()Lcom/amazon/kindle/viewoptions/themes/AaTheme;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    return-object v0
.end method

.method public final getThemeType()Lcom/amazon/ksdk/presets/ReadingPresetType;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->isChecked:Z

    return v0
.end method

.method public final isUndo()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isUndo()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->isChecked:Z

    if-eq p1, v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->toggle()V

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->aaTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->isChecked:Z

    .line 61
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->applyThemeViewStyling()V

    return-void
.end method
