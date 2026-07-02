.class Lcom/audible/mobile/download/service/BaseDownloadService$2;
.super Ljava/lang/Object;
.source "BaseDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/download/service/BaseDownloadService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/download/service/BaseDownloadService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/audible/mobile/download/service/BaseDownloadService;Landroid/content/Intent;I)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/audible/mobile/download/service/BaseDownloadService$2;->this$0:Lcom/audible/mobile/download/service/BaseDownloadService;

    iput-object p2, p0, Lcom/audible/mobile/download/service/BaseDownloadService$2;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/audible/mobile/download/service/BaseDownloadService$2;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/audible/mobile/download/service/BaseDownloadService$2;->val$intent:Landroid/content/Intent;

    const-string v2, "com.audible.mobile.download.extra.DOWNLOAD_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 94
    iget-object v2, p0, Lcom/audible/mobile/download/service/BaseDownloadService$2;->this$0:Lcom/audible/mobile/download/service/BaseDownloadService;

    iget v3, p0, Lcom/audible/mobile/download/service/BaseDownloadService$2;->val$startId:I

    invoke-static {v2, v1, v3}, Lcom/audible/mobile/download/service/BaseDownloadService;->access$100(Lcom/audible/mobile/download/service/BaseDownloadService;Landroid/net/Uri;I)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "com.audible.mobile.download.action.START_DOWNLOAD"

    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService$2;->this$0:Lcom/audible/mobile/download/service/BaseDownloadService;

    invoke-static {v0}, Lcom/audible/mobile/download/service/BaseDownloadService;->access$000(Lcom/audible/mobile/download/service/BaseDownloadService;)Lcom/audible/mobile/download/service/GenericDownloadController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/audible/mobile/download/service/GenericDownloadController;->addRequest(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/download/service/BaseDownloadService$2;->this$0:Lcom/audible/mobile/download/service/BaseDownloadService;

    invoke-static {v0}, Lcom/audible/mobile/download/service/BaseDownloadService;->access$000(Lcom/audible/mobile/download/service/BaseDownloadService;)Lcom/audible/mobile/download/service/GenericDownloadController;

    move-result-object v0

    invoke-interface {v1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getKey()Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/downloader/BaseDownloadController;->removeRequest(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)V

    :cond_1
    :goto_0
    return-void
.end method
