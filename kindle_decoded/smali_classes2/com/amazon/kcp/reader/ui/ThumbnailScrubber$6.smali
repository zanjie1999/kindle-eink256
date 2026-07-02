.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;
.super Ljava/lang/Object;
.source "ThumbnailScrubber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->onDocViewerResourceAttached(Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

.field final synthetic val$event:Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;->val$event:Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$800(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;->val$event:Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$900(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$1000(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$1000(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->requestDocumentOpen()V

    .line 811
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$1000(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->sendCenterSortedPendingRequests(I)V

    .line 813
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$6;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$1100(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;)V

    :cond_0
    return-void
.end method
