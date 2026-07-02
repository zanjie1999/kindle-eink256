.class public interface abstract Lcom/amazon/startactions/ui/IAnyActionsUIController;
.super Ljava/lang/Object;
.source "IAnyActionsUIController.java"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getFragmentManager()Landroid/app/FragmentManager;
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getSessionMetric()Lcom/amazon/startactions/metrics/Metric;
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

.method public abstract getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract refreshUI()V
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)V
.end method
