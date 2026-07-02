.class public Lcom/amazon/android/util/CharacterAnalyzer;
.super Ljava/lang/Object;
.source "CharacterAnalyzer.java"


# direct methods
.method public static isGeneralQuotationMark(Ljava/lang/Character;)Z
    .locals 3

    .line 50
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 51
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 52
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isNoSpaceScript(Ljava/lang/Character;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Lcom/amazon/kindle/search/CharacterChecker;->isNoSpaceScript(C)Z

    move-result p0

    return p0
.end method

.method public static removeSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_4

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 24
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 26
    invoke-static {v3}, Ljava/lang/Character;->isSpace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, -0x1

    .line 27
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/android/util/CharacterAnalyzer;->isNoSpaceScript(Ljava/lang/Character;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 28
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/android/util/CharacterAnalyzer;->isNoSpaceScript(Ljava/lang/Character;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_2
    return-object p0
.end method
