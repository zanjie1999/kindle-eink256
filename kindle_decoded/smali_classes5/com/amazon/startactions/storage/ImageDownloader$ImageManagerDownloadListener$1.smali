.class Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener$1;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;->onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;

.field final synthetic val$image:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener$1;->this$1:Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;

    iput-object p2, p0, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener$1;->val$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener$1;->this$1:Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;

    invoke-static {v0}, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;->access$100(Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;)Lcom/amazon/startactions/storage/ImageDownloader$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener$1;->val$image:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/amazon/startactions/storage/ImageDownloader$Listener;->applyImage(Landroid/graphics/Bitmap;)V

    return-void
.end method
