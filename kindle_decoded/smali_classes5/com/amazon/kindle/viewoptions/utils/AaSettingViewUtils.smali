.class public final Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;
.super Ljava/lang/Object;
.source "AaSettingViewUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createViewForAaSettingDisplay(Landroid/content/Context;ILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;)Landroid/view/View;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "display"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "changeListener"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of v4, v2, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    if-eqz v4, :cond_0

    .line 39
    new-instance v8, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$1;

    invoke-direct {v8, v2, v3, v0}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$1;-><init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;I)V

    .line 43
    new-instance v11, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;

    move-object v0, v2

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->getRadioButtonLayoutId()I

    move-result v4

    .line 44
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->getButtonDrawablesChecked()[I

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->getButtonDrawablesUnchecked()[I

    move-result-object v6

    .line 45
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->getOptionNames()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->getCurrSelectedIndex()I

    move-result v9

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;->getIds()[I

    move-result-object v10

    move-object v0, v11

    move-object/from16 v1, p1

    .line 43
    invoke-direct/range {v0 .. v10}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    goto/16 :goto_1

    .line 47
    :cond_0
    instance-of v4, v2, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    if-eqz v4, :cond_1

    .line 48
    new-instance v8, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$2;

    invoke-direct {v8, v2, v3, v0}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$2;-><init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;I)V

    .line 52
    new-instance v12, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$checkBoxHandler$1;

    invoke-direct {v12, v2, v3, v0}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$checkBoxHandler$1;-><init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;I)V

    .line 56
    new-instance v14, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;

    move-object v0, v2

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->getRadioButtonLayoutId()I

    move-result v4

    .line 57
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->getButtonDrawablesChecked()[I

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->getButtonDrawablesUnchecked()[I

    move-result-object v6

    .line 58
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->getOptionNames()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->getCurrSelectedIndex()I

    move-result v9

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->getIds()[I

    move-result-object v10

    .line 59
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->getCheckBoxText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;->getCheckBoxInitialValue()Z

    move-result v13

    const-string v3, ""

    move-object v0, v14

    move-object/from16 v1, p1

    .line 56
    invoke-direct/range {v0 .. v13}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[ILjava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    move-object v11, v14

    goto/16 :goto_1

    .line 61
    :cond_1
    instance-of v4, v2, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    if-eqz v4, :cond_2

    .line 62
    new-instance v6, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$3;

    invoke-direct {v6, v2, v3, v0}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$3;-><init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;I)V

    .line 66
    new-instance v11, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;

    move-object v0, v2

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_radio_group_text_button:I

    .line 67
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->getOptionNames()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->getCurrSelectedIndex()I

    move-result v7

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->getIds()[I

    move-result-object v8

    const-string v3, ""

    move-object v0, v11

    move-object/from16 v1, p1

    .line 66
    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/viewoptions/ui/AaSettingRadioGroup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    goto/16 :goto_1

    .line 69
    :cond_2
    instance-of v4, v2, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;

    if-eqz v4, :cond_3

    .line 70
    new-instance v7, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$4;

    invoke-direct {v7, v2, v3, v0}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$4;-><init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;I)V

    .line 74
    new-instance v11, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;

    move-object v0, v2

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;->getOptionNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;->getOptionSubtitles()Ljava/util/List;

    move-result-object v5

    .line 75
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;->getCurCheckedStates()[I

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;->getOnViewCreatedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v8

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;->getIds()[I

    move-result-object v9

    move-object v0, v11

    move-object/from16 v1, p1

    .line 74
    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[I)V

    goto/16 :goto_1

    .line 77
    :cond_3
    instance-of v4, v2, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    if-eqz v4, :cond_4

    .line 78
    new-instance v9, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$5;

    invoke-direct {v9, v2, v3, v0}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$5;-><init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;I)V

    .line 84
    new-instance v12, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    check-cast v2, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->getLeftView()Landroid/view/View;

    move-result-object v4

    .line 85
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->getRightView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->getMaxValue()I

    move-result v6

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->getInitValue()I

    move-result v7

    .line 86
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->getTickMarksEnabled()Z

    move-result v8

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->getShowTitleEnabled()Z

    move-result v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;->getId()Ljava/lang/Integer;

    move-result-object v13

    move-object v0, v12

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v10

    move-object v10, v11

    move-object v11, v13

    .line 84
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v11, v12

    goto :goto_1

    .line 88
    :cond_4
    instance-of v4, v2, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    if-eqz v4, :cond_5

    .line 89
    new-instance v4, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$6;

    invoke-direct {v4, v2, v3, v0}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$6;-><init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;I)V

    .line 93
    new-instance v11, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;

    move-object v0, v2

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;->getSubTitle()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;->getInitialValue()Z

    move-result v5

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;->getId()Ljava/lang/Integer;

    move-result-object v6

    move-object v0, v11

    move-object/from16 v1, p1

    .line 93
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;)V

    goto :goto_1

    .line 96
    :cond_5
    instance-of v0, v2, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;

    if-eqz v0, :cond_7

    .line 97
    move-object v0, v2

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    new-instance v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_6
    new-instance v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingMessage;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v11, v2

    goto :goto_1

    .line 103
    :cond_7
    instance-of v0, v2, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Divider;

    if-eqz v0, :cond_8

    .line 104
    new-instance v11, Lcom/amazon/kindle/viewoptions/ui/AaSettingDivider;

    invoke-direct {v11, v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingDivider;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_8
    const/4 v11, 0x0

    :goto_1
    return-object v11
.end method
