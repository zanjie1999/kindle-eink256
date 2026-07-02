.class Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;
.super Ljava/lang/Object;
.source "InBookAutoCompleteCache.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoCompleteCache:Ljava/io/File;

.field private bookDirectory:Ljava/io/File;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private placeholderCache:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 60
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getSidecarDirectoryForBook(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->bookDirectory:Ljava/io/File;

    .line 64
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->bookDirectory:Ljava/io/File;

    const-string v0, "autocompletecache.ser"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->autoCompleteCache:Ljava/io/File;

    .line 65
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->bookDirectory:Ljava/io/File;

    const-string v0, "autocompletecacheplaceholder.tmp"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->placeholderCache:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public readObject()Lcom/amazon/android/autocomplete/AutoCompleteDataManager;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 156
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_CACHE_READING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 157
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->autoCompleteCache:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 158
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 163
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 164
    new-instance v5, Lcom/amazon/android/autocomplete/AutoCompleteDataManager;

    invoke-direct {v5}, Lcom/amazon/android/autocomplete/AutoCompleteDataManager;-><init>()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 165
    :try_start_3
    invoke-virtual {v5, v4}, Lcom/amazon/android/autocomplete/AutoCompleteDataManager;->insertEntries(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    goto/16 :goto_9

    .line 178
    :cond_0
    :goto_0
    sget-object v4, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_CACHE_READING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v4}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 179
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 180
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_a

    :catch_4
    move-exception v4

    move-object v5, v0

    move-object v0, v4

    goto :goto_2

    :catch_5
    move-exception v4

    move-object v5, v0

    move-object v0, v4

    goto/16 :goto_4

    :catch_6
    move-exception v4

    move-object v5, v0

    move-object v0, v4

    goto/16 :goto_6

    :catch_7
    move-exception v4

    move-object v5, v0

    move-object v0, v4

    goto/16 :goto_9

    :catchall_0
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto/16 :goto_b

    :catch_8
    move-exception v2

    move-object v5, v0

    goto :goto_1

    :catch_9
    move-exception v2

    move-object v5, v0

    goto :goto_3

    :catch_a
    move-exception v2

    move-object v5, v0

    goto :goto_5

    :catch_b
    move-exception v2

    move-object v5, v0

    goto/16 :goto_8

    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_b

    :catch_c
    move-exception v2

    move-object v3, v0

    move-object v5, v3

    :goto_1
    move-object v0, v2

    move-object v2, v5

    .line 176
    :goto_2
    :try_start_4
    sget-object v4, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RuntimeException occurred while attempting to read from file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_d
    move-exception v2

    move-object v3, v0

    move-object v5, v3

    :goto_3
    move-object v0, v2

    move-object v2, v5

    .line 174
    :goto_4
    sget-object v4, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while reading from file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_e
    move-exception v2

    move-object v3, v0

    move-object v5, v3

    :goto_5
    move-object v0, v2

    move-object v2, v5

    .line 172
    :goto_6
    sget-object v4, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to restore class from ObjectInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 178
    :goto_7
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_CACHE_READING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 179
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 180
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v5

    goto :goto_a

    :catch_f
    move-exception v2

    move-object v3, v0

    move-object v5, v3

    :goto_8
    move-object v0, v2

    move-object v2, v5

    .line 170
    :goto_9
    :try_start_5
    sget-object v4, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found for path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->autoCompleteCache:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :goto_a
    return-object v0

    :catchall_2
    move-exception v0

    .line 178
    :goto_b
    sget-object v4, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_CACHE_READING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v4}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 179
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 180
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 181
    throw v0
.end method

.method public writeObject(Landroid/content/Context;)V
    .locals 8

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->autoCompleteCache:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->autoCompleteCache:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_INDEXING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 92
    iget-object v2, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->bookDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->bookDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    sget-object p1, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create the book directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->bookDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 120
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_INDEXING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 122
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    .line 133
    iget-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->placeholderCache:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    .line 98
    :cond_1
    :try_start_1
    new-instance v2, Lcom/amazon/kcp/search/autocomplete/AutoCompleteDataProviderRegistry;

    invoke-direct {v2}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteDataProviderRegistry;-><init>()V

    .line 99
    new-instance v3, Lcom/amazon/kcp/search/autocomplete/InBookContentDataProvider;

    iget-object v4, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {v3, v4, p1}, Lcom/amazon/kcp/search/autocomplete/InBookContentDataProvider;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteDataProviderRegistry;->register(Lcom/amazon/android/autocomplete/IDataProvider;)V

    .line 101
    invoke-virtual {v2}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteDataProviderRegistry;->getData()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 104
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_3

    .line 120
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_INDEXING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 122
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->placeholderCache:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    .line 108
    :cond_3
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->placeholderCache:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 109
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 110
    :try_start_4
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    :try_start_5
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 120
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_INDEXING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 122
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 134
    iget-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->placeholderCache:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 137
    iget-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->placeholderCache:Ljava/io/File;

    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->autoCompleteCache:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_7

    .line 133
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->placeholderCache:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v7, v2

    move-object v2, p1

    move-object p1, v0

    move-object v0, v7

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v7, v2

    move-object v2, p1

    move-object p1, v0

    move-object v0, v7

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v7, v2

    move-object v2, p1

    move-object p1, v0

    move-object v0, v7

    goto/16 :goto_6

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v3, v0

    :goto_1
    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto/16 :goto_8

    :catch_4
    move-exception v2

    move-object v3, v0

    :goto_2
    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v3, v0

    :goto_3
    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto :goto_6

    :catchall_3
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    goto/16 :goto_8

    :catch_6
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    .line 118
    :goto_4
    :try_start_6
    sget-object v4, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RuntimeException when writing to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 120
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_INDEXING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 122
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    if-eqz v2, :cond_4

    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :catch_7
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    .line 116
    :goto_6
    :try_start_7
    sget-object v4, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while writing to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 120
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_INDEXING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 122
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_5
    :goto_7
    return-void

    :catchall_4
    move-exception p1

    .line 120
    :goto_8
    sget-object v4, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_INDEXING:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v4}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 122
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 133
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/InBookAutoCompleteCache;->placeholderCache:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 139
    throw p1
.end method
