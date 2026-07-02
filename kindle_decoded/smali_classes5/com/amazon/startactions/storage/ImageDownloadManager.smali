.class public Lcom/amazon/startactions/storage/ImageDownloadManager;
.super Ljava/lang/Object;
.source "ImageDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;,
        Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;
    }
.end annotation


# static fields
.field private static final IMAGES_DIR:Ljava/lang/String; = "/startactions/images/"

.field private static final MAX_CONCURRENT_DOWNLOADS:I = 0xa

.field private static final MAX_IMAGES:I = 0xfa

.field private static final NUMBER_OF_CORES:I

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.storage.ImageDownloadManager"

.field private static downloadPool:Ljava/util/concurrent/ExecutorService;

.field private static filesDirectory:Ljava/io/File;

.field private static processPool:Ljava/util/concurrent/ExecutorService;

.field private static trackingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/images/ImageDownloadListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->NUMBER_OF_CORES:I

    .line 42
    new-instance v1, Lcom/amazon/ea/util/PriorityThreadFactory;

    const/16 v2, 0xa

    const-string v3, "AA-Image-Process"

    invoke-direct {v1, v3, v2}, Lcom/amazon/ea/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->processPool:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Lcom/amazon/ea/util/PriorityThreadFactory;

    const-string v1, "AA-Image-Download"

    invoke-direct {v0, v1, v2}, Lcom/amazon/ea/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->downloadPool:Ljava/util/concurrent/ExecutorService;

    .line 46
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->trackingMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->getFileFromUrl(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->downloadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/amazon/startactions/storage/ImageDownloadManager;->notifyListeners(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->trackingMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->processPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$600(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/amazon/startactions/storage/ImageDownloadManager;->writeBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method private static ensureDirectoryExists()V
    .locals 2

    .line 204
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->getFilesDirectory()Ljava/io/File;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public static ensureMaxCacheSize()V
    .locals 5

    .line 97
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->ensureDirectoryExists()V

    .line 98
    sget-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->filesDirectory:Ljava/io/File;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/amazon/startactions/storage/ImageDownloadManager;->filesDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 101
    array-length v2, v1

    const/16 v3, 0xfa

    if-gt v2, v3, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    new-instance v2, Lcom/amazon/startactions/storage/ImageDownloadManager$1;

    invoke-direct {v2}, Lcom/amazon/startactions/storage/ImageDownloadManager$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    .line 120
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    .line 121
    aget-object v4, v1, v2

    .line 122
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_1
    monitor-exit v0

    return-void

    .line 102
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 80
    :cond_1
    sget-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->trackingMap:Ljava/util/Map;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/amazon/startactions/storage/ImageDownloadManager;->trackingMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 83
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v0

    return-void

    .line 86
    :cond_2
    sget-object v1, Lcom/amazon/startactions/storage/ImageDownloadManager;->trackingMap:Ljava/util/Map;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/ea/images/ImageDownloadListener;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/amazon/ea/guava/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    sget-object p1, Lcom/amazon/startactions/storage/ImageDownloadManager;->processPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 88
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method private static getFileFromUrl(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string v0, "/"

    .line 218
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 219
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->getFilesDirectory()Ljava/io/File;

    move-result-object v1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getFilesDirectory()Ljava/io/File;
    .locals 3

    .line 194
    sget-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->filesDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/startactions/images/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->filesDirectory:Ljava/io/File;

    .line 197
    :cond_0
    sget-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->filesDirectory:Ljava/io/File;

    return-object v0
.end method

.method private static notifyListeners(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 136
    sget-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->trackingMap:Ljava/util/Map;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/amazon/startactions/storage/ImageDownloadManager;->trackingMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/images/ImageDownloadListener;

    .line 140
    invoke-interface {v2, p0, p1}, Lcom/amazon/ea/images/ImageDownloadListener;->onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 143
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static prepare(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/amazon/startactions/storage/ImageDownloadManager;->downloadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;

    invoke-direct {v1, p0}, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static writeBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 5

    const-string v0, "error closing file output stream when writing to file [file="

    .line 155
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->ensureDirectoryExists()V

    const-string v1, "]"

    if-nez p0, :cond_1

    .line 158
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 159
    sget-object p0, Lcom/amazon/startactions/storage/ImageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmap is null, not writing bitmap to file. [file="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 166
    sget-object p0, Lcom/amazon/startactions/storage/ImageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file already exists, not writing bitmap to file. [file="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    .line 173
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 184
    :catch_0
    sget-object p0, Lcom/amazon/startactions/storage/ImageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 177
    :catch_2
    :goto_1
    :try_start_3
    sget-object p0, Lcom/amazon/startactions/storage/ImageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error writing bitmap to file [file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    .line 182
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 184
    :catch_3
    sget-object p0, Lcom/amazon/startactions/storage/ImageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_4
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_5

    .line 182
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 184
    :catch_4
    sget-object v2, Lcom/amazon/startactions/storage/ImageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_5
    :goto_4
    throw p0
.end method
