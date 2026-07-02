.class Lcom/amazon/startactions/ui/StartActionsOverlayController$3;
.super Ljava/lang/Object;
.source "StartActionsOverlayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/StartActionsOverlayController;->hideOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/StartActionsOverlayController;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$3;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$3;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$100(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$id;->startactions_dismiss_overlay:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$3;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-static {v1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$100(Lcom/amazon/startactions/ui/StartActionsOverlayController;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$id;->startactions_content_container:I

    .line 374
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 382
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$3;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->access$602(Lcom/amazon/startactions/ui/StartActionsOverlayController;Z)Z

    .line 389
    iget-object v0, p0, Lcom/amazon/startactions/ui/StartActionsOverlayController$3;->this$0:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "StartActionsActiveTime"

    .line 390
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->stopTimer(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->finishContainerMetrics()V

    return-void
.end method
