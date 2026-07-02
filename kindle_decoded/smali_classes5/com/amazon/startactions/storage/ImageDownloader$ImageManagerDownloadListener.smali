.class Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/storage/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageManagerDownloadListener"
.end annotation


# instance fields
.field private final listener:Lcom/amazon/startactions/storage/ImageDownloader$Listener;

.field final synthetic this$0:Lcom/amazon/startactions/storage/ImageDownloader;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/storage/ImageDownloader;Lcom/amazon/startactions/storage/ImageDownloader$Listener;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;->this$0:Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;->listener:Lcom/amazon/startactions/storage/ImageDownloader$Listener;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;)Lcom/amazon/startactions/storage/ImageDownloader$Listener;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;->listener:Lcom/amazon/startactions/storage/ImageDownloader$Listener;

    return-object p0
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;->this$0:Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-static {p1}, Lcom/amazon/startactions/storage/ImageDownloader;->access$000(Lcom/amazon/startactions/storage/ImageDownloader;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 155
    iget-object p1, p0, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;->listener:Lcom/amazon/startactions/storage/ImageDownloader$Listener;

    if-eqz p1, :cond_0

    .line 156
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloader;->access$200()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener$1;-><init>(Lcom/amazon/startactions/storage/ImageDownloader$ImageManagerDownloadListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
