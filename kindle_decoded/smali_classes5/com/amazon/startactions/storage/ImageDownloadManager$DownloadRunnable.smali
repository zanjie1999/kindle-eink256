.class Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;
.super Ljava/lang/Object;
.source "ImageDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/storage/ImageDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadRunnable"
.end annotation


# instance fields
.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    invoke-static {p1}, Lcom/amazon/ea/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 265
    iput-object p1, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$000(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$400()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 273
    :try_start_0
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$400()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;->uri:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$500()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;

    iget-object v3, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;->uri:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 276
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 281
    :cond_1
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/ea/util/StyleCodeUtil;->createConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 286
    :try_start_2
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 287
    iget-object v2, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;->uri:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$000(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$600(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    .line 293
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 296
    :catch_0
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to close the input stream"

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_2
    move-object v0, v1

    .line 289
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to download an image [uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    .line 293
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 296
    :catch_3
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to close the input stream"

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_4

    :goto_2
    if-eqz v0, :cond_3

    .line 293
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 296
    :catch_4
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to close the input stream"

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_3
    :goto_3
    throw v1

    .line 301
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;->uri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$300(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
