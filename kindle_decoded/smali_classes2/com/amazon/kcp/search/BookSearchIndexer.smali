.class public Lcom/amazon/kcp/search/BookSearchIndexer;
.super Lcom/amazon/kcp/search/BaseBookSearchIndexer;
.source "BookSearchIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;,
        Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_TIME_FOR_FUTURE_IN_SEC:J = 0x28L

.field private static final MAX_WAIT_TIME_FOR_POLL_IN_SEC:J = 0x2L

.field private static final QUEUE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private completed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private consumer:Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;

.field currentProgress:J

.field private indexingFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private maxProgress:I

.field progress:J

.field private queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;",
            ">;"
        }
    .end annotation
.end field

.field private shouldStopIndexing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private startConsumer:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private startTime:J

.field tracker:Lcom/amazon/kindle/services/download/IStatusTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/search/IKindleWordTokenIterator;)V
    .locals 2

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 84
    iput p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->maxProgress:I

    .line 87
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->startConsumer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->shouldStopIndexing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->indexingFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    .line 90
    iput-wide v0, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->startTime:J

    .line 91
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 p1, 0x0

    .line 92
    iput-wide p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->currentProgress:J

    .line 93
    iput-wide p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->progress:J

    .line 99
    iput-object p4, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    .line 100
    iput-object p3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 101
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/BookSearchIndexer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->maxProgress:I

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/search/BookSearchIndexer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->indexingFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/search/BookSearchIndexer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->shouldStopIndexing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/search/BookSearchIndexer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/search/BookSearchIndexer;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->startTime:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->searcher:Lorg/apache/lucene/search/IndexSearcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 399
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    invoke-virtual {v0}, Lorg/apache/lucene/search/IndexSearcher;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 401
    :try_start_2
    sget-object v2, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v3, "Failed to close searcher"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    :goto_0
    iput-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 407
    :try_start_3
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/lucene/index/IndexWriter;->close(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 409
    :try_start_4
    sget-object v2, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v3, "Failed to close index"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    :goto_1
    iput-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 414
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->directory:Lorg/apache/lucene/store/Directory;

    invoke-virtual {v0}, Lorg/apache/lucene/store/Directory;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 418
    :try_start_6
    sget-object v1, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v2, "Failed to close directory"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 424
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit(Z)V
    .locals 2

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {v0}, Lorg/apache/lucene/index/IndexWriter;->commit()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 345
    new-instance p1, Lorg/apache/lucene/search/IndexSearcher;

    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->getIndexReader()Lorg/apache/lucene/index/IndexReader;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/lucene/search/IndexSearcher;-><init>(Lorg/apache/lucene/index/IndexReader;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    .line 346
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexComplete:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 349
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexComplete:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 350
    sget-object v0, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v1, "Failed to commit index"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method protected index(IILjava/lang/String;)Z
    .locals 6

    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 320
    :cond_0
    new-instance v0, Lorg/apache/lucene/document/Document;

    invoke-direct {v0}, Lorg/apache/lucene/document/Document;-><init>()V

    .line 321
    new-instance v2, Lorg/apache/lucene/document/Field;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lorg/apache/lucene/document/Field$Store;->YES:Lorg/apache/lucene/document/Field$Store;

    sget-object v4, Lorg/apache/lucene/document/Field$Index;->NOT_ANALYZED_NO_NORMS:Lorg/apache/lucene/document/Field$Index;

    const-string v5, "pos"

    invoke-direct {v2, v5, p1, v3, v4}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/lucene/document/Field$Store;Lorg/apache/lucene/document/Field$Index;)V

    invoke-virtual {v0, v2}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    .line 323
    new-instance p1, Lorg/apache/lucene/document/Field;

    sget-object v2, Lorg/apache/lucene/document/Field$Store;->NO:Lorg/apache/lucene/document/Field$Store;

    sget-object v3, Lorg/apache/lucene/document/Field$Index;->ANALYZED:Lorg/apache/lucene/document/Field$Index;

    const-string v4, "content"

    invoke-direct {p1, v4, p3, v2, v3}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/lucene/document/Field$Store;Lorg/apache/lucene/document/Field$Index;)V

    invoke-virtual {v0, p1}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    .line 325
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->indexWriter:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {p1, v0}, Lorg/apache/lucene/index/IndexWriter;->addDocument(Lorg/apache/lucene/document/Document;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->setFurthestIndexedPostion(Ljava/lang/Integer;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 328
    sget-object p2, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    const-string p3, "Failed to index content"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public index(Lcom/amazon/kindle/services/download/IStatusTracker;)Z
    .locals 14

    const-string v0, "Error while waiting for indexing to finish "

    .line 105
    iput-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    .line 106
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-nez v1, :cond_1

    return v3

    .line 114
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->startTime:J

    .line 116
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookLastPosition()I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->maxProgress:I

    .line 119
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 123
    :cond_2
    iget v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->maxProgress:I

    iget-object v4, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    invoke-virtual {v4}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->getFarthestIndexedPostion()I

    move-result v4

    if-gt v1, v4, :cond_3

    return v2

    :cond_3
    if-eqz p1, :cond_4

    .line 128
    iget v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->maxProgress:I

    int-to-long v4, v1

    invoke-interface {p1, v4, v5}, Lcom/amazon/kindle/services/download/IStatusTracker;->setMaxProgress(J)V

    .line 131
    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    sget-object v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->emptyWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    .line 140
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->getFarthestIndexedPostion()I

    move-result v1

    if-ltz v1, :cond_5

    .line 144
    iget-object v4, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v4, v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 146
    :cond_5
    new-instance v1, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;

    iget-object v4, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v1, p0, v4}, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;-><init>(Lcom/amazon/kcp/search/BookSearchIndexer;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->consumer:Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;

    .line 147
    sget-object v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->emptyWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 149
    :cond_6
    :goto_0
    iget-object v9, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_e

    iget-wide v9, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->progress:J

    iget v11, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->maxProgress:I

    int-to-long v11, v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_e

    iget-object v9, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->indexingFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_e

    .line 150
    iget-object v9, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    const/16 v10, 0xc8

    const/16 v11, 0x20

    invoke-interface {v9, v10, v11}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->nextNWords(IC)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v9

    .line 151
    iget-object v10, v9, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    const-string v12, "Error while adding word token "

    if-eqz v10, :cond_d

    .line 152
    iget v7, v9, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    if-nez v4, :cond_9

    .line 157
    iget-object v4, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    const/16 v5, 0x64

    invoke-interface {v4, v5, v11}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->nextNWords(IC)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v4

    .line 158
    iget v5, v4, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    if-lez v5, :cond_7

    move v8, v5

    .line 162
    :cond_7
    iget v5, v9, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    .line 163
    iget v6, v4, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    if-nez v6, :cond_8

    .line 164
    iget v6, v9, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    .line 168
    :cond_8
    iget-object v9, v9, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {p1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    iget-object v4, v4, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    :cond_9
    if-eqz v4, :cond_c

    .line 175
    iget-object v9, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    invoke-virtual {v9}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->getFarthestIndexedPostion()I

    move-result v9

    if-le v7, v9, :cond_c

    if-lez v5, :cond_a

    if-lez v6, :cond_a

    if-le v7, v9, :cond_a

    .line 181
    new-instance v4, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v5, v6}, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;-><init>(Ljava/lang/String;II)V

    .line 183
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 184
    iget-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->startConsumer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 185
    iget-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->startConsumer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 186
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    iget-object v4, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->consumer:Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;

    invoke-interface {p1, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 189
    sget-object v4, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    invoke-static {v4, v12, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :cond_a
    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    if-lez v8, :cond_b

    .line 199
    iget-object v4, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v4, v8}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    :cond_b
    move v5, v8

    const/4 v4, 0x0

    .line 204
    :cond_c
    iget-object v9, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 205
    iget-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->indexingFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    .line 210
    :cond_d
    :try_start_1
    iget-object v9, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    iget-object v9, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->shouldStopIndexing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    .line 215
    new-instance v9, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5, v7}, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;-><init>(Ljava/lang/String;II)V

    .line 219
    iget-object v10, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10, v9}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 220
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v9

    goto/16 :goto_0

    :catch_1
    move-exception v9

    .line 223
    sget-object v10, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    invoke-static {v10, v12, v9}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 232
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 233
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/search/BookSearchIndexer;->commit(Z)V

    :cond_f
    if-eqz v1, :cond_10

    const-wide/16 v2, 0x28

    .line 238
    :try_start_2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 244
    sget-object v1, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception p1

    .line 242
    sget-object v1, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception p1

    .line 240
    sget-object v1, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    :cond_10
    :goto_3
    iget-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer;->indexingFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1
.end method

.method public search(Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 360
    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/lucene/queryParser/QueryParser;

    sget-object v2, Lorg/apache/lucene/util/Version;->LUCENE_36:Lorg/apache/lucene/util/Version;

    const-string v3, "content"

    iget-object v4, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->analyzer:Lorg/apache/lucene/analysis/Analyzer;

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/lucene/queryParser/QueryParser;-><init>(Lorg/apache/lucene/util/Version;Ljava/lang/String;Lorg/apache/lucene/analysis/Analyzer;)V

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->escapeSearchTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-virtual {v0, p1}, Lorg/apache/lucene/queryParser/QueryParser;->parse(Ljava/lang/String;)Lorg/apache/lucene/search/Query;

    move-result-object p1

    .line 364
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    const/16 v2, 0x1f4

    invoke-virtual {v0, p1, v2}, Lorg/apache/lucene/search/IndexSearcher;->search(Lorg/apache/lucene/search/Query;I)Lorg/apache/lucene/search/TopDocs;

    move-result-object p1

    .line 365
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# of results found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lorg/apache/lucene/search/TopDocs;->totalHits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    iget-object p1, p1, Lorg/apache/lucene/search/TopDocs;->scoreDocs:[Lorg/apache/lucene/search/ScoreDoc;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 368
    iget-object v5, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    iget v4, v4, Lorg/apache/lucene/search/ScoreDoc;->doc:I

    invoke-virtual {v5, v4}, Lorg/apache/lucene/search/IndexSearcher;->doc(I)Lorg/apache/lucene/document/Document;

    move-result-object v4

    .line 369
    new-instance v5, Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;

    invoke-direct {v5, v4}, Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;-><init>(Lorg/apache/lucene/document/Document;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 373
    sget-object v0, Lcom/amazon/kcp/search/BookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v2, "Failed to perform search"

    invoke-static {v0, v2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public search(Lcom/amazon/kindle/search/KindleSearchItem;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/search/IKindleWordTokenIterator;Ljava/lang/String;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 434
    invoke-virtual {p0, p4}, Lcom/amazon/kcp/search/BookSearchIndexer;->search(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 436
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p4

    int-to-long v0, p4

    .line 437
    invoke-interface {p5, v0, v1}, Lcom/amazon/kindle/services/download/IStatusTracker;->setMaxProgress(J)V

    const/4 p4, 0x0

    .line 439
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;

    .line 440
    iget v1, v0, Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;->start:I

    iget v0, v0, Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;->end:I

    invoke-virtual {p1, v1, v0, p3}, Lcom/amazon/kindle/search/KindleSearchItem;->doSearch(IILcom/amazon/kindle/search/IKindleWordTokenIterator;)V

    .line 441
    invoke-virtual {p1}, Lcom/amazon/kindle/search/KindleSearchItem;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p4, p4, 0x1

    int-to-long v0, p4

    .line 444
    invoke-interface {p5, v0, v1}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportCurrentProgress(J)V

    goto :goto_0

    :cond_1
    return-void
.end method
