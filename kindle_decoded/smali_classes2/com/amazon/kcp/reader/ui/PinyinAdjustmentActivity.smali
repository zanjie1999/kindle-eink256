.class public Lcom/amazon/kcp/reader/ui/PinyinAdjustmentActivity;
.super Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;
.source "PinyinAdjustmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDifficultyLevel()I
    .locals 1

    .line 33
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getPinyinDifficultyLevel()I

    move-result v0

    return v0
.end method

.method protected isHintVisible()Z
    .locals 1

    .line 38
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinVisible()Z

    move-result v0

    return v0
.end method

.method protected persistDifficultyLevel(I)V
    .locals 2

    .line 14
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getPinyinDifficultyLevel()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->sharedPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 18
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setPinYinLetterSpacing(Z)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setPinYinLetterSpacing(Z)V

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshGlosses()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WordWiseDifficultyLevelChanged_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportPinyinAction(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected recordMetricsOnHidden()V
    .locals 1

    const-string v0, "HideHints"

    .line 53
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportPinyinAction(Ljava/lang/String;)V

    return-void
.end method

.method protected recordMetricsOnShown()V
    .locals 1

    const-string v0, "ShowHints"

    .line 48
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportPinyinAction(Ljava/lang/String;)V

    return-void
.end method

.method protected setHintVisible(Z)V
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setPinyinVisible(Z)V

    return-void
.end method
