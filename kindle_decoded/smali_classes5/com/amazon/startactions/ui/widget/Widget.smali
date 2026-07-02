.class public interface abstract Lcom/amazon/startactions/ui/widget/Widget;
.super Ljava/lang/Object;
.source "Widget.java"


# virtual methods
.method public abstract bindToUi(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMetricsTag()Ljava/lang/String;
.end method

.method public abstract getWidgetPlacementRefTag()Ljava/lang/String;
.end method

.method public abstract loadData()V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onReaderActivityPause()V
.end method

.method public abstract onReaderActivityResume()V
.end method

.method public abstract onUiDismiss()V
.end method

.method public abstract prepareData()V
.end method
