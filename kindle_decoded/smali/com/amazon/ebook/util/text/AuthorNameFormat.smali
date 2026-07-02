.class public Lcom/amazon/ebook/util/text/AuthorNameFormat;
.super Lcom/amazon/ebook/util/text/SortFriendlyFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;
    }
.end annotation


# static fields
.field private static final NAME_FIELD_SEPARATOR:Ljava/lang/String; = ", "


# instance fields
.field private conjunctions:Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;

.field private locale:Ljava/util/Locale;

.field private prefixes:Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;

.field private qualifiers:Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;

.field private stopWords:Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazon/ebook/util/text/AuthorNameFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ebook/util/text/AuthorNameFormat;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/amazon/ebook/util/text/AuthorNameFormat;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method private containsCJK(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/amazon/ebook/util/text/PlatformAuthorNameFormat;->containsCJK(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private handleOrgName(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz p2, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isIgnorable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->moveArticles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private isCloseBracket(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    const/16 v1, 0x16

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isIgnorable(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isOpenBracket(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isQuoteMark(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isOpenBracket(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isQuoteMark(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result v1

    const/16 v2, 0x22

    if-eq p1, v2, :cond_0

    const/16 p1, 0x1d

    if-eq v1, p1, :cond_0

    const/16 p1, 0x1e

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isSignificantComma(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/amazon/ebook/util/text/AuthorNameFormat;->conjunctions:Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;

    invoke-virtual {v2, p1, p2}, Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;->contains(Ljava/util/List;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amazon/ebook/util/text/AuthorNameFormat;->qualifiers:Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;

    invoke-virtual {v2, p1, p2}, Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;->contains(Ljava/util/List;I)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private nextWord(Ljava/lang/String;Ljava/text/BreakIterator;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p2}, Ljava/text/BreakIterator;->current()I

    move-result v0

    invoke-virtual {p2}, Ljava/text/BreakIterator;->next()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private partitionName(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/amazon/ebook/util/text/AuthorNameFormat;->conjunctions:Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;

    invoke-virtual {v4, p2, v2}, Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;->contains(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2, v2}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isSignificantComma(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    if-gez v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-gt v3, v5, :cond_4

    if-ne v3, v5, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    goto :goto_2

    :cond_3
    if-lt v0, v4, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v6, 0x3

    if-lt v3, v6, :cond_5

    :cond_4
    :goto_2
    move v2, v0

    :cond_5
    if-lez v0, :cond_9

    if-ge v0, v2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->containsCJK(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_9
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v0, v2, :cond_d

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isIgnorable(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    iget-object v7, p0, Lcom/amazon/ebook/util/text/AuthorNameFormat;->stopWords:Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;

    invoke-virtual {v7, p2, v0}, Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;->contains(Ljava/util/List;I)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-direct {p0, p2, v2}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->handleOrgName(Ljava/util/List;I)V

    return-void

    :cond_b
    invoke-direct {p0, v6}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->containsCJK(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    return-void

    :cond_c
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    sub-int v0, v2, v3

    if-ge v0, v4, :cond_e

    return-void

    :cond_e
    sub-int/2addr v2, v5

    :goto_6
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ebook/util/text/AuthorNameFormat;->qualifiers:Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;

    invoke-virtual {v3, p2, v2}, Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;->scanBackwards(Ljava/util/List;I)I

    move-result v3

    if-lez v2, :cond_12

    invoke-direct {p0, v0}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isIgnorable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_f

    if-lez v3, :cond_12

    :cond_f
    if-le v3, v2, :cond_10

    move v3, v2

    :cond_10
    if-lez v3, :cond_11

    goto :goto_7

    :cond_11
    const/4 v3, 0x1

    :goto_7
    sub-int/2addr v2, v3

    goto :goto_6

    :cond_12
    move v0, v2

    :goto_8
    if-lez v0, :cond_13

    iget-object v3, p0, Lcom/amazon/ebook/util/text/AuthorNameFormat;->prefixes:Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, p2, v4}, Lcom/amazon/ebook/util/text/AuthorNameFormat$WordList;->contains(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_13

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_13
    if-nez v0, :cond_14

    return-void

    :cond_14
    move v3, v2

    :goto_9
    if-lt v3, v0, :cond_17

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isIgnorable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-ne v3, v2, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_15
    invoke-interface {p1, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_16
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method private tokenize(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/ebook/util/text/AuthorNameFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/amazon/ebook/util/text/PlatformBreakIteratorUtil;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/BreakIterator;->first()I

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->nextWord(Ljava/lang/String;Ljava/text/BreakIterator;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isOpenBracket(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isQuoteMark(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->nextWord(Ljava/lang/String;Ljava/text/BreakIterator;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->nextWord(Ljava/lang/String;Ljava/text/BreakIterator;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :cond_2
    :goto_2
    invoke-direct {p0, v1}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isQuoteMark(Ljava/lang/String;)Z

    move-result v3

    :cond_3
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->nextWord(Ljava/lang/String;Ljava/text/BreakIterator;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isQuoteMark(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_4
    invoke-direct {p0, v1}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->isCloseBracket(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amazon/ebook/util/text/AuthorNameFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-super {p0, p1}, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->removePunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/amazon/ebook/util/text/SortFriendlyFormat;->addCJKPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/ebook/util/text/AuthorNameFormat;->partitionName(Ljava/util/List;Ljava/util/List;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
