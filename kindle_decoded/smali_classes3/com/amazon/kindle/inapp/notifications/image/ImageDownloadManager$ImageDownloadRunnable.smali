.class public final Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable;
.super Ljava/lang/Object;
.source "ImageDownloadManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImageDownloadRunnable"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageDownloadManager.kt\ncom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable\n*L\n1#1,74:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable;->this$0:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable;->this$0:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->getNetworkUtil()Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable;->this$0:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->getImageDownloadUtil()Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadUtil;->downloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable;->this$0:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$ImageDownloadRunnable;->uri:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->access$imageFetched(Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
