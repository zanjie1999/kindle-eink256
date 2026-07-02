.class Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;
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
    name = "ProcessRunnable"
.end annotation


# instance fields
.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-static {p1}, Lcom/amazon/ea/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 235
    iput-object p1, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$000(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$100()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;

    iget-object v2, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;->uri:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/amazon/startactions/storage/ImageDownloadManager$DownloadRunnable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$000(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 249
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode image from disk [uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/amazon/startactions/storage/ImageDownloadManager$ProcessRunnable;->uri:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->access$300(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
