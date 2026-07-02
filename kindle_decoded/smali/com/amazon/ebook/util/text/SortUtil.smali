.class public Lcom/amazon/ebook/util/text/SortUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCollator(Ljava/lang/String;)Lcom/ibm/icu/text/Collator;
    .locals 5

    invoke-static {p0}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->getLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/Collator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object v1

    instance-of v2, v1, Lcom/ibm/icu/text/RuleBasedCollator;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->setNumericCollation(Z)V

    :cond_1
    const-string v4, "ja"

    invoke-static {v4, p0}, Lcom/amazon/ebook/util/text/LanguageTag;->filterMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p0, 0x3

    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/Collator;->setStrength(I)V

    if-eqz v2, :cond_2

    move-object p0, v1

    check-cast p0, Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->setHiraganaQuaternary(Z)V

    :cond_2
    const/4 p0, 0x4

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/Collator;->setReorderCodes([I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "zh"

    invoke-static {v2, p0}, Lcom/amazon/ebook/util/text/LanguageTag;->filterMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_1

    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/Collator;->setReorderCodes([I)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/ibm/icu/lang/UScript;->getCode(Lcom/ibm/icu/util/ULocale;)[I

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/Collator;->setReorderCodes([I)V

    :goto_0
    return-object v1

    :array_0
    .array-data 4
        0x14
        0x16
        0x11
        0x1004
    .end array-data

    :array_1
    .array-data 4
        0x11
        0x1004
    .end array-data
.end method

.method public static getCollator(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;
    .locals 0

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->toLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/ebook/util/text/SortUtil;->getCollator(Ljava/lang/String;)Lcom/ibm/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method
