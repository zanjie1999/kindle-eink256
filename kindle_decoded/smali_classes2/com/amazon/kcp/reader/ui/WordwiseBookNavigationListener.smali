.class public Lcom/amazon/kcp/reader/ui/WordwiseBookNavigationListener;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "WordwiseBookNavigationListener.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kcp/reader/ui/WordwiseBookNavigationListener;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordwiseBookNavigationListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    return-void
.end method

.method private reportPinyinMetricsOnClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 12

    .line 97
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordwiseBookNavigationListener;->TAG:Ljava/lang/String;

    const-string v2, "Pinyin content close metrics starting..."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v7

    .line 101
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 104
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v9

    .line 105
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinCapable(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v3

    const/4 p1, 0x0

    if-eqz v8, :cond_0

    .line 107
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v10, v1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 110
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    .line 112
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    move-object v11, v1

    const/4 v6, 0x0

    const-string v2, "LanguageLayerPinyin"

    move-object v1, v0

    move v4, v9

    move v5, v10

    .line 117
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordAuxContentAvailability(Ljava/lang/String;ZZZZ)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayerSupported_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LanguageLayerPinyin"

    invoke-interface {v7, v2, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2

    if-eqz v10, :cond_2

    .line 122
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinVisible()Z

    move-result v1

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LayerVisible_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LayerVisible"

    .line 124
    invoke-interface {v0, v2, v3, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz v1, :cond_2

    .line 128
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-interface {v8, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DifficultyLevel_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "DifficultyLevel"

    .line 130
    invoke-interface {v0, v2, v3, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 134
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/WordwiseBookNavigationListener;->TAG:Ljava/lang/String;

    const-string v1, "Pinyin content close metrics reporting complete!"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportWordwiseMetricsOnClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 14

    .line 34
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordwiseBookNavigationListener;->TAG:Ljava/lang/String;

    const-string v2, "WordWise content close metrics starting..."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v7

    .line 43
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x5

    if-eqz v3, :cond_0

    .line 44
    sget-object v3, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 45
    sget-object v5, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 46
    sget-object v6, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 47
    sget-object v6, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    goto :goto_0

    :cond_0
    move-object v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x0

    .line 50
    :goto_0
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseCapable(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v3

    const/4 v6, 0x0

    const-string v2, "LanguageLayer"

    move-object v1, v0

    move v4, v7

    move v5, v11

    .line 51
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordAuxContentAvailability(Ljava/lang/String;ZZZZ)V

    .line 53
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 61
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LayerSupported_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LanguageLayer"

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_3

    if-eqz v11, :cond_3

    .line 67
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseVisible()Z

    move-result v2

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LayerVisible_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "LayerVisible"

    .line 69
    invoke-interface {v0, v3, v4, v2, v9}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz v2, :cond_3

    if-eqz v13, :cond_2

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultipleChoiceEnabled"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {v0, v3, v4, v8, v9}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 78
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultipleChoiceDisabled"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {v0, v3, v4, v9, v9}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 83
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DifficultyLevel_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DifficultyLevel"

    .line 84
    invoke-interface {v0, v3, v2, v12, v9}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HintLanguage_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "HintLanguage"

    .line 88
    invoke-interface {v0, v3, p1, v10, v9}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/WordwiseBookNavigationListener;->TAG:Ljava/lang/String;

    const-string v1, "WordWise content close metrics reporting complete!"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 26
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordwiseBookNavigationListener;->reportPinyinMetricsOnClose(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordwiseBookNavigationListener;->reportWordwiseMetricsOnClose(Lcom/amazon/kindle/krx/content/IBook;)V

    :goto_0
    return-void
.end method
