.class Lcom/amazon/kcp/library/TransientActivity$1;
.super Ljava/lang/Object;
.source "TransientActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/TransientActivity;->onDownloadProgressChanged(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/TransientActivity;

.field final synthetic val$contentDownload:Lcom/amazon/kindle/services/download/IContentDownload;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity$1;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/TransientActivity$1;->val$contentDownload:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$1;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$1;->val$contentDownload:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/TransientActivity;->access$000(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kindle/services/download/IContentDownload;)V

    return-void
.end method
