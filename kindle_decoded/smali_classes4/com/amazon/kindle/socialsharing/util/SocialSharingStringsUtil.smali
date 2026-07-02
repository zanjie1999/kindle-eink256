.class public Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;
.super Ljava/lang/Object;
.source "SocialSharingStringsUtil.java"


# direct methods
.method public static getEllipses()Ljava/lang/String;
    .locals 2

    .line 83
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->clipping_limit_ellipses:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shortenTextByWords(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-gtz p1, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_2

    return-object p0

    .line 48
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/SocialSharingStringsUtil;->getEllipses()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p1, :cond_3

    return-object v0

    .line 53
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_4

    return-object v1

    :cond_4
    if-nez p2, :cond_5

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 61
    :cond_5
    invoke-static {p2}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    if-nez v0, :cond_7

    .line 67
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 68
    invoke-static {p2}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p2

    .line 69
    invoke-virtual {p2, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    if-ne v0, v2, :cond_7

    const/4 v0, 0x0

    .line 76
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
