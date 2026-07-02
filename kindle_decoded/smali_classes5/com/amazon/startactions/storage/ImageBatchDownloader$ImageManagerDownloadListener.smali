.class Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;
.super Ljava/lang/Object;
.source "ImageBatchDownloader.java"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/storage/ImageBatchDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageManagerDownloadListener"
.end annotation


# instance fields
.field private final index:I

.field private final listener:Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;

.field final synthetic this$0:Lcom/amazon/startactions/storage/ImageBatchDownloader;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/storage/ImageBatchDownloader;ILcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;->this$0:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput p2, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;->index:I

    .line 300
    iput-object p3, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;->listener:Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;)I
    .locals 0

    .line 283
    iget p0, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;->index:I

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;)Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;->listener:Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;

    return-object p0
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 305
    iget-object p1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;->this$0:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-static {p1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->access$000(Lcom/amazon/startactions/storage/ImageBatchDownloader;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    iget v0, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;->index:I

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 307
    iget-object p1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;->listener:Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;

    if-eqz p1, :cond_0

    .line 308
    invoke-static {}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->access$300()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener$1;-><init>(Lcom/amazon/startactions/storage/ImageBatchDownloader$ImageManagerDownloadListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
