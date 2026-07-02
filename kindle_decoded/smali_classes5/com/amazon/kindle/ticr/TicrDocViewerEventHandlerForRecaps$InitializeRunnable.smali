.class Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;
.super Ljava/lang/Object;
.source "TicrDocViewerEventHandlerForRecaps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitializeRunnable"
.end annotation


# instance fields
.field private mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

.field final synthetic this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;)Lcom/amazon/kindle/yj/IMarginalContentProviderContext;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    return-object p0
.end method

.method private needsInitialization(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    invoke-static {v0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->access$000(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    invoke-static {v0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->access$100(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;)Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

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

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->needsInitialization(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    iget-object v2, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v2}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    return-void

    .line 71
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    invoke-static {v3, v2}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->access$202(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    .line 72
    iget-object v3, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    iget-object v4, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-static {v3, v4}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->access$102(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    .line 74
    iget-object v3, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->setUp(Lcom/amazon/kindle/model/content/IBookID;Z)V

    .line 75
    iget-object v2, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->access$002(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;Z)Z

    .line 77
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable$1;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable$1;-><init>(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 88
    invoke-static {}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while setting up Ticr Handler for Recaps"

    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->access$400()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DM_PERF: initialize TICR HANDLER for Recaps took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 92
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->access$400()Ljava/lang/String;

    :goto_2
    return-void
.end method
