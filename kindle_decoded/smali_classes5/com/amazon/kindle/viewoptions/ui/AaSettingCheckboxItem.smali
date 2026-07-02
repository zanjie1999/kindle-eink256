.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;
.source "AaSettingCheckboxItem.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaSettingCheckboxItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaSettingCheckboxItem.kt\ncom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private checkboxView:Landroid/widget/CheckBox;

.field private layoutView:Landroid/widget/LinearLayout;

.field private subTitleView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZLjava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
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

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1, p6}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->init(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 24
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->titleView:Landroid/widget/TextView;

    const-string/jumbo p6, "titleView"

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->subTitleView:Landroid/widget/TextView;

    const-string/jumbo p2, "subTitleView"

    if-eqz p1, :cond_a

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->layoutView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->titleView:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p6

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p6, ". "

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->subTitleView:Landroid/widget/TextView;

    if-eqz p6, :cond_7

    invoke-virtual {p6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p6

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p6}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->checkboxView:Landroid/widget/CheckBox;

    const-string p6, "checkboxView"

    if-eqz p1, :cond_6

    invoke-virtual {p1, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 28
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->checkboxView:Landroid/widget/CheckBox;

    if-eqz p1, :cond_5

    const-string p5, "default"

    invoke-virtual {p1, p5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 30
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

    .line 31
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->subTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->checkboxView:Landroid/widget/CheckBox;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem$1;

    invoke-direct {p2, p0, p4}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    new-instance p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem$2;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 34
    :cond_4
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_5
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_6
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 26
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

    .line 25
    :cond_a
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_b
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$getCheckboxView$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;)Landroid/widget/CheckBox;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->checkboxView:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "checkboxView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final init(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 51
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_checkbox_group_item:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_checkbox_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u20262_setting_checkbox_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->titleView:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_checkbox_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026etting_checkbox_subtitle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->subTitleView:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.id.aa_v2_setting_checkbox)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->checkboxView:Landroid/widget/CheckBox;

    .line 57
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_v2_setting_checkbox_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "content.findViewById(R.i\u2026_setting_checkbox_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->layoutView:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->checkboxView:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setId(I)V

    goto :goto_0

    :cond_0
    const-string p1, "checkboxView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->checkboxView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "checkboxView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public refreshSetting(Z)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->checkboxView:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    const-string v2, "checkboxView"

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->checkboxView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    const-string/jumbo v3, "theme_change"

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->checkboxView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->checkboxView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const-string p1, "checkboxView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setTextColor(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const-string/jumbo p1, "titleView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :cond_0
    const-string/jumbo p1, "titleView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
