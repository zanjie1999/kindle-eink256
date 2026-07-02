.class public Lcom/amazon/kcp/translation/Languages;
.super Ljava/lang/Object;
.source "Languages.java"


# static fields
.field private static s_cachedLocale:Ljava/util/Locale;

.field private static s_detecting:Lcom/amazon/kcp/translation/Language;

.field private static s_supportedLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/translation/Language;",
            ">;"
        }
    .end annotation
.end field

.field private static s_supportedLanguagesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/translation/Language;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguagesMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    return-object v0
.end method

.method public static convertToBCP47(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 207
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->toLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertToSupportedLanguage(Ljava/util/Locale;Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;
    .locals 2

    .line 181
    invoke-static {p0}, Lcom/amazon/kcp/translation/Languages;->convertToBCP47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kcp/translation/Languages;->getLanguage(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object v0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object p0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-static {p0}, Lcom/amazon/kcp/translation/Languages;->convertToBCP47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/amazon/kcp/translation/Languages;->getLanguage(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object p0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/amazon/kcp/translation/Languages;->getLanguage(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object p0

    :goto_0
    move-object v0, p0

    if-nez v0, :cond_1

    .line 192
    invoke-static {p1}, Lcom/amazon/kcp/translation/Languages;->getDefaultLanguage(Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getDefaultLanguage(Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;
    .locals 1

    .line 166
    invoke-static {p0}, Lcom/amazon/kcp/translation/Languages;->getSupportedLangaugesMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/translation/Language;

    return-object p0
.end method

.method public static getDetecting(Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;
    .locals 0

    .line 143
    invoke-static {p0}, Lcom/amazon/kcp/translation/Languages;->verifyCachedLanguages(Landroid/content/Context;)V

    .line 144
    sget-object p0, Lcom/amazon/kcp/translation/Languages;->s_detecting:Lcom/amazon/kcp/translation/Language;

    return-object p0
.end method

.method public static getLanguage(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/kcp/translation/Language;
    .locals 0

    .line 156
    invoke-static {p1}, Lcom/amazon/kcp/translation/Languages;->getSupportedLangaugesMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/translation/Language;

    return-object p0
.end method

.method private static getSupportedLangaugesMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/translation/Language;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lcom/amazon/kcp/translation/Languages;->verifyCachedLanguages(Landroid/content/Context;)V

    .line 123
    sget-object p0, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguagesMap:Ljava/util/Map;

    return-object p0
.end method

.method public static getSupportedLanguages(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/translation/Language;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lcom/amazon/kcp/translation/Languages;->verifyCachedLanguages(Landroid/content/Context;)V

    .line 134
    sget-object p0, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    return-object p0
.end method

.method private static declared-synchronized verifyCachedLanguages(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/amazon/kcp/translation/Languages;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/translation/Languages;->s_cachedLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 61
    monitor-exit v0

    return-void

    .line 64
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/translation/Languages;->s_cachedLocale:Ljava/util/Locale;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    .line 68
    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_spanish:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "es"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_english:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_french:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_dutch:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nl"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_german:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_italian:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_japanese:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_korean:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_arabic:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_portuguese:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pt"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_russian:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ru"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_finnish:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fi"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_norwegian:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "no"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_hindi:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hi"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_danish:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "da"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_chinese_simplified:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 84
    invoke-static {v4}, Lcom/amazon/kcp/translation/Languages;->convertToBCP47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_chinese_traditional:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 86
    invoke-static {v4}, Lcom/amazon/kcp/translation/Languages;->convertToBCP47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_afrikaans:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "af"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_catalan:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ca"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_icelandic:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "is"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_swahili:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sw"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_swedish:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sv"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/translation/Language;

    sget v3, Lcom/amazon/kindle/krl/R$string;->translation_welsh:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cy"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 96
    sget-object v2, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    new-instance v3, Lcom/amazon/kcp/translation/Languages$1;

    invoke-direct {v3, v1}, Lcom/amazon/kcp/translation/Languages$1;-><init>(Ljava/text/Collator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    new-instance v1, Lcom/amazon/kcp/translation/Languages$2;

    sget-object v2, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/translation/Languages$2;-><init>(I)V

    sput-object v1, Lcom/amazon/kcp/translation/Languages;->s_supportedLanguagesMap:Ljava/util/Map;

    .line 112
    new-instance v1, Lcom/amazon/kcp/translation/Language;

    sget v2, Lcom/amazon/kindle/krl/R$string;->translation_detecting:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/kcp/translation/Language;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/kcp/translation/Languages;->s_detecting:Lcom/amazon/kcp/translation/Language;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
