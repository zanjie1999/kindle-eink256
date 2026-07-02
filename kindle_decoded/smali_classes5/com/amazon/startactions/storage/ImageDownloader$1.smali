.class Lcom/amazon/startactions/storage/ImageDownloader$1;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/storage/ImageDownloader;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/storage/ImageDownloader;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/storage/ImageDownloader;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/startactions/storage/ImageDownloader$1;->this$0:Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/amazon/startactions/storage/ImageDownloader$1;->this$0:Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-static {p1}, Lcom/amazon/startactions/storage/ImageDownloader;->access$000(Lcom/amazon/startactions/storage/ImageDownloader;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
