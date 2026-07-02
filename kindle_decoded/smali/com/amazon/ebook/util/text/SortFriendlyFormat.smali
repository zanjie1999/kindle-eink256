.class public abstract Lcom/amazon/ebook/util/text/SortFriendlyFormat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final PREFIX_CHINESE:Ljava/lang/String; = "\u963f\u963f\u963f"

.field public static final PREFIX_JAPANESE:Ljava/lang/String; = "\u3041\u3041\u3041"


# instance fields
.field private charsToPreserve:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dontGuessPronunciation:Z

.field private language:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private stopWords:Lcom/amazon/ebook/util/text/stopword/StopWordList;

.field private thousandsSeparator:C

.field private usetCharsToPreserve:Lcom/ibm/icu/text/UnicodeSet;

.field private wordIter:Ljava/text/BreakIterator;


# direct methods
.method protected constructor <init>(Ljava/util/Locale;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->wordIter:Ljava/text/BreakIterator;

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->stopWords:Lcom/amazon/ebook/util/text/stopword/StopWordList;

    const/4 v1, 0x0

    iput-char v1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->thousandsSeparator:C

    iput-boolean v1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->dontGuessPronunciation:Z

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->charsToPreserve:Ljava/util/Collection;

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->usetCharsToPreserve:Lcom/ibm/icu/text/UnicodeSet;

    iput-object p1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->locale:Ljava/util/Locale;

    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->toLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->language:Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result p1

    iput-char p1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->thousandsSeparator:C

    new-instance p1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p1, p2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->usetCharsToPreserve:Lcom/ibm/icu/text/UnicodeSet;

    iput-boolean p3, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->dontGuessPronunciation:Z

    return-void
.end method

.method protected constructor <init>(Ljava/util/Locale;Ljava/util/Collection;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->wordIter:Ljava/text/BreakIterator;

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->stopWords:Lcom/amazon/ebook/util/text/stopword/StopWordList;

    const/4 v1, 0x0

    iput-char v1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->thousandsSeparator:C

    iput-boolean v1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->dontGuessPronunciation:Z

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->charsToPreserve:Ljava/util/Collection;

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->usetCharsToPreserve:Lcom/ibm/icu/text/UnicodeSet;

    iput-object p1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->locale:Ljava/util/Locale;

    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->toLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->language:Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result p1

    iput-char p1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->thousandsSeparator:C

    iput-object p2, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->charsToPreserve:Ljava/util/Collection;

    iput-boolean p3, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->dontGuessPronunciation:Z

    return-void
.end method

.method private charsToPreserveSetContains(I)Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->usetCharsToPreserve:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->charsToPreserve:Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static removeCJKPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "\u963f\u963f\u963f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v0, "\u3041\u3041\u3041"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method protected addCJKPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->language:Ljava/lang/String;

    const-string/jumbo v1, "zh"

    invoke-static {v0, v1}, Lcom/amazon/ebook/util/text/LanguageTag;->filterMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "ja"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->language:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/ebook/util/text/LanguageTag;->filterMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->dontGuessPronunciation:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;->allCharsInHanOrCommon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->language:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/amazon/ebook/util/text/LanguageTag;->filterMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "\u963f\u963f\u963f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/ebook/util/text/HanPinyinConverter;->convertToPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->language:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ebook/util/text/LanguageTag;->filterMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;->anyCharsInHanHiraganaOrKatakana(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "\u3041\u3041\u3041"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_2
    return-object p1
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract format(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected moveArticles(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->moveArticles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected moveArticles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->stopWords:Lcom/amazon/ebook/util/text/stopword/StopWordList;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->language:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ebook/util/text/stopword/StopWordFactory;->getInstance(ILjava/lang/String;)Lcom/amazon/ebook/util/text/stopword/StopWordList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->stopWords:Lcom/amazon/ebook/util/text/stopword/StopWordList;

    iget-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->wordIter:Ljava/text/BreakIterator;

    :cond_0
    iget-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->stopWords:Lcom/amazon/ebook/util/text/stopword/StopWordList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/amazon/ebook/util/text/stopword/StopWordList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->wordIter:Ljava/text/BreakIterator;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->wordIter:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->wordIter:Ljava/text/BreakIterator;

    invoke-virtual {v1}, Ljava/text/BreakIterator;->first()I

    iget-object v1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->wordIter:Ljava/text/BreakIterator;

    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    move v3, v1

    :goto_0
    if-eq v3, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->wordIter:Ljava/text/BreakIterator;

    invoke-virtual {v3}, Ljava/text/BreakIterator;->next()I

    move-result v3

    goto :goto_0

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->stopWords:Lcom/amazon/ebook/util/text/stopword/StopWordList;

    invoke-virtual {v4, v2}, Lcom/amazon/ebook/util/text/stopword/StopWordList;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v1, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->language:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v2, v1, v4}, Lcom/amazon/ebook/util/text/ElisionUtil;->checkElision(Ljava/lang/String;Ljava/lang/String;I)Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;->getLength()I

    move-result v3

    invoke-virtual {v1}, Lcom/amazon/ebook/util/text/ElisionUtil$ElisionRange;->getLength()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v1, v3

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    invoke-static {p2}, Lcom/amazon/ebook/util/text/StringUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-lez v1, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result p2

    invoke-static {p2}, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;->containsCharsToCoalesce(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p2}, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->charsToPreserveSetContains(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    if-lez v0, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    return-object p1

    :cond_8
    :goto_3
    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    :goto_4
    return-object p1
.end method

.method protected removePunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/16 v3, 0x20

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const v6, 0xffff

    if-le v4, v6, :cond_0

    const/4 v5, 0x2

    :cond_0
    invoke-static {v4}, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;->containsCharsToDelete(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget-char v6, p0, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->thousandsSeparator:C

    if-ne v4, v6, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int v6, v2, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lcom/amazon/ebook/util/text/PlatformSortFriendlyFormat;->containsCharsToCoalesce(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v4}, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->charsToPreserveSetContains(I)Z

    move-result v6

    if-nez v6, :cond_4

    if-eq v3, v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :goto_1
    move v3, v4

    :goto_2
    add-int/2addr v2, v5

    goto :goto_0

    :cond_5
    if-ne v3, v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
