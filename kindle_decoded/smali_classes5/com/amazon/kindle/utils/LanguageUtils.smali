.class public Lcom/amazon/kindle/utils/LanguageUtils;
.super Ljava/lang/Object;
.source "LanguageUtils.java"


# static fields
.field private static final TCN_TW_LANG_CODE:Ljava/lang/String; = "zh_TW"

.field private static final YJTCN_SUPPORT_ENABLED:Z = true


# direct methods
.method public static adaptDefaultLocale()Ljava/util/Locale;
    .locals 2

    .line 74
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->lang_code:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh_TW"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object v0

    .line 79
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static formatLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 51
    invoke-static {p0}, Lcom/amazon/kindle/utils/LanguageUtils;->isTraditionalChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "zh-hant"

    return-object p0

    :cond_0
    const-string v0, "_"

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "-"

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static isTraditionalChinese(Ljava/lang/String;)Z
    .locals 1

    .line 36
    invoke-static {}, Lcom/amazon/kindle/utils/LanguageUtils;->isYJTraditionalChineseSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "zh-hant"

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isYJTraditionalChineseSupportEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
