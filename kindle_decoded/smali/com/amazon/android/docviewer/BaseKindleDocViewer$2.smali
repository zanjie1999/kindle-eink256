.class Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;
.super Ljava/lang/Object;
.source "BaseKindleDocViewer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createDelayedSearchIndexThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

.field final synthetic val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field final synthetic val$lucene:Z


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/BaseKindleDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;Z)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iput-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iput-boolean p3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->val$lucene:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIndexPath()Ljava/lang/String;
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isDocument()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v1, v1, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 403
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    const/4 v2, 0x0

    .line 402
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->getDownloadPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object v0

    .line 405
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v2, v2, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 400
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10

    .line 343
    invoke-static {}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->access$000()Ljava/lang/String;

    .line 344
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LUCENE_BOOK_INDEX:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    .line 346
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->val$lucene:Z

    if-eqz v1, :cond_4

    const/4 v8, 0x0

    .line 348
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSearchIndexerProvider()Lcom/amazon/kcp/search/IBookSearchIndexerProvider;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$bool;->enable_lucene_search_stemmed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 352
    invoke-direct {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->getIndexPath()Ljava/lang/String;

    move-result-object v2

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_0

    const-string v2, ".lucene"

    goto :goto_0

    :cond_0
    const-string v2, ".luci"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-static {}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->access$000()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting search index path to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    iget-object v9, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v3, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v3, v3, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 359
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v4, v4, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/search/IBookSearchIndexerProvider;->createSearchIndexer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/search/IKindleWordTokenIterator;Z)Lcom/amazon/kcp/search/IBookSearchIndexer;

    move-result-object v1

    iput-object v1, v9, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    .line 361
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v1, v1, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    invoke-interface {v1}, Lcom/amazon/kcp/search/IBookSearchIndexer;->isBookIndexable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v1, v1, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    invoke-interface {v1}, Lcom/amazon/kcp/search/IBookSearchIndexer;->initialize()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :try_start_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v1, v1, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    invoke-interface {v1, v7}, Lcom/amazon/kcp/search/IBookSearchIndexer;->index(Lcom/amazon/kindle/services/download/IStatusTracker;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 366
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->access$000()Ljava/lang/String;

    .line 372
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v1, v1, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v1, v1, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    invoke-interface {v1}, Lcom/amazon/kcp/search/IBookSearchIndexer;->cleanup()V

    .line 375
    :cond_2
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LUCENE_BOOK_INDEX:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v1, v1, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    if-nez v1, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 377
    :try_start_3
    invoke-static {}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to create indexer/searcher"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LUCENE_BOOK_INDEX:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error creating index"

    invoke-static {v1, v2, v8}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v1, v1, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    if-nez v1, :cond_4

    .line 383
    :goto_2
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 380
    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v2, v2, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    if-nez v2, :cond_3

    .line 383
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    .line 385
    :cond_3
    throw v1

    :cond_4
    :goto_3
    return-object v7
.end method
