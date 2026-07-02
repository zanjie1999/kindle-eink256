.class Lcom/amazon/startactions/storage/ImageBatchDownloader$1;
.super Ljava/lang/Object;
.source "ImageBatchDownloader.java"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/storage/ImageBatchDownloader;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/amazon/startactions/storage/ImageBatchDownloader;I)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$1;->this$0:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    iput p2, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 193
    iget-object p1, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$1;->this$0:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-static {p1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->access$000(Lcom/amazon/startactions/storage/ImageBatchDownloader;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    iget v0, p0, Lcom/amazon/startactions/storage/ImageBatchDownloader$1;->val$index:I

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method
