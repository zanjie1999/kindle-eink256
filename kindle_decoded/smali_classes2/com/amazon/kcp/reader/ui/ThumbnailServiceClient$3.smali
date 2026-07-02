.class Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$3;
.super Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;
.source "ThumbnailServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->requestDocumentOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;I)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$3;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$PageRequestRunnable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$3;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$800(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Lcom/amazon/kcp/reader/ui/MappedIntArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$3;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$400(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->isPdfDocViewer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 258
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "KrfDocumentInfoBundle"

    .line 261
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->instance()Lcom/amazon/kcp/reader/provider/BookImageProviderClient;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$3;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    .line 263
    invoke-static {v3}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$400(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;->getDocumentInfoBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 261
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 270
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$3;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$400(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "documentPath"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$3;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$800(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Lcom/amazon/kcp/reader/ui/MappedIntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/MappedIntArray;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pageRangePath"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$3;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$400(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->getSecurityPids()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "securityPids"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 273
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 276
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$3;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$100(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ThumbnailScrubber"

    const-string v2, "Could not send NEW_PDF_DOCUMENT message"

    .line 278
    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
