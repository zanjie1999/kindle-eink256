.class public Lcom/amazon/kcp/reader/ui/WordWiseTutorialProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "WordWiseTutorialProvider.java"


# static fields
.field private static final ACTION_DISABLE:Ljava/lang/String; = "DisableHints"

.field private static final ACTION_ENABLE_ZH:Ljava/lang/String; = "EnableHintsZH"

.field private static final KEY_SHOULD_SHOW:Ljava/lang/String; = "ShouldShow"

.field private static final TAG:Ljava/lang/String;

.field private static final TOPIC:Ljava/lang/String; = "WordWise"


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseTutorialProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseTutorialProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "WordWise"

    .line 37
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseTutorialProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation

    const-string p1, "ShouldShow"

    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseTutorialProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->shouldShowFtueDialog()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public handleAction(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DisableHints"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 71
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setWordWiseEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "EnableHintsZH"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 73
    sget-object p1, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseTutorialProvider;->TAG:Ljava/lang/String;

    const-string v1, "Enabling Chinese-language Word Wise hints."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 76
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetHintLanguageFromFtuxDisabled_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    .line 82
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setWordWiseEnabled(Z)V

    const-string p1, "EnabledFromFtux"

    .line 83
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTutorialStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V
    .locals 0

    .line 60
    sget-object p1, Lcom/amazon/kindle/krx/tutorial/TutorialStatus;->SHOWN:Lcom/amazon/kindle/krx/tutorial/TutorialStatus;

    invoke-virtual {p4, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "WordWiseFtueShown"

    .line 61
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
