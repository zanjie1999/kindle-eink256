.class Lcom/amazon/kcp/cover/ProgressManipulator$1;
.super Ljava/lang/Object;
.source "ProgressManipulator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/ProgressManipulator;->handleProgressEvent(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/ProgressManipulator;

.field final synthetic val$download:Lcom/amazon/kindle/services/download/IContentDownload;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/ProgressManipulator;Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/cover/ProgressManipulator$1;->this$0:Lcom/amazon/kcp/cover/ProgressManipulator;

    iput-object p2, p0, Lcom/amazon/kcp/cover/ProgressManipulator$1;->val$download:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/cover/ProgressManipulator$1;->val$download:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/ProgressManipulator$1;->val$download:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result v0

    int-to-double v0, v0

    .line 67
    iget-object v2, p0, Lcom/amazon/kcp/cover/ProgressManipulator$1;->this$0:Lcom/amazon/kcp/cover/ProgressManipulator;

    double-to-int v3, v0

    iget-object v4, p0, Lcom/amazon/kcp/cover/ProgressManipulator$1;->val$download:Lcom/amazon/kindle/services/download/IContentDownload;

    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/cover/ProgressManipulator;->showDownloadProgress(IZ)V

    .line 68
    iget-object v2, p0, Lcom/amazon/kcp/cover/ProgressManipulator$1;->this$0:Lcom/amazon/kcp/cover/ProgressManipulator;

    invoke-static {v2}, Lcom/amazon/kcp/cover/ProgressManipulator;->access$000(Lcom/amazon/kcp/cover/ProgressManipulator;)Lcom/amazon/kcp/cover/ICoverShowingProgress;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/cover/ICoverShowingProgress;->getDownloadAccessibilityHelper()Lcom/amazon/kcp/util/DownloadAccessibilityHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/amazon/kcp/util/DownloadAccessibilityHelper;->handleDownloadProgressUpdate(D)V

    return-void
.end method
