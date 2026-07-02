.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;
.super Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;
.source "AaSettingCheckBoxGroup.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private changeHandler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-[I-",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private changeListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private checkBoxGroupContainer:Landroid/widget/LinearLayout;

.field private checkedStates:[I

.field private checkedTextViewArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;"
        }
    .end annotation
.end field

.field private descriptionView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[I)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;[I",
            "Lkotlin/jvm/functions/Function2<",
            "-[I-",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;[I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v3, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    const-string v4, "context"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "optionNames"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "curCheckedStates"

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "changeHandler"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "optionIds"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->initViews(Landroid/content/Context;)V

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_1

    .line 36
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const-string/jumbo v5, "titleView"

    const/16 v6, 0x8

    const/16 v16, 0x0

    if-nez v4, :cond_3

    .line 37
    iget-object v4, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->titleView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    .line 39
    :cond_3
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    if-eqz v2, :cond_5

    .line 42
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v1, 0x1

    :goto_4
    const-string v4, "descriptionView"

    if-nez v1, :cond_7

    .line 43
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->descriptionView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    .line 45
    :cond_7
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->descriptionView:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->checkedTextViewArray:Ljava/util/ArrayList;

    .line 49
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->checkedStates:[I

    .line 50
    iput-object v3, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->changeHandler:Lkotlin/jvm/functions/Function2;

    .line 52
    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup$1;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;)V

    iput-object v1, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->changeListener:Lkotlin/jvm/functions/Function2;

    .line 59
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v7, :cond_f

    .line 60
    new-instance v5, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    if-eqz v10, :cond_8

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_7

    :cond_8
    move-object/from16 v1, v16

    :goto_7
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_9

    move-object/from16 v1, v16

    :cond_9
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 61
    iget-object v2, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->changeListener:Lkotlin/jvm/functions/Function2;

    aget v1, v11, v6

    if-ne v1, v14, :cond_a

    const/16 v17, 0x1

    goto :goto_8

    :cond_a
    const/16 v17, 0x0

    :goto_8
    aget v1, v13, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v1, v5

    move-object/from16 v19, v2

    move-object/from16 v2, p1

    move-object v14, v5

    move-object/from16 v5, v19

    move/from16 v19, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move-object/from16 v7, v18

    .line 60
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckboxItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZLjava/lang/Integer;)V

    .line 63
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->checkBoxGroupContainer:Landroid/widget/LinearLayout;

    const-string v2, "checkBoxGroupContainer"

    if-eqz v1, :cond_d

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingDivider;

    invoke-direct {v1, v8}, Lcom/amazon/kindle/viewoptions/ui/AaSettingDivider;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v3, Lcom/amazon/kindle/viewoptions/ui/AaSettingDivider;

    invoke-direct {v3, v8}, Lcom/amazon/kindle/viewoptions/ui/AaSettingDivider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_c

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    invoke-virtual {v3, v15, v15, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 67
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v3, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->checkBoxGroupContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->checkedTextViewArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v19, 0x1

    move/from16 v7, v17

    const/4 v14, 0x1

    goto :goto_6

    .line 68
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    .line 65
    :cond_c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    .line 60
    :cond_e
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-eqz v12, :cond_10

    .line 71
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->checkedTextViewArray:Ljava/util/ArrayList;

    invoke-interface {v12, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    :cond_10
    return-void

    .line 45
    :cond_11
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    .line 39
    :cond_12
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16
.end method

.method public static final synthetic access$getChangeHandler$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->changeHandler:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getCheckedStates$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;)[I
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->checkedStates:[I

    return-object p0
.end method

.method public static final synthetic access$getCheckedTextViewArray$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->checkedTextViewArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final initViews(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_vertical_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 78
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_setting_item_horizontal_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 79
    invoke-virtual {p0, v2, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_checkbox_group:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_checkbox_group_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026eckbox_group_description)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->descriptionView:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_checkbox_group_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026_v2_checkbox_group_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->titleView:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_checkbox_group_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "content.findViewById(R.i\u2026checkbox_group_container)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->checkBoxGroupContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 6

    const-string/jumbo v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;->getCurCheckedStates()[I

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 90
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->checkedTextViewArray:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    .line 91
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->checkedTextViewArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    aget v4, v1, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3, v5}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->refreshSetting(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
