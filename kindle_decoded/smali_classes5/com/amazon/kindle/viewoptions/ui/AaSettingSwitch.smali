.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;
.source "AaSettingSwitch.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaSettingSwitch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaSettingSwitch.kt\ncom/amazon/kindle/viewoptions/ui/AaSettingSwitch\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private layoutView:Landroid/widget/LinearLayout;

.field private subTitleView:Landroid/widget/TextView;

.field private switch:Landroidx/appcompat/widget/SwitchCompat;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;Z",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1, p6}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->init(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 28
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->titleView:Landroid/widget/TextView;

    const-string/jumbo p6, "titleView"

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->subTitleView:Landroid/widget/TextView;

    const-string/jumbo p2, "subTitleView"

    if-eqz p1, :cond_a

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->layoutView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->titleView:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p6

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p6, ". "

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->subTitleView:Landroid/widget/TextView;

    if-eqz p6, :cond_7

    invoke-virtual {p6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p6

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p6}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    const-string/jumbo p6, "switch"

    if-eqz p1, :cond_6

    invoke-virtual {p1, p5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 32
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_5

    const-string p5, "default"

    invoke-virtual {p1, p5}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 34
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 35
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->subTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$1;

    invoke-direct {p2, p0, p4}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    new-instance p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$2;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 38
    :cond_4
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_5
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_6
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_7
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string p1, "layoutView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_a
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_b
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$getSwitch$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "switch"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$updateSwitch(Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->updateSwitch(Z)V

    return-void
.end method

.method private final init(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 57
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_vertical_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_horizontal_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 60
    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_switch:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_switch_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026_v2_setting_switch_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->titleView:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_switch_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026_setting_switch_subtitle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->subTitleView:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.id.aa_v2_setting_switch)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 66
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_switch_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "content.findViewById(R.i\u2026v2_setting_switch_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->layoutView:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    .line 67
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setId(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "switch"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateSwitch(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void

    :cond_0
    const-string/jumbo p1, "switch"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 6

    const-string/jumbo v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;->getInitialValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const/4 v1, 0x1

    const-string/jumbo v3, "switch"

    if-eqz v0, :cond_5

    .line 76
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_5

    .line 77
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v4, :cond_3

    const-string/jumbo v5, "theme_change"

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getVisibilityHandler()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    .line 82
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    if-ne p1, v0, :cond_7

    .line 83
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 84
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_7
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->DISABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_2

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_2
    return-void
.end method
