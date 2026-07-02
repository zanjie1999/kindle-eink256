.class public Lcom/amazon/kcp/cover/ProgressManipulator;
.super Ljava/lang/Object;
.source "ProgressManipulator.java"


# instance fields
.field private final cover:Lcom/amazon/kcp/cover/ICoverShowingProgress;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/cover/ICoverShowingProgress;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/kcp/cover/ProgressManipulator;->uiHandler:Landroid/os/Handler;

    .line 20
    iput-object p1, p0, Lcom/amazon/kcp/cover/ProgressManipulator;->cover:Lcom/amazon/kcp/cover/ICoverShowingProgress;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/cover/ProgressManipulator;)Lcom/amazon/kcp/cover/ICoverShowingProgress;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/kcp/cover/ProgressManipulator;->cover:Lcom/amazon/kcp/cover/ICoverShowingProgress;

    return-object p0
.end method


# virtual methods
.method public handleProgressEvent(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;->getDownload()Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p1

    .line 56
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/cover/ProgressManipulator;->cover:Lcom/amazon/kcp/cover/ICoverShowingProgress;

    invoke-interface {v1}, Lcom/amazon/kcp/cover/ICoverShowingProgress;->getSerializedBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/ProgressManipulator;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/cover/ProgressManipulator$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/cover/ProgressManipulator$1;-><init>(Lcom/amazon/kcp/cover/ProgressManipulator;Lcom/amazon/kindle/services/download/IContentDownload;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerForDownloadEvents()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public showDownloadProgress(IZ)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/cover/ProgressManipulator;->cover:Lcom/amazon/kcp/cover/ICoverShowingProgress;

    invoke-interface {v0}, Lcom/amazon/kcp/cover/ICoverShowingProgress;->getProgressIndicator()Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 34
    invoke-interface {v0}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->onDownloadContentOpenable()V

    :cond_1
    const/4 p2, 0x0

    .line 36
    invoke-interface {v0, p2}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->setIndeterminate(Z)V

    .line 37
    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;->setProgress(I)V

    return-void
.end method

.method public unregisterForDownloadEvents()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method
