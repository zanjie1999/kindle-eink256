.class public Lcom/amazon/kindle/services/locale/AndroidLocaleManager;
.super Ljava/lang/Object;
.source "AndroidLocaleManager.java"

# interfaces
.implements Lcom/amazon/kindle/services/locale/ILocaleManager;


# static fields
.field private static instance:Lcom/amazon/kindle/services/locale/AndroidLocaleManager;


# instance fields
.field final BR_LOCALE:Ljava/util/Locale;

.field locale:Ljava/lang/String;

.field final supportedLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->BR_LOCALE:Ljava/util/Locale;

    const-string v3, "en-US"

    const-string v4, "en-GB"

    const-string v5, "de-DE"

    const-string v6, "fr-FR"

    const-string v7, "it-IT"

    const-string v8, "es-ES"

    const-string v9, "pt-BR"

    const-string v10, "zh-CN"

    const-string v11, "ja-JP"

    .line 22
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->supportedLocales:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/services/locale/AndroidLocaleManager;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->instance:Lcom/amazon/kindle/services/locale/AndroidLocaleManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;

    invoke-direct {v0}, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->instance:Lcom/amazon/kindle/services/locale/AndroidLocaleManager;

    .line 41
    :cond_0
    sget-object v0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->instance:Lcom/amazon/kindle/services/locale/AndroidLocaleManager;

    return-object v0
.end method

.method private getLocaleFromLocaleSettings()Ljava/lang/String;
    .locals 3

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAmazonLocaleCode()Ljava/lang/String;
    .locals 4

    .line 49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 51
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "en-GB"

    return-object v0

    .line 53
    :cond_0
    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "de-DE"

    return-object v0

    .line 55
    :cond_1
    sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "fr-FR"

    return-object v0

    .line 57
    :cond_2
    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "it-IT"

    return-object v0

    :cond_3
    const-string v2, "es"

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "es-ES"

    return-object v0

    .line 62
    :cond_4
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "zh-CN"

    return-object v0

    .line 64
    :cond_5
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "zh-TW"

    return-object v0

    .line 66
    :cond_6
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "ja-JP"

    return-object v0

    .line 68
    :cond_7
    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "ko-KR"

    return-object v0

    .line 70
    :cond_8
    iget-object v2, p0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->BR_LOCALE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->BR_LOCALE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "pt-BR"

    return-object v0

    :cond_9
    const-string v0, "en-US"

    return-object v0
.end method

.method public getLocaleCode()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->locale:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->getLocaleFromLocaleSettings()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->locale:Ljava/lang/String;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedLocales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->supportedLocales:Ljava/util/List;

    return-object v0
.end method

.method public refreshLocaleSettings()V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->getLocaleFromLocaleSettings()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/locale/AndroidLocaleManager;->locale:Ljava/lang/String;

    return-void
.end method
