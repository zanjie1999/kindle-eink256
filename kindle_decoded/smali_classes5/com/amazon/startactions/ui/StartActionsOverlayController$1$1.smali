.class Lcom/amazon/startactions/ui/StartActionsOverlayController$1$1;
.super Ljava/lang/Object;
.source "StartActionsOverlayController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/ui/StartActionsOverlayController$1;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/StartActionsOverlayController$1;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1$1;->this$1:Lcom/amazon/startactions/ui/StartActionsOverlayController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 188
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    invoke-static {}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Registered tap on dismiss overlay; dismissing Start Actions (view set to GONE)."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1$1;->this$1:Lcom/amazon/startactions/ui/StartActionsOverlayController$1;

    iget-object p1, p1, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "ClosedThroughTouchingOutside"

    .line 194
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$1$1;->this$1:Lcom/amazon/startactions/ui/StartActionsOverlayController$1;

    iget-object p1, p1, Lcom/amazon/startactions/ui/StartActionsOverlayController$1;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {p1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$300(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->dismissOverlay(Ljava/lang/String;)V

    return-void
.end method
