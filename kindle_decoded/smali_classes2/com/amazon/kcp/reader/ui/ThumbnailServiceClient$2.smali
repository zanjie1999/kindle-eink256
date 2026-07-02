.class Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;
.super Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;
.source "ThumbnailServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->requestBitmap(IILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

.field final synthetic val$bitmapPath:Ljava/lang/String;

.field final synthetic val$imageID:I

.field final synthetic val$pageIndex:I

.field final synthetic val$thumbnailBitmapHeight:I

.field final synthetic val$thumbnailBitmapWidth:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;IIILjava/lang/String;II)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    iput p3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$imageID:I

    iput p4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$pageIndex:I

    iput-object p5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$bitmapPath:Ljava/lang/String;

    iput p6, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$thumbnailBitmapWidth:I

    iput p7, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$thumbnailBitmapHeight:I

    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "ThumbnailScrubber"

    .line 186
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$400(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$imageID:I

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$pageIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->isImageStillNeeded(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request for now-invalid page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at image ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$imageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was IGNORED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 190
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 191
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$bitmapPath:Ljava/lang/String;

    const-string v3, "thumbnailPath"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$thumbnailBitmapWidth:I

    const-string/jumbo v3, "width"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$thumbnailBitmapHeight:I

    const-string v3, "height"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "startTime"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 197
    iget v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$imageID:I

    iget v5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$pageIndex:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 200
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending render request for page "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$pageIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " image ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->val$imageID:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->thumbnailIncomingMessenger:Landroid/os/Messenger;

    iput-object v1, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 205
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$100(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 207
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$2;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$700(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)V

    return-void
.end method
