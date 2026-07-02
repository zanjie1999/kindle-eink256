.class Lcom/audible/mobile/download/service/BaseDownloadService$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/BaseDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/download/service/BaseDownloadService;


# direct methods
.method constructor <init>(Lcom/audible/mobile/download/service/BaseDownloadService;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/audible/mobile/download/service/BaseDownloadService$1;->this$0:Lcom/audible/mobile/download/service/BaseDownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/audible/mobile/download/service/BaseDownloadService$1;->this$0:Lcom/audible/mobile/download/service/BaseDownloadService;

    invoke-static {p1}, Lcom/audible/mobile/download/service/BaseDownloadService;->access$000(Lcom/audible/mobile/download/service/BaseDownloadService;)Lcom/audible/mobile/download/service/GenericDownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/mobile/downloader/BaseDownloadController;->removeAllRequests()V

    return-void
.end method
