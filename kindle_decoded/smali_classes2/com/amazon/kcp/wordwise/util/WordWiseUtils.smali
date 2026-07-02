.class public Lcom/amazon/kcp/wordwise/util/WordWiseUtils;
.super Ljava/lang/Object;
.source "WordWiseUtils.java"


# static fields
.field private static final CHINESE_MARKETPLACE:Ljava/lang/String; = "AAHKV2X7AFYLW"

.field private static final ENGLISH_MARKETPLACES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.wordwise.util.WordWiseUtils"

.field private static base64Service:Lcom/amazon/kcp/wordwise/util/IBase64Service;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->ENGLISH_MARKETPLACES:Ljava/util/Collection;

    const-string v1, "ATVPDKIKX0DER"

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->ENGLISH_MARKETPLACES:Ljava/util/Collection;

    const-string v1, "A1F83G8C2ARO7P"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->ENGLISH_MARKETPLACES:Ljava/util/Collection;

    const-string v1, "A2EUQ1WTGCTBG2"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->ENGLISH_MARKETPLACES:Ljava/util/Collection;

    const-string v1, "A39IBJ37TRP1C6"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->ENGLISH_MARKETPLACES:Ljava/util/Collection;

    const-string v1, "A21TJRUUN4KGV"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lcom/amazon/kcp/wordwise/util/WordWiseUtils$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils$1;-><init>(I)V

    return-void
.end method

.method public static clearShownFtueDialog()V
    .locals 3

    .line 352
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SHOWN_FTUE_VERSION"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SHOWN_PINYIN_FTUE_VERSION"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static dictionaryExists()Z
    .locals 1

    .line 194
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getCurrentGlossDictionaryType()Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->dictionaryExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static dictionaryExists(Ljava/lang/String;)Z
    .locals 2

    .line 179
    invoke-static {p0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 183
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openDictionary(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 185
    invoke-interface {p0}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->open()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static fillArrayWith(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 220
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 222
    aput-object p0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getBase64Service()Lcom/amazon/kcp/wordwise/util/IBase64Service;
    .locals 1

    .line 66
    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->base64Service:Lcom/amazon/kcp/wordwise/util/IBase64Service;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/amazon/kcp/wordwise/util/DefaultBase64ServiceImpl;

    invoke-direct {v0}, Lcom/amazon/kcp/wordwise/util/DefaultBase64ServiceImpl;-><init>()V

    sput-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->base64Service:Lcom/amazon/kcp/wordwise/util/IBase64Service;

    .line 69
    :cond_0
    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->base64Service:Lcom/amazon/kcp/wordwise/util/IBase64Service;

    return-object v0
.end method

.method private static getContextFromPlugin()Landroid/content/Context;
    .locals 1

    .line 251
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentGlossDictionaryType()Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;
    .locals 2

    .line 202
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->ZH_PN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    return-object v0

    .line 204
    :cond_0
    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSelectedWordWiseLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->EN_ZH:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    return-object v0

    .line 207
    :cond_1
    sget-object v0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->EN_EN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    return-object v0
.end method

.method public static getDefaultSelectedLanguage()Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;
    .locals 1

    .line 325
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isChineseLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    return-object v0

    .line 327
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isChineseMarketplace()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isEnglishLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasShownFtueDialog()Z
    .locals 4

    .line 368
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 374
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SHOWN_FTUE_VERSION"

    .line 375
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 376
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SHOWN_PINYIN_FTUE_VERSION"

    .line 377
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 380
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ww/R$integer;->tutorial_reader_wordwise_version:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-lt v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isChineseLocale()Z
    .locals 2

    .line 303
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 304
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 305
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isChineseMarketplace()Z
    .locals 2

    .line 313
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 317
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AAHKV2X7AFYLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDefaultEnabled()Z
    .locals 6

    .line 340
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 341
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v3, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDefaultEnabled? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isEnglishLocale()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isEnglishMarketPlace()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isEnDevice?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isEnglishLocale()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isEnPFM?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isEnglishMarketPlace()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-interface {v0, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isEnglishLocale()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isEnglishMarketPlace()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isEnglishLocale()Z
    .locals 2

    .line 281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEnglishMarketPlace()Z
    .locals 3

    .line 289
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 294
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->ENGLISH_MARKETPLACES:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isWifiConnected()Z
    .locals 3

    .line 231
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getContextFromPlugin()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "wifi"

    .line 237
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    return v1

    .line 242
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    array-length v1, p0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    .line 86
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static overrideExists(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 159
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseOverrideFile(Lcom/amazon/kindle/krx/content/IBook;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 160
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static pinyinExists()Z
    .locals 5

    .line 139
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->ZH_PN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getGlossDictionaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pinyin db exists with name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static resyncDictionary()V
    .locals 1

    .line 261
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->cleanUp()V

    .line 263
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->syncGlossDictionary()V

    .line 264
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshLineSpacingAndGlosses()V

    :cond_0
    return-void
.end method

.method public static sidecarExists(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 123
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v1

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileWithAsinAndGuid(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p0

    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sidecar exists with name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 130
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileWithAsin(Lcom/amazon/kindle/krx/content/IBook;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 131
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static sidecarForBookLoaded(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 169
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openSidecarForBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 170
    invoke-interface {p0}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->open()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
