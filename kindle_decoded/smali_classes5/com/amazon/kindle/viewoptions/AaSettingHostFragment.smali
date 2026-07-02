.class public final Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;
.super Landroidx/fragment/app/Fragment;
.source "AaSettingHostFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private aaThemesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

.field private delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

.field private drawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private onTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

.field private pagerAdapter:Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;

.field private performanceMeasureTab:Ljava/lang/String;

.field private tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

.field private tabSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/viewoptions/AaTab;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAaThemesManager$p(Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;)Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->aaThemesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    return-object p0
.end method

.method public static final synthetic access$getPerformanceMeasureTab$p(Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->performanceMeasureTab:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setPerformanceMeasureTab$p(Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->performanceMeasureTab:Ljava/lang/String;

    return-void
.end method

.method private final setupTabAccessibilityDescription()V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    const/4 v1, 0x0

    const-string/jumbo v2, "tabLayout"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 104
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void

    .line 103
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final setupTabId()V
    .locals 9

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    const-string/jumbo v1, "tabLayout"

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_12

    .line 111
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    if-eqz v5, :cond_11

    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    .line 112
    iget-object v6, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    if-eqz v6, :cond_10

    invoke-virtual {v6, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_f

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v2

    .line 115
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_1

    sget v8, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_tab_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    move-object v7, v2

    :goto_2
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v6, :cond_e

    sget v5, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_themes_tab:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setId(I)V

    goto/16 :goto_9

    .line 116
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_3

    sget v8, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_font_tab_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v2

    :goto_3
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_e

    sget v5, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_font_tab:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setId(I)V

    goto/16 :goto_9

    .line 117
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_5

    sget v8, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_layout_tab_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_5
    move-object v7, v2

    :goto_4
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v6, :cond_e

    sget v5, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_layout_tab:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setId(I)V

    goto/16 :goto_9

    .line 118
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_7

    sget v8, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_more_tab_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_7
    move-object v7, v2

    :goto_5
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v6, :cond_e

    sget v5, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_more_tab:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setId(I)V

    goto :goto_9

    .line 119
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_9

    sget v8, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_letterboxing:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_9
    move-object v7, v2

    :goto_6
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v6, :cond_e

    sget v5, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_letterboxing_tab:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setId(I)V

    goto :goto_9

    .line 120
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_b

    sget v8, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_guided_view:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_b
    move-object v7, v2

    :goto_7
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v6, :cond_e

    sget v5, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_guided_view_tab:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setId(I)V

    goto :goto_9

    .line 121
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_d

    sget v8, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_merged_tab_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_d
    move-object v7, v2

    :goto_8
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v6, :cond_e

    sget v5, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_merged_tab:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setId(I)V

    :cond_e
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 112
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_12
    return-void

    .line 110
    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget p3, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_host_fragment_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026layout, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 163
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->viewPager:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewPager;

    const-string/jumbo v1, "viewPager"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->drawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->viewPager:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewPager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 166
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->onTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 167
    iput-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->pagerAdapter:Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabSettings:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    :cond_0
    iput-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    .line 170
    iput-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->aaThemesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    .line 171
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->_$_clearFindViewByIdCache()V

    return-void

    :cond_1
    const-string/jumbo v0, "onTabSelectedListener"

    .line 166
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v0, "tabLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string v0, "drawListener"

    .line 164
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public onResume()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->viewPager:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewPager;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getLastTabSelected()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    const-string/jumbo v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget p2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_view_pager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.aa_menu_v2_view_pager)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewPager;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->viewPager:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewPager;

    .line 42
    sget p2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.aa_menu_v2_tab_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    .line 43
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->viewPager:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewPager;

    const-string/jumbo p2, "viewPager"

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 44
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabSettings:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 45
    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    invoke-direct {v1, v2, p1, v3}, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->pagerAdapter:Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->viewPager:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewPager;

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->pagerAdapter:Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 48
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    const-string/jumbo v1, "tabLayout"

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->viewPager:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewPager;

    if-eqz v2, :cond_7

    invoke-virtual {p1, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 49
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->setupTabAccessibilityDescription()V

    .line 50
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->setupTabId()V

    .line 52
    new-instance p1, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$2;-><init>(Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->onTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 75
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {v2, p1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 77
    new-instance p1, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$3;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$3;-><init>(Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->drawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 83
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->viewPager:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewPager;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->drawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 86
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabSettings:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/viewoptions/AaTab;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaTab;->getType()Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MERGED_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    if-ne p1, p2, :cond_2

    .line 88
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabLayout:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "drawListener"

    .line 83
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string/jumbo p1, "onTabSelectedListener"

    .line 75
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_7
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_9
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_a
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final performanceStringForPosition(I)Ljava/lang/String;
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabSettings:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/viewoptions/AaTab;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaTab;->getType()Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_OPEN_MERGED_TAB:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026MENU_KSDK_OPEN_MERGED_TAB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 142
    :pswitch_1
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_OPEN_LETTERBOXING_TAB:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026SDK_OPEN_LETTERBOXING_TAB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 141
    :pswitch_2
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_OPEN_GUIDED_VIEW_TAB:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026KSDK_OPEN_GUIDED_VIEW_TAB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 140
    :pswitch_3
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_OPEN_MORE_TAB:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026A_MENU_KSDK_OPEN_MORE_TAB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 139
    :pswitch_4
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_OPEN_LAYOUT_TAB:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026MENU_KSDK_OPEN_LAYOUT_TAB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 138
    :pswitch_5
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_OPEN_FONT_TAB:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026A_MENU_KSDK_OPEN_FONT_TAB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 137
    :pswitch_6
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_KSDK_OPEN_THEMES_TAB:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026MENU_KSDK_OPEN_THEMES_TAB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final resetScrollViews()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->pagerAdapter:Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingSheetPagerAdapter;->resetScrollViews()V

    :cond_0
    return-void
.end method

.method public final setAaThemesManager(Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->aaThemesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    return-void
.end method

.method public final setDelegate(Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    return-void
.end method

.method public final setTabSettings(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/viewoptions/AaTab;",
            ">;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->tabSettings:Ljava/util/ArrayList;

    return-void
.end method
