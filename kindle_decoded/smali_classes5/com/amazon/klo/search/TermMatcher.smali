.class public Lcom/amazon/klo/search/TermMatcher;
.super Ljava/lang/Object;
.source "TermMatcher.java"


# instance fields
.field private normalizedTerms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private occurrences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/klo/search/TermOccurrence;",
            ">;"
        }
    .end annotation
.end field

.field private termStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private wordsFromTermFound:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/klo/search/TermMatcher;->normalizedTerms:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/amazon/klo/search/TermMatcher;->wordsFromTermFound:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/klo/search/TermMatcher;->occurrences:Ljava/util/ArrayList;

    return-void
.end method

.method public static getTermsForSearch(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "("

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\\("

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 35
    aget-object v1, p0, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    aget-object v1, p0, v3

    invoke-static {v1}, Lcom/amazon/klo/search/TermMatcher;->stringLooksLikeAcronym(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/amazon/klo/search/TermMatcher;->stringLooksLikeAcronym(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    :cond_1
    aget-object p0, p0, v2

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-object v0
.end method

.method private processWord(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 3

    .line 102
    invoke-static {p1}, Lcom/amazon/klo/search/PorterStemmer;->getStemmedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    iget v0, p0, Lcom/amazon/klo/search/TermMatcher;->wordsFromTermFound:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amazon/klo/search/TermMatcher;->normalizedTerms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iput v1, p0, Lcom/amazon/klo/search/TermMatcher;->wordsFromTermFound:I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/search/TermMatcher;->normalizedTerms:Ljava/util/ArrayList;

    iget v2, p0, Lcom/amazon/klo/search/TermMatcher;->wordsFromTermFound:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    iget p1, p0, Lcom/amazon/klo/search/TermMatcher;->wordsFromTermFound:I

    if-nez p1, :cond_1

    .line 112
    iput-object p2, p0, Lcom/amazon/klo/search/TermMatcher;->termStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 114
    :cond_1
    iget p1, p0, Lcom/amazon/klo/search/TermMatcher;->wordsFromTermFound:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/klo/search/TermMatcher;->wordsFromTermFound:I

    .line 116
    iget-object p2, p0, Lcom/amazon/klo/search/TermMatcher;->normalizedTerms:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 118
    iget-object p1, p0, Lcom/amazon/klo/search/TermMatcher;->occurrences:Ljava/util/ArrayList;

    new-instance p2, Lcom/amazon/klo/search/TermOccurrence;

    iget-object v0, p0, Lcom/amazon/klo/search/TermMatcher;->termStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p2, v0, p3}, Lcom/amazon/klo/search/TermOccurrence;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iput v1, p0, Lcom/amazon/klo/search/TermMatcher;->wordsFromTermFound:I

    :cond_2
    return-void
.end method

.method private setTermForMatching(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/amazon/klo/search/TermMatcher;->wordsFromTermFound:I

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lcom/amazon/klo/search/TermMatcher;->termStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/klo/search/TermMatcher;->occurrences:Ljava/util/ArrayList;

    .line 130
    iget-object v1, p0, Lcom/amazon/klo/search/TermMatcher;->normalizedTerms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string v1, " "

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 132
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 134
    iget-object v3, p0, Lcom/amazon/klo/search/TermMatcher;->normalizedTerms:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/amazon/klo/search/PorterStemmer;->getStemmedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static stringLooksLikeAcronym(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 58
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-le v2, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public getTermOccurrences(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/IBookElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/klo/search/TermOccurrence;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p2}, Lcom/amazon/klo/search/TermMatcher;->setTermForMatching(Ljava/lang/String;)V

    .line 77
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/content/IBookElement;

    .line 79
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBookElement;->toDisplayableString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBookElement;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBookElement;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/klo/search/TermMatcher;->processWord(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/amazon/klo/search/TermMatcher;->occurrences:Ljava/util/ArrayList;

    return-object p1
.end method

.method public termFoundInText([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 87
    invoke-direct {p0, p2}, Lcom/amazon/klo/search/TermMatcher;->setTermForMatching(Ljava/lang/String;)V

    .line 89
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0, v2, v3, v3}, Lcom/amazon/klo/search/TermMatcher;->processWord(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 92
    iget-object v2, p0, Lcom/amazon/klo/search/TermMatcher;->occurrences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
