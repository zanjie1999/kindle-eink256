.class public Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;
.super Lcom/amazon/kcp/search/BaseBookSearchIndexer;
.source "LuceneBookStemmedIndexer.java"


# static fields
.field private static final VERSION:I = 0x1


# instance fields
.field private tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/search/IKindleWordTokenIterator;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LuceneBookStemmedIndexer.<clinit>(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 35
    iput-object p4, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->cancel()V

    .line 152
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->setCancel(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;

    return-void
.end method

.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    invoke-virtual {v0}, Lorg/apache/lucene/analysis/Analyzer;->close()V

    .line 133
    iput-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 138
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    invoke-virtual {v0}, Lorg/apache/lucene/store/Directory;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    :try_start_2
    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v3, "close()"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :goto_0
    iput-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAnalyzer()Lorg/apache/lucene/analysis/Analyzer;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    return-object v0
.end method

.method protected getSnippet(Lcom/amazon/kindle/search/KindleSearchItem;Lcom/amazon/kindle/search/IKindleWordTokenIterator;ILjava/util/List;Ljava/lang/String;)Lcom/amazon/android/docviewer/BookSearchResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/search/KindleSearchItem;",
            "Lcom/amazon/kindle/search/IKindleWordTokenIterator;",
            "I",
            "Ljava/util/List<",
            "Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/android/docviewer/BookSearchResult;"
        }
    .end annotation

    .line 186
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;

    .line 190
    invoke-virtual {v3}, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->getMatchLocationsList()Ljava/util/LinkedList;

    move-result-object v3

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 194
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v3, v0, -0x1

    .line 195
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 197
    div-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 198
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, p2

    .line 201
    invoke-interface {v1, v8}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x14

    if-ge v4, v5, :cond_2

    .line 207
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->previous()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 211
    :cond_2
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v6

    if-nez v6, :cond_3

    .line 212
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->first()Z

    :cond_3
    const/4 v6, -0x1

    move v11, v3

    const/4 v7, -0x1

    const/4 v10, -0x1

    :goto_3
    const-string v12, " "

    if-lez v4, :cond_6

    .line 215
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v13

    .line 216
    iget v14, v13, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    if-lt v14, v9, :cond_4

    if-ne v7, v6, :cond_4

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 220
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v13, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v14, v3, :cond_5

    if-ne v10, v6, :cond_5

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 223
    iget v11, v13, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    .line 225
    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_a

    .line 229
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v4

    .line 230
    iget v13, v4, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    if-lt v13, v9, :cond_7

    if-ne v7, v6, :cond_7

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 234
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v4, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v13, v3, :cond_8

    if-ne v10, v6, :cond_8

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 237
    iget v4, v4, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    move v11, v4

    .line 239
    :cond_8
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-ne v7, v6, :cond_b

    const/4 v7, 0x0

    :cond_b
    if-ne v10, v6, :cond_c

    const/4 v10, 0x0

    :cond_c
    if-le v10, v7, :cond_d

    sub-int/2addr v10, v7

    add-int/lit8 v2, v10, -0x1

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    .line 247
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p1

    move v6, v7

    move v7, v2

    move v10, v11

    invoke-virtual/range {v4 .. v10}, Lcom/amazon/kindle/search/KindleSearchItem;->createBookSearchResult(Ljava/lang/String;IIIII)Lcom/amazon/android/docviewer/BookSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized index(Lcom/amazon/kindle/services/download/IStatusTracker;)Z
    .locals 8

    monitor-enter p0

    .line 39
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LuceneBookStemmedIndexer.index() IS_INDEX_AVAILABLE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", TITLE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 43
    monitor-exit p0

    return v1

    .line 47
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 48
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v0, "No analyzer in LuceneBookStemmedIndexer.index()"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    monitor-exit p0

    return v2

    .line 58
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    if-nez v0, :cond_2

    .line 59
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v0, "Index writer is null. May indicate multiple creation of delayed search index thread."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    monitor-exit p0

    return v2

    .line 64
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result v0

    int-to-long v3, v0

    if-eqz p1, :cond_3

    .line 66
    invoke-interface {p1, v3, v4}, Lcom/amazon/kindle/services/download/IStatusTracker;->setMaxProgress(J)V

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-nez v0, :cond_4

    .line 70
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Word Iterator for document in LuceneBookStemmedIndexer.index(), TITLE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    monitor-exit p0

    return v2

    :cond_4
    const/4 v0, 0x0

    .line 75
    :try_start_4
    iget-object v3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    invoke-virtual {v3}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->getFarthestIndexedPostion()I

    move-result v3

    if-lez v3, :cond_5

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Farthest Indexed Point FIP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", TITLE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    iget-object v4, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v4, v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 81
    :cond_5
    new-instance v3, Lcom/lab126/lucene/search/LuceneTokenizerLab126;

    iget-object v4, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    iget-object v5, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/lab126/lucene/search/LuceneTokenizerLab126;-><init>(Lorg/apache/lucene/analysis/Analyzer;Lcom/amazon/kindle/search/IKindleWordTokenIterator;Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    iput-object v3, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;

    .line 83
    new-instance p1, Lorg/apache/lucene/document/Document;

    invoke-direct {p1}, Lorg/apache/lucene/document/Document;-><init>()V

    .line 84
    new-instance v3, Lorg/apache/lucene/document/Field;

    const-string v4, "VERSION"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/lucene/document/Field$Store;->YES:Lorg/apache/lucene/document/Field$Store;

    sget-object v7, Lorg/apache/lucene/document/Field$Index;->NO:Lorg/apache/lucene/document/Field$Index;

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/lucene/document/Field$Store;Lorg/apache/lucene/document/Field$Index;)V

    invoke-virtual {p1, v3}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    .line 86
    new-instance v3, Lorg/apache/lucene/document/Field;

    const-string v4, "CONTENT"

    iget-object v5, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;

    invoke-direct {v3, v4, v5}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Lorg/apache/lucene/analysis/TokenStream;)V

    .line 87
    invoke-virtual {p1, v3}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    .line 88
    iget-object v3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {v3, p1}, Lorg/apache/lucene/index/IndexWriter;->addDocument(Lorg/apache/lucene/document/Document;)V

    .line 91
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_6

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    iget-object v3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->setFurthestIndexedPostion(Ljava/lang/Integer;)V

    .line 93
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexComplete:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    :cond_6
    :try_start_5
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_8

    .line 103
    :try_start_6
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    if-eqz p1, :cond_7

    .line 104
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {p1}, Lorg/apache/lucene/index/IndexWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    :try_start_7
    iget-object v3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v4, "LuceneBookStemmedIndexer.index()"

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    .line 112
    :cond_8
    iget-object p1, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p1, :cond_b

    .line 114
    :try_start_8
    iget-object p1, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;

    invoke-virtual {p1}, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 116
    :try_start_9
    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v3, "LuceneBookStemmedIndexer.index()"

    invoke-static {v2, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    :goto_1
    iput-object v0, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 96
    :try_start_a
    iget-object v3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v4, "LuceneBookStemmedIndexer.index()"

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->deleteIndex()V

    .line 98
    invoke-virtual {p0}, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 100
    :try_start_b
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz p1, :cond_a

    .line 103
    :try_start_c
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    if-eqz p1, :cond_9

    .line 104
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {p1}, Lorg/apache/lucene/index/IndexWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 107
    :try_start_d
    iget-object v3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v4, "LuceneBookStemmedIndexer.index()"

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    .line 112
    :cond_a
    iget-object p1, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz p1, :cond_b

    .line 114
    :try_start_e
    iget-object p1, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;

    invoke-virtual {p1}, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_1

    :catch_4
    move-exception p1

    .line 116
    :try_start_f
    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v3, "LuceneBookStemmedIndexer.index()"

    invoke-static {v2, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_1

    .line 121
    :cond_b
    :goto_3
    monitor-exit p0

    return v1

    .line 100
    :goto_4
    :try_start_10
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v1, :cond_d

    .line 103
    :try_start_11
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    if-eqz v1, :cond_c

    .line 104
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {v1}, Lorg/apache/lucene/index/IndexWriter;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v1

    .line 107
    :try_start_12
    iget-object v3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v4, "LuceneBookStemmedIndexer.index()"

    invoke-static {v3, v4, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :cond_c
    :goto_5
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    .line 112
    :cond_d
    iget-object v1, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v1, :cond_e

    .line 114
    :try_start_13
    iget-object v1, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;

    invoke-virtual {v1}, Lcom/lab126/lucene/search/LuceneTokenizerLab126;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_6

    :catch_6
    move-exception v1

    .line 116
    :try_start_14
    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v3, "LuceneBookStemmedIndexer.index()"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    :goto_6
    iput-object v0, p0, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->tokenizerLab126:Lcom/lab126/lucene/search/LuceneTokenizerLab126;

    .line 120
    :cond_e
    throw p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public search(Lcom/amazon/kindle/search/KindleSearchItem;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/search/IKindleWordTokenIterator;Ljava/lang/String;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/lab126/lucene/search/LuceneStemmedSearch;

    invoke-direct {v0, p0, p4}, Lcom/lab126/lucene/search/LuceneStemmedSearch;-><init>(Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lcom/lab126/lucene/search/LuceneStemmedSearch;->search()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;

    invoke-virtual {v2}, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->getMatchCount()I

    move-result v7

    int-to-long v2, v7

    .line 174
    invoke-interface {p5, v2, v3}, Lcom/amazon/kindle/services/download/IStatusTracker;->setMaxProgress(J)V

    .line 175
    invoke-interface {p2, v7}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onResultCount(I)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, v8

    move-object v5, v0

    move-object v6, p4

    .line 179
    invoke-virtual/range {v1 .. v6}, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;->getSnippet(Lcom/amazon/kindle/search/KindleSearchItem;Lcom/amazon/kindle/search/IKindleWordTokenIterator;ILjava/util/List;Ljava/lang/String;)Lcom/amazon/android/docviewer/BookSearchResult;

    move-result-object v1

    .line 180
    invoke-interface {p2, v1}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    add-int/lit8 v8, v8, 0x1

    int-to-long v1, v8

    .line 181
    invoke-interface {p5, v1, v2}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportCurrentProgress(J)V

    goto :goto_0

    :cond_1
    return-void

    .line 169
    :cond_2
    :goto_1
    invoke-interface {p2, v1}, Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;->onResultCount(I)V

    return-void
.end method

.method public declared-synchronized updatePositionInformation(I)V
    .locals 1

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->setFurthestIndexedPostion(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
