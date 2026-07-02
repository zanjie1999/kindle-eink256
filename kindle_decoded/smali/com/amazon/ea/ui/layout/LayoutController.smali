.class public abstract Lcom/amazon/ea/ui/layout/LayoutController;
.super Ljava/lang/Object;
.source "LayoutController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/amazon/ea/ui/layout/LayoutController;->initLayoutMetrics()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/layout/LayoutController;->getViewImplementation(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getViewImplementation(Landroid/os/Bundle;)Landroid/view/View;
.end method

.method protected initLayoutMetrics()V
    .locals 0

    .line 84
    invoke-static {}, Lcom/amazon/ea/ui/helper/ShareHelper;->initMetricsForShareIconNotShown()V

    return-void
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onRender()V
    .locals 0

    return-void
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method
