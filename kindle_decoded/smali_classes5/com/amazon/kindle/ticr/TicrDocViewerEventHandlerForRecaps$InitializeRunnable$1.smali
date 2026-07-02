.class Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable$1;
.super Ljava/lang/Object;
.source "TicrDocViewerEventHandlerForRecaps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable$1;->this$1:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable$1;->this$1:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;

    iget-object v0, v0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    invoke-static {v0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->access$000(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable$1;->this$1:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;

    invoke-static {v0}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->access$300(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;)Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable$1;->this$1:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;

    iget-object v1, v1, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps$InitializeRunnable;->this$0:Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandlerForRecaps;->access$400()Ljava/lang/String;

    :cond_0
    return-void
.end method
