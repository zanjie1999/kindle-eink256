.class Lcom/amazon/startactions/ui/StartActionsOverlayController$5;
.super Ljava/lang/Object;
.source "StartActionsOverlayController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/StartActionsOverlayController;->createHeader(Lcom/amazon/kindle/krx/content/IBook;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$5;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    iput-object p2, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$5;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 542
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 543
    invoke-static {}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Registered tap on header close button; dismissing Start Actions (view set to GONE)."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_0
    iget-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$5;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "ClosedThroughHeader"

    .line 547
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 546
    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 549
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "StartActions"

    const-string v1, "HeaderClose"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$5;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$5;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->dismissOverlay(Ljava/lang/String;)V

    return-void
.end method
