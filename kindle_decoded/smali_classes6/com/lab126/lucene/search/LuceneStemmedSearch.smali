.class public Lcom/lab126/lucene/search/LuceneStemmedSearch;
.super Ljava/lang/Object;
.source "LuceneStemmedSearch.java"


# static fields
.field private static final DISTANCE_PER_TERM:I = 0x4

.field private static final NEAR_DISTANCE:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private luceneBookIndexer:Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;

.field private queryString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/lab126/lucene/search/LuceneStemmedSearch;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lab126/lucene/search/LuceneStemmedSearch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lab126/lucene/search/LuceneStemmedSearch;->luceneBookIndexer:Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;

    .line 36
    iput-object p2, p0, Lcom/lab126/lucene/search/LuceneStemmedSearch;->queryString:Ljava/lang/String;

    return-void
.end method

.method private findWithinRange(ILcom/lab126/lucene/search/LuceneStemmedSearchResultItem;I)I
    .locals 2

    .line 40
    invoke-virtual {p2}, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->getMatchLocationsList()Ljava/util/LinkedList;

    move-result-object p2

    .line 41
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p1, v1

    if-gt v1, p3, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, p1

    if-gt p2, p3, :cond_2

    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private lineupMatches(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto/16 :goto_5

    .line 81
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 84
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;

    .line 85
    new-instance v6, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;

    invoke-virtual {v5}, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x4

    .line 90
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;

    invoke-virtual {v5}, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->getMatchLocationsList()Ljava/util/LinkedList;

    move-result-object v5

    .line 92
    :cond_2
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 93
    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, -0x1

    :goto_1
    if-ge v8, v0, :cond_4

    .line 98
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;

    .line 99
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {p0, v11, v10, v4}, Lcom/lab126/lucene/search/LuceneStemmedSearch;->findWithinRange(ILcom/lab126/lucene/search/LuceneStemmedSearchResultItem;I)I

    move-result v10

    if-ne v10, v7, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    .line 104
    :cond_3
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_2

    .line 109
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->addMatchLocation(I)V

    const/4 v7, 0x1

    :goto_3
    if-ge v7, v0, :cond_5

    .line 111
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;

    .line 112
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10, v8, v4}, Lcom/lab126/lucene/search/LuceneStemmedSearch;->removeWithinRange(ILcom/lab126/lucene/search/LuceneStemmedSearchResultItem;I)I

    move-result v8

    .line 113
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;

    invoke-virtual {v10, v8}, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->addMatchLocation(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 116
    :cond_5
    :goto_4
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 117
    invoke-virtual {v5}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 118
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int v7, v9, v4

    if-gt v6, v7, :cond_2

    .line 119
    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_4

    :cond_6
    return-object v2

    :cond_7
    :goto_5
    return-object p1
.end method

.method private removeWithinRange(ILcom/lab126/lucene/search/LuceneStemmedSearchResultItem;I)I
    .locals 2

    .line 57
    invoke-virtual {p2}, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->getMatchLocationsList()Ljava/util/LinkedList;

    move-result-object p2

    .line 58
    :cond_0
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 59
    invoke-virtual {p2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 61
    invoke-virtual {p2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p1, v1

    if-gt v1, p3, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p1

    if-gt v1, p3, :cond_2

    .line 67
    invoke-virtual {p2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public search()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/lucene/queryParser/ParseException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneStemmedSearch;->luceneBookIndexer:Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->getIndexReader()Lorg/apache/lucene/index/IndexReader;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 137
    invoke-virtual {v0}, Lorg/apache/lucene/index/IndexReader;->numDocs()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 141
    :cond_0
    new-instance v1, Lorg/apache/lucene/queryParser/QueryParser;

    sget-object v2, Lorg/apache/lucene/util/Version;->LUCENE_36:Lorg/apache/lucene/util/Version;

    iget-object v3, p0, Lcom/lab126/lucene/search/LuceneStemmedSearch;->luceneBookIndexer:Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;

    invoke-virtual {v3}, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->getAnalyzer()Lorg/apache/lucene/analysis/Analyzer;

    move-result-object v3

    const-string v4, "CONTENT"

    invoke-direct {v1, v2, v4, v3}, Lorg/apache/lucene/queryParser/QueryParser;-><init>(Lorg/apache/lucene/util/Version;Ljava/lang/String;Lorg/apache/lucene/analysis/Analyzer;)V

    .line 142
    iget-object v2, p0, Lcom/lab126/lucene/search/LuceneStemmedSearch;->queryString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/lucene/queryParser/QueryParser;->parse(Ljava/lang/String;)Lorg/apache/lucene/search/Query;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 144
    invoke-virtual {v1, v2}, Lorg/apache/lucene/search/Query;->extractTerms(Ljava/util/Set;)V

    .line 145
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lab126/lucene/search/LuceneStemmedSearch;->queryString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/lab126/lucene/search/LuceneStemmedSearch;->queryString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/common/base/CharMatcher;->matchesAnyOf(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Lorg/apache/lucene/queryParser/ParseException;

    const-string v1, "no terms could be parsed by the queryString that contains Java digit"

    invoke-direct {v0, v1}, Lorg/apache/lucene/queryParser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/lucene/index/Term;

    .line 151
    new-instance v4, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;

    invoke-virtual {v3}, Lorg/apache/lucene/index/Term;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v0, v3}, Lorg/apache/lucene/index/IndexReader;->termPositions(Lorg/apache/lucene/index/Term;)Lorg/apache/lucene/index/TermPositions;

    move-result-object v5

    .line 155
    :cond_4
    invoke-interface {v5}, Lorg/apache/lucene/index/TermPositions;->next()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    .line 156
    :goto_1
    invoke-interface {v5}, Lorg/apache/lucene/index/TermPositions;->freq()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 157
    invoke-interface {v5}, Lorg/apache/lucene/index/TermPositions;->nextPosition()I

    const/4 v7, 0x4

    .line 158
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 159
    invoke-interface {v5}, Lorg/apache/lucene/index/TermPositions;->getPayloadLength()I

    move-result v8

    .line 160
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-interface {v5, v9, v10}, Lorg/apache/lucene/index/TermPositions;->getPayload([BI)[B

    .line 162
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 163
    invoke-virtual {v4, v7}, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->addMatchLocation(I)V

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DOC:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lorg/apache/lucene/index/TermPositions;->doc()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", FREQ:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lorg/apache/lucene/index/TermPositions;->freq()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", PAYLOAD_LENGTH:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {v5}, Lorg/apache/lucene/index/TermPositions;->getPayloadLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", TERM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/lucene/index/Term;->text()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", POS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 169
    :cond_5
    invoke-direct {p0, v1}, Lcom/lab126/lucene/search/LuceneStemmedSearch;->lineupMatches(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
