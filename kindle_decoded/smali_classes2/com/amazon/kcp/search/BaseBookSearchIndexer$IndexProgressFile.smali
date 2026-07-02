.class public Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;
.super Ljava/lang/Object;
.source "BaseBookSearchIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/BaseBookSearchIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndexProgressFile"
.end annotation


# instance fields
.field private fip_cache:I

.field private mutex:Ljava/lang/Object;

.field private final progressFileDirectory:Ljava/lang/String;

.field private final progressFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/BaseBookSearchIndexer;Ljava/lang/String;)V
    .locals 1

    .line 371
    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->mutex:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 369
    iput v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->fip_cache:I

    .line 372
    iget-object v0, p1, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-static {v0, p2}, Lcom/amazon/kindle/io/FileSystemHelper;->selectDirectoryPath(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->progressFileDirectory:Ljava/lang/String;

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getFileSeparator()C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "index_fip"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->progressFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFarthestIndexedPostion()I
    .locals 6

    .line 378
    iget v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->fip_cache:I

    if-gez v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;

    iget-object v0, v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->progressFileDirectory:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;

    iget-object v0, v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->progressFileName:Ljava/lang/String;

    .line 381
    invoke-static {v0, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;

    iget-object v4, v4, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v5, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->progressFileName:Ljava/lang/String;

    .line 389
    invoke-static {v4, v5}, Lcom/amazon/kindle/io/FileSystemHelper;->inputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception v2

    .line 398
    iget-object v3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;

    iget-object v3, v3, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v4, "IO error reading fip file"

    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    monitor-exit v0

    return v1

    :catch_1
    move-exception v2

    .line 394
    iget-object v3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;

    iget-object v3, v3, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v4, "Number format error reading fip file"

    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 403
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v0
.end method

.method public setFurthestIndexedPostion(Ljava/lang/Integer;)V
    .locals 6

    .line 413
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->fip_cache:I

    .line 415
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;

    iget-object v1, v1, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->progressFileDirectory:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;

    iget-object v1, v1, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v2, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->progressFileDirectory:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->mkdir(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;

    iget-object v3, v3, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v4, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->progressFileName:Ljava/lang/String;

    const/4 v5, 0x1

    .line 424
    invoke-static {v3, v4, v5}, Lcom/amazon/kindle/io/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 427
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 433
    :try_start_2
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;

    iget-object v1, v1, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v2, "NPE error writing fip file"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 431
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->this$0:Lcom/amazon/kcp/search/BaseBookSearchIndexer;

    iget-object v1, v1, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->TAG:Ljava/lang/String;

    const-string v2, "IO error writing fip file"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
