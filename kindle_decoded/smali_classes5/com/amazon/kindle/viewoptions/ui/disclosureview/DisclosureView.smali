.class public final Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;
.source "DisclosureView.kt"

# interfaces
.implements Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisclosureView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisclosureView.kt\ncom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n1#2:128\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final backHandler:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

.field private fragmentCreationHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final stateDescriptionGetter:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stateView:Landroid/widget/TextView;

.field private subTitleView:Landroid/widget/TextView;

.field private subordinateFragment:Landroidx/fragment/app/Fragment;

.field private tabTitle:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subTitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tabTitle"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    .line 32
    iput-object p6, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->stateDescriptionGetter:Lkotlin/jvm/functions/Function0;

    .line 33
    iput-object p7, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->backHandler:Lkotlin/jvm/functions/Function0;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p8

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$getTabTitle$p(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->tabTitle:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "tabTitle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$showSubordinateFragment(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->showSubordinateFragment()V

    return-void
.end method

.method private final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_vertical_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_horizontal_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 62
    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$init$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$init$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_disclosure_layout:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_disclosure_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026setting_disclosure_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->titleView:Landroid/widget/TextView;

    .line 70
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_disclosure_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026ting_disclosure_subtitle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->subTitleView:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_disclosure_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "content.findViewById(R.i\u2026setting_disclosure_state)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->stateView:Landroid/widget/TextView;

    .line 72
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->titleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->subTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_0

    .line 74
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 75
    :cond_0
    iput-object p4, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->tabTitle:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->updateStateView()V

    return-void

    :cond_1
    const-string/jumbo p1, "subTitleView"

    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo p1, "titleView"

    .line 72
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method private final showSubordinateFragment()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->subordinateFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    instance-of v1, v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    .line 88
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->fragmentCreationHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->subordinateFragment:Landroidx/fragment/app/Fragment;

    .line 89
    instance-of v1, v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    check-cast v2, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->setDelegate(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;)V

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->subordinateFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_6

    .line 92
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;->showSubordinateFragment(Landroidx/fragment/app/Fragment;I)V

    :cond_6
    return-void
.end method

.method private final updateStateView()V
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->stateDescriptionGetter:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 101
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    const-string/jumbo v5, "stateView"

    if-eqz v4, :cond_4

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->stateView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_4
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->stateView:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_disclosure_view_state:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getFragmentCreationHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->fragmentCreationHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 43
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getLastSubfragmentIdentifier()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getLastSubfragmentIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->showSubordinateFragment()V

    :cond_0
    return-void
.end method

.method public onBackViewClicked(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;->hideSubordinateFragment(Landroidx/fragment/app/Fragment;)V

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->backHandler:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->updateStateView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->subordinateFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 51
    instance-of v2, v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 52
    :goto_0
    instance-of v2, v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->onDestroy()V

    .line 53
    :cond_3
    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->subordinateFragment:Landroidx/fragment/app/Fragment;

    .line 55
    :cond_4
    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->delegate:Lcom/amazon/kindle/viewoptions/ui/AaSettingsView$AaSettingsViewDelegate;

    return-void
.end method

.method public refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 7

    const-string/jumbo v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    if-eqz p1, :cond_3

    .line 116
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;->getStateDescriptionGetter()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->stateView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_disclosure_view_state:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;->getChildSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_3

    .line 121
    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$refreshSetting$$inlined$let$lambda$1;

    invoke-direct {v0, p1, p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$refreshSetting$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->fragmentCreationHandler:Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "stateView"

    .line 117
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public final setFragmentCreationHandler(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->fragmentCreationHandler:Lkotlin/jvm/functions/Function1;

    return-void
.end method
