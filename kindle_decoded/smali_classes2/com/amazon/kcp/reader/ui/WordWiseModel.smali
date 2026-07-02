.class public final Lcom/amazon/kcp/reader/ui/WordWiseModel;
.super Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;
.source "WordWiseModel.kt"


# instance fields
.field private final METRICS_OFF:Ljava/lang/String;

.field private final METRICS_ON:Ljava/lang/String;

.field private final STATE_OFF:I

.field private final STATE_ON:I

.field private final THREAD_SLEEP_TIME:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;-><init>(Landroid/content/Context;)V

    .line 19
    sget p1, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_state_on:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->STATE_ON:I

    .line 20
    sget p1, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_state_off:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->STATE_OFF:I

    const/16 p1, 0x12c

    .line 21
    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->THREAD_SLEEP_TIME:I

    const-string p1, "On"

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->METRICS_ON:Ljava/lang/String;

    const-string p1, "Off"

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->METRICS_OFF:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTHREAD_SLEEP_TIME$p(Lcom/amazon/kcp/reader/ui/WordWiseModel;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->THREAD_SLEEP_TIME:I

    return p0
.end method

.method public static final synthetic access$reportMetricsForLanguageForHints(Lcom/amazon/kcp/reader/ui/WordWiseModel;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->reportMetricsForLanguageForHints(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    return-void
.end method

.method public static final synthetic access$reportMetricsForSwitch(Lcom/amazon/kcp/reader/ui/WordWiseModel;Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ZZLcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->reportMetricsForSwitch(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ZZLcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    return-void
.end method

.method public static final synthetic access$updateLanguageHintsRadioButtonValue(Lcom/amazon/kcp/reader/ui/WordWiseModel;IZ)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->updateLanguageHintsRadioButtonValue(IZ)V

    return-void
.end method

.method public static final synthetic access$updateShowHintsSwitchValue(Lcom/amazon/kcp/reader/ui/WordWiseModel;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->updateShowHintsSwitchValue(Z)V

    return-void
.end method

.method public static final synthetic access$updateWordWiseSwitchValue(Lcom/amazon/kcp/reader/ui/WordWiseModel;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->updateWordWiseSwitchValue(Z)V

    return-void
.end method

.method private final getMetricName(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;)Ljava/lang/String;
    .locals 1

    .line 172
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "WordWiseShowMultipleChoiceHints"

    goto :goto_0

    :cond_1
    const-string p1, "WordWiseLanguageForHints"

    goto :goto_0

    :cond_2
    const-string p1, "WordWiseSwitch"

    :goto_0
    return-object p1
.end method

.method private final isSwitchSetting(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;)Z
    .locals 2

    .line 181
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseModel$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private final reportMetricsForLanguageForHints(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V
    .locals 9

    .line 165
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LANGUAGE_FOR_HINTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->getMetricName(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    if-eqz p1, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "(this as java.lang.String).toUpperCase()"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v8, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-static {v0, p1, p2, p3, p4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    return-void

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final reportMetricsForSwitch(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ZZLcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V
    .locals 1

    .line 156
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->isSwitchSetting(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->getMetricName(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 158
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->METRICS_ON:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->METRICS_OFF:Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_1

    .line 159
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->METRICS_ON:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->METRICS_OFF:Ljava/lang/String;

    .line 157
    :goto_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    :cond_2
    return-void
.end method

.method private final updateLanguageHintsRadioButtonValue(IZ)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseModel;IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private final updateShowHintsSwitchValue(Z)V
    .locals 2

    .line 140
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->getWordwiseMultichoice()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v0

    const-string v1, "SettingsItem.getWordwiseMultichoice()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->setChecked(Z)V

    .line 141
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshGlosses()V

    :cond_0
    return-void
.end method

.method private final updateWordWiseSwitchValue(Z)V
    .locals 2

    .line 85
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->getWordWiseEnabled()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v0

    const-string v1, "SettingsItem.getWordWiseEnabled()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->setChecked(Z)V

    .line 86
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setWordWiseEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->STATE_ON:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel;->STATE_OFF:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "if (value) {\n           \u2026ring(STATE_OFF)\n        }"

    .line 90
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->setState(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCurrentSelectedLanguageIndex()I
    .locals 3

    .line 45
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_0
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    sget-object v1, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 52
    sget-object v2, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :cond_1
    return v1
.end method

.method public final getLanguageForHintsRadioButtonClickHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseModel$getLanguageForHintsRadioButtonClickHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/WordWiseModel$getLanguageForHintsRadioButtonClickHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseModel;)V

    return-object v0
.end method

.method public final getShowHintsSwitchHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseModel$getShowHintsSwitchHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/WordWiseModel$getShowHintsSwitchHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseModel;)V

    return-object v0
.end method

.method public final getWordWiseState()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWordWiseSwitchHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseModel$getWordWiseSwitchHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/WordWiseModel$getWordWiseSwitchHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseModel;)V

    return-object v0
.end method

.method public final isShowHintsEnabled()Z
    .locals 3

    .line 67
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->getWordwiseMultichoice()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v0

    const-string v1, "SettingsItem.getWordwiseMultichoice()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->isChecked()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final isWordWiseSwitchEnabled()Z
    .locals 3

    .line 34
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->getWordWiseEnabled()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v0

    const-string v1, "SettingsItem.getWordWiseEnabled()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->isChecked()Z

    move-result v0

    :goto_0
    return v0
.end method
