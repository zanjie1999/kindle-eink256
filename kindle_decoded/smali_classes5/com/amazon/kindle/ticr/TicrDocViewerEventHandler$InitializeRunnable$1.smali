.class Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable$1;
.super Ljava/lang/Object;
.source "TicrDocViewerEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable$1;->this$1:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable$1;->this$1:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;

    iget-object v0, v0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->access$000(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable$1;->this$1:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;

    invoke-static {v0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->access$300(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->access$400()Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable$1;->this$1:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;

    iget-object v1, v1, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
