.class Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener$1;
.super Ljava/lang/Object;
.source "ImageBatchDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;->onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;

.field final synthetic val$image:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener$1;->this$1:Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;

    iput-object p2, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener$1;->val$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener$1;->this$1:Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;

    invoke-static {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;->access$200(Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;)Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener$1;->this$1:Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;

    invoke-static {v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;->access$100(Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener$1;->val$image:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;->applyImage(ILandroid/graphics/Bitmap;)V

    return-void
.end method
