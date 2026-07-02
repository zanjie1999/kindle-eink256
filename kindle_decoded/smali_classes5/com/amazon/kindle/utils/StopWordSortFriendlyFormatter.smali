.class public Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;
.super Ljava/lang/Object;
.source "StopWordSortFriendlyFormatter.java"

# interfaces
.implements Lcom/amazon/kindle/utils/ISortFriendlyFormatter;


# static fields
.field private static final PREFIX:Ljava/lang/String; = "\u963f\u963f\u963f"

.field private static final STOP_WORDS_AR:[Ljava/lang/String;

.field private static final STOP_WORDS_DE:[Ljava/lang/String;

.field private static final STOP_WORDS_EN:[Ljava/lang/String;

.field private static final STOP_WORDS_ES:[Ljava/lang/String;

.field private static final STOP_WORDS_FR:[Ljava/lang/String;

.field private static final STOP_WORDS_IT:[Ljava/lang/String;

.field private static final STOP_WORDS_NL:[Ljava/lang/String;

.field private static final STOP_WORDS_PT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final UNIVERSAL_STOP_WORDS:[Ljava/lang/String;

.field private static stopWordsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string/jumbo v0, "the "

    const-string v1, "an "

    const-string v2, "a "

    .line 23
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->UNIVERSAL_STOP_WORDS:[Ljava/lang/String;

    .line 24
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_EN:[Ljava/lang/String;

    const-string v1, "ein "

    const-string v2, "eine "

    const-string v3, "einen "

    const-string v4, "einem "

    const-string v5, "einer "

    const-string v6, "eines "

    const-string v7, "die "

    const-string v8, "der "

    const-string v9, "das "

    const-string v10, "den "

    const-string v11, "dem "

    const-string v12, "des "

    .line 25
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_DE:[Ljava/lang/String;

    const-string v1, "el "

    const-string v2, "la "

    const-string v3, "los "

    const-string v4, "las "

    const-string/jumbo v5, "un "

    const-string/jumbo v6, "una "

    const-string/jumbo v7, "unos "

    const-string/jumbo v8, "unas "

    .line 26
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_ES:[Ljava/lang/String;

    const-string v1, "le "

    const-string v2, "la "

    const-string v3, "l\' "

    const-string v4, "les "

    const-string/jumbo v5, "un "

    const-string/jumbo v6, "une "

    const-string v7, "des "

    .line 27
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_IT:[Ljava/lang/String;

    const-string v1, "il "

    const-string v2, "lo "

    const-string v3, "la "

    const-string v4, "les "

    const-string v5, "l\' "

    const-string v6, "i "

    const-string v7, "gli "

    const-string v8, "le "

    const-string/jumbo v9, "un "

    const-string/jumbo v10, "uno "

    const-string/jumbo v11, "una "

    const-string/jumbo v12, "un\' "

    .line 28
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_FR:[Ljava/lang/String;

    const-string v1, "o "

    const-string v2, "a "

    const-string/jumbo v3, "os "

    const-string v4, "as "

    const-string/jumbo v5, "um "

    const-string/jumbo v6, "uma "

    const-string/jumbo v7, "uns "

    const-string/jumbo v8, "umas "

    .line 29
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_PT:[Ljava/lang/String;

    const-string v1, "de "

    const-string v2, "een "

    const-string v3, "eene "

    const-string v4, "het "

    const-string v5, "\'n "

    const-string v6, "\'t "

    .line 30
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_NL:[Ljava/lang/String;

    const-string/jumbo v0, "\u0627\u0644"

    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_AR:[Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->stopWordsMap:Ljava/util/Map;

    .line 35
    sget-object v1, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_EN:[Ljava/lang/String;

    const-string v2, "en"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->stopWordsMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_DE:[Ljava/lang/String;

    const-string v2, "de"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->stopWordsMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_ES:[Ljava/lang/String;

    const-string v2, "es"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->stopWordsMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_IT:[Ljava/lang/String;

    const-string v2, "it"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->stopWordsMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_FR:[Ljava/lang/String;

    const-string v2, "fr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->stopWordsMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_PT:[Ljava/lang/String;

    const-string/jumbo v2, "pt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->stopWordsMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_NL:[Ljava/lang/String;

    const-string v2, "nl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->stopWordsMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->STOP_WORDS_AR:[Ljava/lang/String;

    const-string v2, "ar"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-class v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getStopWordsArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->stopWordsMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-nez p0, :cond_0

    .line 99
    sget-object p0, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->UNIVERSAL_STOP_WORDS:[Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->UNIVERSAL_STOP_WORDS:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 101
    :cond_0
    :try_start_1
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private guessLanguagecodeByTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 112
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLangDetector()Lcom/amazon/kindle/langdetector/BookLangDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/langdetector/BookLangDetector;->detect(Ljava/lang/String;)Lcom/amazon/kindle/langdetector/BookLangDetector$Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/langdetector/BookLangDetector$Result;->mainLanguageConfidence()Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;->language:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazon/kindle/langdetector/LangDetectorError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private shouldSkipPronunciation(Ljava/lang/String;)Z
    .locals 1

    .line 133
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 134
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/LocaleUtils;->isTCNLocale(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 68
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-direct {p0, p3}, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->guessLanguagecodeByTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 73
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 78
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->shouldSkipPronunciation(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/amazon/kcp/debug/TCNSortingUtils;->isTCNSortingEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    invoke-static {}, Lcom/amazon/kindle/util/LocaleUtils;->currentLocaleIsTWLocale()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u963f\u963f\u963f\u963f\u963f\u963f"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->format(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u963f\u963f\u963f"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->format(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :cond_3
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 90
    invoke-virtual {p0, p3, v0, v1}, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->format(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 92
    :cond_4
    invoke-virtual {p0, p2, v0, v1}, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->format(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/utils/StopWordSortFriendlyFormatter;->getStopWordsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 51
    array-length p3, p2

    if-eqz p3, :cond_2

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/TCNSortingUtils;->isTCNSortingEnabled()Z

    move-result p3

    if-nez p3, :cond_1

    :goto_0
    const-string/jumbo p3, "\u963f\u963f\u963f"

    .line 57
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x3

    .line 58
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p1, p2}, Lcom/amazon/kindle/util/ComparableStringGenerator;->getComparableString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method
