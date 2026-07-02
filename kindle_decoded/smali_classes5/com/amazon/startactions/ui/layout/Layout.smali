.class public interface abstract Lcom/amazon/startactions/ui/layout/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# virtual methods
.method public abstract createView(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public abstract getMetricsTag()Ljava/lang/String;
.end method

.method public abstract getRefTagSuffix()Ljava/lang/String;
.end method

.method public abstract getWidgetPlacements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
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

.method public abstract providesHeaderInfo()Z
.end method
