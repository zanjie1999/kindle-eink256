.class public Lcom/amazon/kindle/util/ComparableStringGenerator;
.super Ljava/lang/Object;
.source "ComparableStringGenerator.java"


# direct methods
.method public static getComparableString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    invoke-static {p0, v0, v1}, Lcom/amazon/kindle/util/UnicodeUtils;->convertToUnicodeIndexEncoding(Ljava/lang/String;Z[C)[C

    move-result-object p0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, p0, v3

    .line 30
    invoke-static {v4}, Lcom/amazon/kindle/util/UnicodeUtils;->sortOrder(C)C

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 40
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getType(C)I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_2
    :goto_2
    array-length v1, p1

    if-ge v2, v1, :cond_5

    .line 49
    aget-object v1, p1, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 55
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
