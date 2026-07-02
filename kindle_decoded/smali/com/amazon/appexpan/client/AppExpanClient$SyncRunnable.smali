.class Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;
.super Ljava/lang/Object;
.source "AppExpanClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/AppExpanClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncRunnable"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/amazon/appexpan/client/AppExpanClient;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/AppExpanClient;Landroid/content/Context;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-object p2, p0, Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    invoke-static {v0}, Lcom/amazon/appexpan/client/AppExpanClient;->access$100(Lcom/amazon/appexpan/client/AppExpanClient;)Z

    .line 626
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    invoke-static {v0}, Lcom/amazon/appexpan/client/AppExpanClient;->access$200(Lcom/amazon/appexpan/client/AppExpanClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppExpanBroadcastReceiverThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 635
    iget-object v1, p0, Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    iget-object v1, v1, Lcom/amazon/appexpan/client/AppExpanClient;->downloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    invoke-virtual {v1, v0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->initialize(Landroid/os/HandlerThread;)V

    .line 638
    iget-object v1, p0, Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    iget-object v2, p0, Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;->context:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/amazon/appexpan/client/AppExpanClient;->access$300(Lcom/amazon/appexpan/client/AppExpanClient;Landroid/content/Context;Landroid/os/HandlerThread;)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    iget-object v0, v0, Lcom/amazon/appexpan/client/AppExpanClient;->downloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadResources()V

    return-void
.end method
