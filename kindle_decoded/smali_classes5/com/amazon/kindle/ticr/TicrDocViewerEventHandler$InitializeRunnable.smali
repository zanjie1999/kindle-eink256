.class Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;
.super Ljava/lang/Object;
.source "TicrDocViewerEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitializeRunnable"
.end annotation


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final synthetic this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method private needsInitialization(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->access$000(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->access$100(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->needsInitialization(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    iget-object v2, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 69
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    invoke-static {v3, v2}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->access$202(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    .line 70
    iget-object v3, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    iget-object v4, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v3, v4}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->access$102(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 72
    iget-object v3, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->setUp(Lcom/amazon/kindle/model/content/IBookID;Z)V

    .line 73
    iget-object v2, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->access$002(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Z)Z

    .line 75
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable$1;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable$1;-><init>(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 85
    invoke-static {}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while initializing Ticr EventHandler"

    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->access$400()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DM_PERF: initialize TICR HANDLER took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method
