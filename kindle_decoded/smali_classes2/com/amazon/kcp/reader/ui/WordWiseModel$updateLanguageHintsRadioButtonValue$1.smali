.class final Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;
.super Ljava/lang/Object;
.source "WordWiseModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseModel;->updateLanguageHintsRadioButtonValue(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $shouldReportMetrics:Z

.field final synthetic $value:I

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseModel;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    iput p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->$value:I

    iput-boolean p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->$shouldReportMetrics:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    monitor-enter v0

    .line 101
    :try_start_0
    iget v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->$value:I

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->getCurrentSelectedLanguageIndex()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 102
    iget v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->$value:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->getWordwiseLanguage()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v1

    const-string v3, "SettingsItem.getWordwiseLanguage()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->setSelectedValue(I)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->getWordwiseLanguage()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v1

    const-string v3, "SettingsItem.getWordwiseLanguage()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->setSelectedValue(I)V

    .line 107
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 109
    iget v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->$value:I

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_2

    goto :goto_1

    .line 120
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->$shouldReportMetrics:Z

    if-eqz v1, :cond_4

    .line 123
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    sget-object v2, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    sget-object v3, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    sget-object v5, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;->USER_AA:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;

    .line 123
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->access$reportMetricsForLanguageForHints(Lcom/amazon/kcp/reader/ui/WordWiseModel;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    goto :goto_1

    .line 111
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->$shouldReportMetrics:Z

    if-eqz v1, :cond_4

    .line 114
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    sget-object v2, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    sget-object v3, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    sget-object v5, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;->USER_AA:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;

    .line 114
    invoke-static {v1, v2, v3, v5, v4}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->access$reportMetricsForLanguageForHints(Lcom/amazon/kcp/reader/ui/WordWiseModel;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    .line 130
    :cond_4
    :goto_1
    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1$1$1;->INSTANCE:Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1$1$1;

    invoke-static {v1}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$updateLanguageHintsRadioButtonValue$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->access$getTHREAD_SLEEP_TIME$p(Lcom/amazon/kcp/reader/ui/WordWiseModel;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 135
    :cond_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
