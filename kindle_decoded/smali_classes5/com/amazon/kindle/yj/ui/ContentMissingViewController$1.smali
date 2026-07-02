.class Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;
.super Ljava/lang/Object;
.source "ContentMissingViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->ContentMissingEventListener(Lcom/amazon/kindle/yj/events/ContentMissingEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

.field final synthetic val$event:Lcom/amazon/kindle/yj/events/ContentMissingEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;Lcom/amazon/kindle/yj/events/ContentMissingEvent;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    iput-object p2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->val$event:Lcom/amazon/kindle/yj/events/ContentMissingEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$100(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getProgressiveContentMissingView()Lcom/amazon/kindle/yj/ui/ContentMissingView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$002(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;Lcom/amazon/kindle/yj/ui/ContentMissingView;)Lcom/amazon/kindle/yj/ui/ContentMissingView;

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$000(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kindle/yj/ui/ContentMissingView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->val$event:Lcom/amazon/kindle/yj/events/ContentMissingEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->setContentMissingEvent(Lcom/amazon/kindle/yj/events/ContentMissingEvent;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$000(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kindle/yj/ui/ContentMissingView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$200(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$300(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$400(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$300(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-static {v1}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$500(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    .line 88
    invoke-static {v2}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$200(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;

    move-result-object v2

    .line 87
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;->addAssetDownloadTracker(Ljava/util/List;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$200(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;->calculateInitialState()V

    :cond_0
    return-void
.end method
