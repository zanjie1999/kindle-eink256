.class Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;
.super Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;
.source "ThumbnailServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->requestCacheWarming(IILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

.field final synthetic val$currentPageIndex:I

.field final synthetic val$pagesInBook:I

.field final synthetic val$thumbnailBitmapHeight:I

.field final synthetic val$thumbnailBitmapWidth:I

.field final synthetic val$thumbnailPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;IIILjava/lang/String;II)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    iput p3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->val$thumbnailBitmapHeight:I

    iput p4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->val$thumbnailBitmapWidth:I

    iput-object p5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->val$thumbnailPrefix:Ljava/lang/String;

    iput p6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->val$currentPageIndex:I

    iput p7, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->val$pagesInBook:I

    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->val$thumbnailBitmapHeight:I

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->val$thumbnailBitmapWidth:I

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->val$thumbnailPrefix:Ljava/lang/String;

    const-string v2, "thumbnailPrefix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 307
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 308
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->val$currentPageIndex:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 309
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->val$pagesInBook:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 310
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$4;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$100(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ThumbnailScrubber"

    const-string v2, "Could not send CACHE_PAGES message"

    .line 314
    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
